#!/usr/bin/env python3
"""
vibe-aiworkforce validator.py

Validates artifacts against JSON schemas, verifies evidence exists in source files,
checks confidence scores, logs execution, and routes low-confidence items to review queue.

Usage:
    python3 validator.py --artifact output/foo.json --schema schema/foo.schema.json
    python3 validator.py --preflight           # Run before Write/Edit (hook mode)
    python3 validator.py --verify-write FILE   # Run after Write (hook mode)
    python3 validator.py --run-all ARTIFACT    # Full pipeline
    python3 validator.py --help

Zero external dependencies (uses stdlib only).
"""

import argparse
import json
import os
import re
import sys
import time
from datetime import datetime
from pathlib import Path
from typing import Any


# ============================================================================
# JSON Schema validation (minimal subset of draft-07, stdlib only)
# ============================================================================

class SchemaError(Exception):
    pass


def validate_type(value: Any, schema_type: str) -> bool:
    if schema_type == "string":
        return isinstance(value, str)
    if schema_type == "number":
        return isinstance(value, (int, float)) and not isinstance(value, bool)
    if schema_type == "integer":
        return isinstance(value, int) and not isinstance(value, bool)
    if schema_type == "boolean":
        return isinstance(value, bool)
    if schema_type == "array":
        return isinstance(value, list)
    if schema_type == "object":
        return isinstance(value, dict)
    if schema_type == "null":
        return value is None
    return True  # unknown type → permissive


def validate_instance(instance: Any, schema: dict, path: str = "$") -> list[str]:
    """Returns list of error messages (empty = valid)."""
    errors: list[str] = []

    if not isinstance(schema, dict):
        return [f"{path}: schema must be an object"]

    # type
    if "type" in schema:
        types = schema["type"] if isinstance(schema["type"], list) else [schema["type"]]
        if not any(validate_type(instance, t) for t in types):
            errors.append(f"{path}: expected type {types}, got {type(instance).__name__}")

    # const
    if "const" in schema and instance != schema["const"]:
        errors.append(f"{path}: expected const {schema['const']!r}, got {instance!r}")

    # enum
    if "enum" in schema and instance not in schema["enum"]:
        errors.append(f"{path}: {instance!r} not in enum {schema['enum']}")

    # string constraints
    if isinstance(instance, str):
        if "minLength" in schema and len(instance) < schema["minLength"]:
            errors.append(f"{path}: string too short ({len(instance)} < {schema['minLength']})")
        if "maxLength" in schema and len(instance) > schema["maxLength"]:
            errors.append(f"{path}: string too long ({len(instance)} > {schema['maxLength']})")
        if "pattern" in schema and not re.search(schema["pattern"], instance):
            errors.append(f"{path}: string does not match pattern {schema['pattern']!r}")

    # number constraints
    if isinstance(instance, (int, float)) and not isinstance(instance, bool):
        for key, op in [("minimum", lambda a, b: a >= b), ("maximum", lambda a, b: a <= b),
                        ("exclusiveMinimum", lambda a, b: a > b),
                        ("exclusiveMaximum", lambda a, b: a < b)]:
            if key in schema and not op(instance, schema[key]):
                errors.append(f"{path}: {instance} violates {key} {schema[key]}")

    # array constraints
    if isinstance(instance, list):
        if "minItems" in schema and len(instance) < schema["minItems"]:
            errors.append(f"{path}: array too short ({len(instance)} < {schema['minItems']})")
        if "maxItems" in schema and len(instance) > schema["maxItems"]:
            errors.append(f"{path}: array too long ({len(instance)} > {schema['maxItems']})")
        if "items" in schema:
            for i, item in enumerate(instance):
                errors.extend(validate_instance(item, schema["items"], f"{path}[{i}]"))

    # object constraints
    if isinstance(instance, dict):
        if "required" in schema:
            missing = [k for k in schema["required"] if k not in instance]
            if missing:
                errors.append(f"{path}: missing required fields {missing}")
        if "properties" in schema:
            for key, subschema in schema["properties"].items():
                if key in instance:
                    errors.extend(validate_instance(instance[key], subschema, f"{path}.{key}"))

    return errors


def validate_artifact(artifact_path: str, schema_path: str) -> dict:
    """Validate JSON artifact against schema. Returns {ok, errors, warnings}."""
    try:
        with open(artifact_path) as f:
            instance = json.load(f)
    except Exception as e:
        return {"ok": False, "errors": [f"Cannot read artifact: {e}"], "warnings": []}

    try:
        with open(schema_path) as f:
            schema = json.load(f)
    except Exception as e:
        return {"ok": False, "errors": [f"Cannot read schema: {e}"], "warnings": []}

    errors = validate_instance(instance, schema)
    return {"ok": len(errors) == 0, "errors": errors, "warnings": []}


# ============================================================================
# Evidence verification (Tip 2)
# ============================================================================

def verify_evidence(evidence: list[dict], source_files: list[str]) -> dict:
    """Check each evidence item's verbatim_quote exists in source files.
    Returns {verified, missing, confidence_adjustment}.
    """
    verified = []
    missing = []

    for ev in evidence:
        quote = ev.get("verbatim_quote", "")
        source = ev.get("source", "")
        found = False

        if source and Path(source).exists():
            try:
                content = Path(source).read_text(encoding="utf-8", errors="ignore")
                if quote and quote in content:
                    found = True
            except Exception:
                pass

        if not source and source_files:
            for sf in source_files:
                if Path(sf).exists():
                    try:
                        content = Path(sf).read_text(encoding="utf-8", errors="ignore")
                        if quote and quote in content:
                            found = True
                            break
                    except Exception:
                        pass

        if found:
            verified.append(ev)
        else:
            missing.append(ev)

    adjustment = -0.2 * len(missing) if missing else 0.0
    return {
        "verified": verified,
        "missing": missing,
        "confidence_adjustment": adjustment,
    }


# ============================================================================
# Confidence check (Tip 2/3)
# ============================================================================

def check_confidence(artifact: dict, threshold: float = 0.7) -> dict:
    """Check if confidence_score meets threshold.
    Returns {passes, score, reason}.
    """
    score = artifact.get("confidence_score")
    if score is None:
        return {"passes": False, "score": None, "reason": "confidence_score missing"}

    if score >= threshold:
        return {"passes": True, "score": score, "reason": f"score {score} >= threshold {threshold}"}

    return {"passes": False, "score": score, "reason": f"score {score} < threshold {threshold}"}


# ============================================================================
# Execution log (Tip 4)
# ============================================================================

LOG_PATH = os.environ.get("VIBE_EXECUTION_LOG", "output/execution_log.jsonl")


def log_execution(step: str, action: str, target: str, status: str,
                  duration_ms: int = 0, schema_validated: bool = False,
                  evidence_verified: bool = False) -> dict:
    """Append entry to execution_log.jsonl."""
    entry = {
        "timestamp": datetime.utcnow().isoformat(timespec="seconds") + "Z",
        "step": step,
        "action": action,
        "target": target,
        "actor": os.environ.get("VIBE_ACTOR", "vibe-aiworkforce"),
        "status": status,
        "duration_ms": duration_ms,
        "schema_validated": schema_validated,
        "evidence_verified": evidence_verified,
    }

    log_path = Path(LOG_PATH)
    log_path.parent.mkdir(parents=True, exist_ok=True)
    with log_path.open("a", encoding="utf-8") as f:
        f.write(json.dumps(entry, ensure_ascii=False) + "\n")

    return entry


# ============================================================================
# Full pipeline
# ============================================================================

def run_all(artifact_path: str, schema_path: str | None = None,
            source_files: list[str] | None = None,
            confidence_threshold: float = 0.7) -> dict:
    """Full validation: schema + evidence + confidence + log."""
    start = time.time()

    # Schema validation
    schema_result = {"ok": True, "errors": [], "warnings": []}
    if schema_path:
        schema_result = validate_artifact(artifact_path, schema_path)

    # Load artifact for downstream checks
    try:
        with open(artifact_path) as f:
            artifact = json.load(f)
    except Exception as e:
        return {"ok": False, "errors": [f"Cannot read artifact: {e}"],
                "duration_ms": int((time.time() - start) * 1000)}

    # Evidence verification
    evidence = artifact.get("evidence", [])
    evidence_result = verify_evidence(evidence, source_files or [])

    # Confidence check (apply adjustment from evidence)
    base_conf = artifact.get("confidence_score", 0.0)
    adjusted_conf = max(0.0, base_conf + evidence_result["confidence_adjustment"])
    artifact["confidence_score"] = adjusted_conf
    confidence_result = check_confidence(artifact, confidence_threshold)

    # Auto-flag need_review
    if not confidence_result["passes"]:
        artifact["need_review"] = True

    # Log
    duration = int((time.time() - start) * 1000)
    log_execution(
        step="validate",
        action="run_all",
        target=artifact_path,
        status="success" if schema_result["ok"] and confidence_result["passes"] else "fail",
        duration_ms=duration,
        schema_validated=schema_result["ok"],
        evidence_verified=len(evidence_result["missing"]) == 0,
    )

    return {
        "ok": schema_result["ok"] and confidence_result["passes"],
        "schema": schema_result,
        "evidence": evidence_result,
        "confidence": confidence_result,
        "adjusted_confidence_score": adjusted_conf,
        "duration_ms": duration,
    }


# ============================================================================
# Preflight (hook mode — Tip 5)
# ============================================================================

PROTECTED_PATHS = [
    r".*/template/.*",       # SOP state machine integrity
    r".*/archive/.*",        # Immutable history
    r".*/\.git/.*",          # Git internals
]

ALLOWED_EDIT_PATHS = [
    r".*/output/.*",
    r".*/processing/.*",
    r".*/input/.*",
]


def preflight_check(target_path: str) -> dict:
    """Check if Write/Edit to target_path is safe.
    Returns {allowed, reason}.
    """
    for pattern in PROTECTED_PATHS:
        if re.match(pattern, target_path):
            return {"allowed": False, "reason": f"Path matches protected pattern {pattern}"}

    return {"allowed": True, "reason": "OK"}


# ============================================================================
# CLI
# ============================================================================

def main():
    parser = argparse.ArgumentParser(description="vibe-aiworkforce validator")
    parser.add_argument("--artifact", help="Path to artifact JSON to validate")
    parser.add_argument("--schema", help="Path to JSON schema")
    parser.add_argument("--source", action="append", default=[], help="Source file for evidence check")
    parser.add_argument("--threshold", type=float, default=0.7, help="Confidence threshold")
    parser.add_argument("--preflight-target", help="Path to check before Write/Edit")
    parser.add_argument("--run-all", action="store_true", help="Run full validation pipeline")
    parser.add_argument("--log", nargs=4, metavar=("STEP", "ACTION", "TARGET", "STATUS"),
                        help="Log an execution entry")
    args = parser.parse_args()

    if args.log:
        entry = log_execution(*args.log)
        print(json.dumps(entry, indent=2))
        return 0

    if args.preflight_target:
        result = preflight_check(args.preflight_target)
        print(json.dumps(result, indent=2))
        return 0 if result["allowed"] else 1

    if args.run_all:
        if not args.artifact:
            print("ERROR: --artifact required for --run-all", file=sys.stderr)
            return 2
        result = run_all(args.artifact, args.schema, args.source, args.threshold)
        print(json.dumps(result, indent=2, ensure_ascii=False))
        return 0 if result["ok"] else 1

    if args.artifact and args.schema:
        result = validate_artifact(args.artifact, args.schema)
        print(json.dumps(result, indent=2, ensure_ascii=False))
        return 0 if result["ok"] else 1

    parser.print_help()
    return 0


if __name__ == "__main__":
    sys.exit(main())

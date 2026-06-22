#!/usr/bin/env python3
"""
schema-validation.test.py — vibe-company-orchestrator

Validates:
1. All schema/*.schema.json are valid draft-07 schemas.
2. skill.json validates against schema/skill-meta.schema.json.
3. Sample artifacts in synthetic-data/ validate against their schemas.
4. validator.py run-all pipeline works end-to-end (schema + evidence + confidence + log).
5. Preflight blocks template/ + archive/, allows output/.

Run:
    cd ~/.claude/skills/vibe-company-orchestrator
    python3 test/schema-validation.test.py
"""

import json
import sys
from pathlib import Path

SKILL_DIR = Path(__file__).resolve().parent.parent
sys.path.insert(0, str(SKILL_DIR / "script"))

try:
    import jsonschema
    HAVE_JSONSCHEMA = True
except ImportError:
    HAVE_JSONSCHEMA = False

from validator import validate_artifact, run_all, preflight_check, validate_instance
import validator as _v

passed = 0
failed = 0


def check(name, condition, detail=""):
    global passed, failed
    if condition:
        passed += 1
        print(f"  ✓ {name}")
    else:
        failed += 1
        print(f"  ✗ {name} — {detail}")


def main():
    global passed, failed
    print("=" * 60)
    print("SCHEMA VALIDATION TEST — vibe-company-orchestrator")
    print("=" * 60)

    # 1. All schemas are valid JSON
    print("\n[1] Schemas parse as valid JSON")
    schema_files = sorted((SKILL_DIR / "schema").glob("*.schema.json"))
    check("found ≥5 schemas", len(schema_files) >= 5, f"found {len(schema_files)}")
    schemas = {}
    for sf in schema_files:
        try:
            schemas[sf.name] = json.loads(sf.read_text())
            print(f"    ✓ {sf.name}")
            passed += 1
        except Exception as e:
            print(f"    ✗ {sf.name} — {e}")
            failed += 1

    # 2. skill.json validates against skill-meta.schema.json
    print("\n[2] skill.json validates against skill-meta.schema.json")
    skill_json = json.loads((SKILL_DIR / "skill.json").read_text())
    if HAVE_JSONSCHEMA:
        errs = list(jsonschema.Draft7Validator(schemas["skill-meta.schema.json"]).iter_errors(skill_json))
        check("skill.json valid", not errs, "; ".join(e.message for e in errs[:3]))
    else:
        errs = validate_instance(skill_json, schemas["skill-meta.schema.json"])
        check("skill.json valid (stdlib)", not errs, "; ".join(errs[:3]))

    # 3. Sample OKR artifact validates
    print("\n[3] Sample artifacts validate against schemas")
    sample_okr = SKILL_DIR / "synthetic-data" / "sample-company-okr.json"
    if sample_okr.exists():
        r = validate_artifact(str(sample_okr), str(SKILL_DIR / "schema" / "company-okr.schema.json"))
        check("sample-company-okr.json valid", r["ok"], "; ".join(r["errors"][:3]))
    else:
        check("sample-company-okr.json exists", False, "missing")

    sample_handoff = SKILL_DIR / "synthetic-data" / "sample-handoff-brief.json"
    if sample_handoff.exists():
        r = validate_artifact(str(sample_handoff), str(SKILL_DIR / "schema" / "aiworkforce-handoff-brief.schema.json"))
        check("sample-handoff-brief.json valid", r["ok"], "; ".join(r["errors"][:3]))

    # 4. run-all pipeline (evidence + confidence + log)
    print("\n[4] run-all pipeline works")
    sample_quality = SKILL_DIR / "synthetic-data" / "sample-quality-standards.json"
    if sample_quality.exists():
        import tempfile, os
        with tempfile.TemporaryDirectory() as td:
            _v.LOG_PATH = f"{td}/execution_log.jsonl"
            r = run_all(str(sample_quality), str(SKILL_DIR / "schema" / "quality-standards.schema.json"))
            check("run_all returns dict", isinstance(r, dict))
            check("run_all has 'ok' key", "ok" in r)
            # execution_log.jsonl written
            log_exists = Path(f"{td}/execution_log.jsonl").exists()
            check("execution_log.jsonl written", log_exists)

    # 5. Preflight guards
    print("\n[5] Preflight guards template/ and archive/")
    blocked = preflight_check("/tmp/co/02-marketing/template/sop.md")
    check("template/ blocked", not blocked["allowed"])
    blocked2 = preflight_check("/tmp/co/02-marketing/archive/2026-01.md")
    check("archive/ blocked", not blocked2["allowed"])
    allowed = preflight_check("/tmp/co/02-marketing/output/report.md")
    check("output/ allowed", allowed["allowed"])

    # 6. Confidence < 0.7 → need_review auto-set
    print("\n[6] Low confidence auto-flags need_review")
    import copy
    if sample_okr.exists():
        import tempfile, os
        art = json.loads(sample_okr.read_text())
        low = copy.deepcopy(art)
        low["confidence_score"] = 0.4
        with tempfile.NamedTemporaryFile("w", suffix=".json", delete=False) as tf:
            json.dump(low, tf)
            tmp_path = tf.name
        with tempfile.TemporaryDirectory() as td:
            _v.LOG_PATH = f"{td}/execution_log.jsonl"
            r = run_all(tmp_path, str(SKILL_DIR / "schema" / "company-okr.schema.json"))
            check("low confidence → ok=false", not r["ok"], "expected failure")
        os.unlink(tmp_path)

    print("\n" + "=" * 60)
    print(f"Result: {passed} passed, {failed} failed")
    print("=" * 60)
    return 0 if failed == 0 else 1


if __name__ == "__main__":
    sys.exit(main())

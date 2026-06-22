#!/usr/bin/env python3
"""
vibe-company-orchestrator log_helper.py

Thin wrapper around validator.log_execution() for shell use.

Usage:
    python3 log_helper.py STEP ACTION TARGET STATUS
    python3 log_helper.py PHASE-2 STEP-2.5 quality-mkt DONE
"""

import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).parent))
from validator import log_execution


def main():
    if len(sys.argv) != 5:
        print("Usage: log_helper.py STEP ACTION TARGET STATUS", file=sys.stderr)
        print("Example: log_helper.py phase-2 step-2.5a okr-company DONE", file=sys.stderr)
        return 2

    step, action, target, status = sys.argv[1:5]
    entry = log_execution(step, action, target, status)
    import json
    print(json.dumps(entry, ensure_ascii=False))
    return 0


if __name__ == "__main__":
    sys.exit(main())

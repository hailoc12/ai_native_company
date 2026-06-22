# Smoke Test — vibe-aiworkforce

> Quick validation (~5 phút) — verify skill hoạt động sau khi improve.

## Pre-flight

```bash
cd ~/.claude/skills/vibe-aiworkforce

# 1. Tất cả folders mới tồn tại
for d in kb script prompt schema test synthetic-data; do
  [ -d "$d" ] && echo "✓ $d/" || echo "✗ $d/ MISSING"
done

# 2. Tất cả files mới tồn tại
for f in skill.json \
         kb/skill-conventions.md kb/quality-standards.md kb/description-rubric.md \
         script/validator.py script/anonymizer.py script/log_helper.py \
         script/review_queue.py script/install_hooks.sh \
         schema/workforce-analysis.schema.json schema/skill-spec.schema.json \
         schema/workflow-design.schema.json schema/skill-meta.schema.json \
         schema/execution-log-entry.schema.json; do
  [ -f "$f" ] && echo "✓ $f" || echo "✗ $f MISSING"
done
```

## Test 1: Validator CLI hoạt động

```bash
python3 script/validator.py --help
# Expected: usage text, exit 0
```

## Test 2: Anonymizer patterns

```bash
python3 script/anonymizer.py --test
# Expected: ≥8 redactions, exit 0
```

## Test 3: Anonymizer inline text

```bash
python3 script/anonymizer.py --text "Email: alice@example.com, Phone: 0901234567"
# Expected: "[EMAIL_REDACTED]" and "[PHONE_REDACTED]"
```

## Test 4: Validator schema check

```bash
python3 script/validator.py --artifact skill.json --schema schema/skill-meta.schema.json
# Expected: {"ok": true, "errors": [], "warnings": []}
```

## Test 5: Preflight check (protected path)

```bash
python3 script/validator.py --preflight-target "/tmp/template/foo.md"
# Expected: {"allowed": false, "reason": "Path matches protected pattern .../template/.*"}
```

## Test 6: Execution log helper

```bash
mkdir -p /tmp/vibe-test
VIBE_EXECUTION_LOG=/tmp/vibe-test/execution_log.jsonl \
  python3 script/log_helper.py test write /tmp/foo.json success
# Expected: JSON entry with timestamp
```

## Test 7: Review queue (empty case)

```bash
python3 script/review_queue.py --collect --output-dir /tmp/vibe-test
# Expected: "No items need review."
```

## Test 8: Run-all with synthetic artifact

```bash
cat > /tmp/vibe-test/sample.json << 'EOF'
{
  "task_name": "Test task",
  "domain": "Marketing",
  "complexity": "SIMPLE",
  "frequency": "weekly",
  "actors": [{"role": "Writer", "action": "writes", "produces": "draft"}],
  "artifacts": {"inputs": ["brief"], "outputs": ["post"]},
  "evidence": [],
  "confidence_score": 0.85,
  "need_review": false
}
EOF

python3 script/validator.py --artifact /tmp/vibe-test/sample.json \
  --schema schema/workforce-analysis.schema.json
# Expected: {"ok": true, ...}
```

## Pass Criteria

- [ ] Tất cả 8 tests PASS
- [ ] Exit code = 0 cho tests 1-5, 8
- [ ] Exit code = 1 cho test 5 (protected path blocked)
- [ ] No Python exceptions
- [ ] No file corruption (skill.json still valid JSON)

## Cleanup

```bash
rm -rf /tmp/vibe-test
```

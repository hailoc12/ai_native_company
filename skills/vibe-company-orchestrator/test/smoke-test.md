# Smoke Test — vibe-company-orchestrator

> Quick validation (~5 phút) — verify skill + 8-component structure hoạt động sau khi improve.

## Pre-flight — 8 components tồn tại

```bash
cd ~/.claude/skills/vibe-company-orchestrator

# 1. Tất cả 6 folders tồn tại
for d in kb script prompt schema test synthetic-data; do
  [ -d "$d" ] && echo "✓ $d/" || echo "✗ $d/ MISSING"
done

# 2. Tất cả files tồn tại
for f in SKILL.md skill.json hooks.json \
         kb/skill-conventions.md kb/quality-standards.md kb/okr-evidence-rubric.md \
         script/validator.py script/anonymizer.py script/log_helper.py \
         script/review_queue.py script/install_hooks.sh \
         schema/company-okr.schema.json schema/quality-standards.schema.json \
         schema/aiworkforce-handoff-brief.schema.json schema/skill-meta.schema.json \
         schema/execution-log-entry.schema.json \
         prompt/company-build-prompt.md prompt/okr-evidence-check-prompt.md \
         test/smoke-test.md test/trigger-validation.md test/schema-validation.test.py \
         synthetic-data/sample-company-inputs.md; do
  [ -f "$f" ] && echo "✓ $f" || echo "✗ $f MISSING"
done
```

## Test 1: Validator CLI hoạt động

```bash
python3 script/validator.py --help
# Expected: usage text, exit 0
```

## Test 2: Anonymizer patterns (chống PII/injection leak vào company brief)

```bash
python3 script/anonymizer.py --test
# Expected: ≥8 redactions, exit 0
```

## Test 3: Preflight guard (template/ + archive/ không được edit)

```bash
python3 script/validator.py --preflight-target /tmp/company/02-marketing/template/sop.md
# Expected: {"allowed": false, ...} exit 1

python3 script/validator.py --preflight-target /tmp/company/02-marketing/output/report.md
# Expected: {"allowed": true, ...} exit 0
```

## Test 4: Schema validation (OKR artifact hợp lệ)

```bash
python3 script/validator.py \
  --artifact synthetic-data/sample-company-okr.json \
  --schema schema/company-okr.schema.json
# Expected: {"ok": true, ...} exit 0
```

## Test 5: Evidence verification (run-all pipeline)

```bash
mkdir -p /tmp/co-test/input /tmp/co-test/output
echo 'Hiện tại team tôi xuất 5 bài/tuần' > /tmp/co-test/input/brief.md
# (copy sample artifact, point source to brief)
python3 script/validator.py --run-all \
  --artifact synthetic-data/sample-company-okr.json \
  --schema schema/company-okr.schema.json \
  --source /tmp/co-test/input/brief.md
# Expected: ok=true/false based on evidence match
```

## Test 6: Hooks config well-formed JSON

```bash
python3 -c "import json; json.load(open('hooks.json')); print('✓ hooks.json valid')"
```

## Pass criteria

Tất cả 6 test PASS = skill sẵn sàng vận hành.

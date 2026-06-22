# Skill Review Prompt — Template

> Prompt template để review skill có tuân thủ 8 tips hay không.

## Input

```
{SKILL_PATH} = path to skill folder (e.g. /path/to/vibe-[domain]-[role]/)
```

## Review Checklist

Đánh giá skill tại {SKILL_PATH} dựa trên 8 mandatory components:

### Tip 1: Schema-Driven Outputs
- [ ] `schema/` folder tồn tại?
- [ ] Có ít nhất 1 JSON Schema cho output chính?
- [ ] Schema dùng draft-07?
- [ ] Validator script tồn tại để check schema?

### Tip 2: Evidence + confidence_score + need_review
- [ ] Mọi output schema có 3 fields: evidence[], confidence_score, need_review?
- [ ] evidence[] yêu cầu {claim, verbatim_quote, source}?
- [ ] Có validator verify evidence tồn tại trong source?

### Tip 3: Human-in-the-Loop Logging
- [ ] Có review_queue.py hoặc tương đương?
- [ ] Items có need_review=true được collect?
- [ ] Output ra file riêng (review-queue.md)?

### Tip 4: Execution Log
- [ ] Có convention log mọi action?
- [ ] execution_log.jsonl format defined?
- [ ] Có log_helper.py?

### Tip 5: Hooks
- [ ] Có hooks.json?
- [ ] PreToolUse hook trên Write|Edit?
- [ ] Prevent write vào template/, archive/?
- [ ] Prevent edit outside allowlist?

### Tip 6: Anonymizer + Anti-Injection
- [ ] Có anonymizer.py?
- [ ] Strip PII (email, phone, paths, API keys, credit cards)?
- [ ] Detect prompt injection patterns?

### Tip 7: SKILL.md + skill.json
- [ ] Cả 2 file tồn tại?
- [ ] skill.json pass skill-meta.schema.json?
- [ ] skill.json có phases, dependencies, scripts, hooks?

### Tip 8: Unified Folder Structure
- [ ] Có đủ 6 folders: kb/, script/, prompt/, schema/, test/, synthetic-data/?
- [ ] Mỗi folder có ít nhất 1 file有意义?

## Output Format

```markdown
## Skill Review: {SKILL_NAME}

### Score: [X]/8 tips compliant

### Tip-by-Tip Assessment
| Tip | Status | Evidence | Gap |
|-----|--------|----------|-----|
| 1 | PASS/FAIL | [file evidence] | [if fail, what's missing] |
| 2 | ... | ... | ... |

### Critical Issues (must fix)
- [issue 1]
- [issue 2]

### Recommendations
- [rec 1]
- [rec 2]

### Verdict
**[PRODUCTION READY | NEEDS WORK | REJECT]**
```

## Decision Matrix

| Score | Verdict | Action |
|-------|---------|--------|
| 8/8 | PRODUCTION READY | Deploy |
| 6-7/8 | NEEDS WORK | Fix gaps → re-review |
| ≤5/8 | REJECT | Rebuild from scratch |

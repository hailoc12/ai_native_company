# Skill Conventions — vibe-company-orchestrator (8 Components)

> Reference: vibe-company-orchestrator tự exemplify chuẩn 8-component mà nó yêu cầu vibe-aiworkforce tuân thủ. "Trần sao âm vậy" phải âm cả phần guardrail.

## 8 Components — checklist

| # | Component | File | Mục đích |
|---|-----------|------|---------|
| 1 | Schemas + Validator | `schema/*.schema.json`, `script/validator.py` | Ép artifact cấu trúc, giảm hallucination target |
| 2 | evidence + confidence_score + need_review | 3 fields trong mọi OKR/Quality artifact | Buộc trích dẫn, không bịa target |
| 3 | HITL review queue | `script/review_queue.py` → `output/review-queue.md` | Flag low-confidence OKR/SLA cho CEO duyệt |
| 4 | Execution log | `output/execution_log.jsonl` | Audit trail mọi phase generate company |
| 5 | Hooks | `hooks.json` | Guard `template/`, `archive/` |
| 6 | Anonymizer + anti-injection | `script/anonymizer.py` | Strip PII/secrets khỏi intake brief |
| 7 | skill.json | root `skill.json` | Machine-readable metadata |
| 8 | Unified folder structure | `kb/ script/ prompt/ schema/ test/ synthetic-data/` | 6 folders chuẩn |

## Validator invocation

```bash
python3 script/validator.py --run-all \
  --artifact output/company-okr.json \
  --schema schema/company-okr.schema.json \
  --source input/brief.md
```

- `confidence_score < 0.7` → auto `need_review = true`
- `evidence` phải verbatim — validator verify quote tồn tại trong source
- Evidence missing → confidence -0.2 per item

## Confidence threshold logic (company-specific)

```
Committed OKR target   → evidence = capacity/historical → thường confidence ≥ 0.7
Stretch OKR (x10)      → evidence thường KHÔNG có benchmark → need_review BẮT BUỘC
SLO (internal)         → evidence = benchmark/historical
SLA (external promise) → confidence thấp = RISK CAO → need_review BẮT BUỘC
```

→ Không bao giờ commit OKR/SLA target mà confidence < 0.7 mà không flag review.

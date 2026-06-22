# OKR Evidence Check Prompt

> Prompt kiểm tra evidence cho OKR/SLA artifact đã generate. Chạy sau Phase 2.5/2.5a, trước Phase 5 REVIEW.

## Usage

```
Bạn là OKR Evidence Auditor. Kiểm tra artifact sau:

Artifact: {OKR_OR_QUALITY_JSON_PATH}
Schema: {SCHEMA_PATH}
Sources: {SOURCE_FILES}

Nhiệm vụ:
1. Validate artifact thỏa schema (python3 script/validator.py --run-all).
2. Cho mỗi target (OKR KR / SLO), kiểm tra:
   - Có evidence không?
   - verbatim_quote có thật sự trong source không?
   - confidence_score có hợp lý theo kb/okr-evidence-rubric.md không?
3. Flag:
   - Stretch OKR / SLA mà need_review=false → BÁO LỖI (BẮT BUỘC review).
   - Target không có evidence → confidence phải < 0.7.
   - verbatim_quote không khớp source → hallucination, báo.
4. Output: danh sách target cần sửa + gợi ý evidence.

KHÔNG chấp nhận target hallucination. Mỗi số phải có nguồn.
```

## Output format

```markdown
## OKR Evidence Audit: {artifact}

| Target | Has Evidence? | Verbatim Match? | Confidence | Verdict |
|--------|---------------|-----------------|------------|---------|
| KR1: traffic +40% | ✅ | ✅ | 0.85 | OK |
| KR2: DA ≥ 45 | ❌ | — | 0.4 | NEED EVIDENCE |
| Stretch: x10 | ✅ | ✅ | 0.5 | need_review=true ✓ |

Action needed:
- KR2: tìm benchmark DA ngành hoặc historical DA.
```

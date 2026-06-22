# OKR & SLA Evidence Rubric

> Rubric quyết định confidence_score cho OKR target + Quality Standards (SLI/SLO/SLA). Trước khi set một target, tra rubric này để gán confidence đúng — sai confidence = commit hallucination.

## Confidence scoring

| Score | Ý nghĩa | Evidence yêu cầu | need_review? |
|-------|---------|-----------------|--------------|
| 0.9-1.0 | Rất chắc | Verbatim quote từ brief + historical data + benchmark ngành | No |
| 0.7-0.8 | Khá chắc | Verbatim quote từ brief/interview HOẶC historical data | No |
| 0.5-0.6 | Khách quan yếu | Chỉ có assumption, không có quote/data | **YES** |
| < 0.5 | Đoán | Không có evidence | **YES** (BẮT BUỘC human) |

## Quy tắc đặc biệt

### Stretch OKR (x10 moonshot)
- **Luôn** flag `need_review = true` — không có benchmark cho x10
- `review_reason`: "Stretch x10 — no benchmark, requires founder conviction"
- KHÔNG commit stretch target mà CEO chưa duyệt

### SLA (external promise)
- Confidence < 0.7 = **RISK CAO** → `need_review = true`
- SLA là cam kết với customer/partner/regulator → sai = phạt/mất uy tín
- `review_reason`: "SLA external promise with weak evidence — legal/biz must verify"

### SLO (internal target)
- Cho phép error budget (KHÔNG target 100%)
- Evidence = benchmark ngành hoặc historical performance

## Evidence verbatim — quy tắc

```
SAI:  evidence.verbatim_quote = "team cần xuất nhiều content"  (paraphrase)
ĐÚNG: evidence.verbatim_quote = "Hiện tại team tôi xuất 5 bài/tuần"  (nguyên văn từ brief)
```

Validator verify: quote phải xuất hiện CHÍNH XÁC trong source file. Không thấy → missing → confidence -0.2.

## Ví dụ OKR artifact đúng

```json
{
  "scope": "department",
  "scope_ref": "02-marketing",
  "period": "Q3-2026",
  "objectives": [{
    "objective_id": "OBJ-MKT-1",
    "objective": "Grow organic presence",
    "type": "committed",
    "aligned_to_company_okr": "OBJ-CO-2",
    "key_results": [{
      "kr_id": "KR1",
      "result": "Organic traffic +40%",
      "metric": "monthly sessions",
      "target": "84000",
      "baseline": "60000",
      "kr_type": "kri",
      "kri_id": "KRI-MKT-1"
    }]
  }],
  "evidence": [{
    "claim": "Baseline 60k sessions/tháng",
    "verbatim_quote": "Hiện tại traffic organic khoảng 60k/tháng",
    "source": "input/brief.md",
    "location": "line 12"
  }],
  "confidence_score": 0.85,
  "need_review": false
}
```

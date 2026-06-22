# Quality Standards — SLI/SLO/SLA Reference

> Reference cho việc define Quality Standards khi generate company. Chi tiết SLI/SLO/SLA, error budget, measurement — đồng bộ với section 6.1 trong SKILL.md.

## Quick rules

1. **SLI phải quantifiable** — KHÔNG "tốt", "đẹp", "chất lượng". Phải là số/percentage/time.
2. **SLO KHÔNG target 100%** cho operational — cần error budget cho innovation.
3. **SLA LESS strict hơn SLO** — tạo buffer (vd: SLO 2h response, SLA 4h).
4. **Mỗi SLO phải có evidence** — benchmark, historical, hoặc verbatim brief.
5. **Error Budget = 100% - SLO** — budget < 25% → freeze changes.

## SLI examples theo industry

```
Content creation:  factual accuracy rate, readability score, on-time delivery rate
Order processing:  order accuracy rate, fulfillment time, defect rate
Customer service:  first response time, resolution rate, CSAT
Financial reporting: data accuracy rate, on-time delivery rate
```

## Evidence cho SLO

```
SLO "accuracy ≥ 98%" cần evidence:
  - Benchmark ngành: "Industry standard content accuracy 95-98% (Source: ...)"
  - Historical: "Q2 actual accuracy = 97.2% (Source: internal dashboard)"
  - Verbatim brief: "Bài sai thông tin làm mất uy tín — cần < 2 lỗi/100 bài"

Không có evidence → confidence_score thấp → need_review = true
→ KHÔNG commit SLO cảm tính.
```

→ Xem `okr-evidence-rubric.md` cho confidence scoring chi tiết.

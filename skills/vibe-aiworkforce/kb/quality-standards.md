# Quality Standards — SLI/SLO/SLA Reference

> Reference rút gọn từ vibe-aiworkforce Phase A. Áp dụng cho mọi skill build ra.

## SLI / SLO / SLA — Định nghĩa

| Khái niệm | Ý nghĩa | Ví dụ |
|-----------|---------|-------|
| **SLI** (Service Level Indicator) | Metric ĐO chất lượng output | Accuracy rate, completeness %, response time |
| **SLO** (Service Level Objective) | Target TỐI THIỂU cho SLI (internal) | Accuracy ≥ 95%, response ≤ 5 min |
| **SLA** (Service Level Agreement) | Promise VỚI external (LESS strict than SLO) | Accuracy ≥ 90% (refund if miss) |

## Rules khi define

```
1. SLI phải QUANTIFIABLE — KHÔNG "tốt", "chất lượng", "đẹp"
2. SLO có ERROR BUDGET (100% - SLO) — KHÔNG target 100% cho operational
3. SLA < SLO (luôn) — buffer cho unexpected failure
4. SLA CHỈ define khi output đi ra external stakeholder
```

## Error Budget Formula

```
Error Budget = 100% - SLO

Ví dụ: SLO = 95% → Error Budget = 5%
- Có thể fail 5% requests mà không violate SLO
- Khi Error Budget < 25% (còn 1.25%) → alert + freeze new features
- Khi Error Budget < 0% → incident, RCA required
```

## Quality Gates — Apply vào workflow

```
Mỗi [REVIEW] node trong workflow cần specify:

  Threshold:   Quality Score ≥ [X]/100
  SLI:         [metric cụ thể]
  SLO:         [target]
  Error Budget: [% remaining]
  On Pass:     → next step
  On Fail:     → LOOP (max 3 iterations)
  After 3 Fail: → [INCIDENT] node + RCA
```

## Threshold by Workflow Stage

```
Stage                        Threshold  Mode
──────────────────────────────────────────────
Internal draft               60+        --quick
Internal final               75+        --quick
Stakeholder review           80+        full
Client/customer delivery     85+        full
Public publish               90+        full
```

## Confidence Score Thresholds (NEW — Tip 2)

```
confidence_score ≥ 0.85  → auto-accept, continue
0.7 ≤ confidence_score < 0.85 → auto-accept, flag for spot-check
0.5 ≤ confidence_score < 0.7  → need_review = true, queue for review
confidence_score < 0.5  → reject, request human input or more evidence
```

## Incident Triggers

```
- Quality gate fail 3+ loops
- SLA breach
- Same error pattern ≥ 3 lần
- Output rejected by stakeholder
- confidence_score trung bình < 0.5 across 5 runs
```

→ Mỗi trigger → Incident Report + 5 Whys RCA + SOP update (if systemic)

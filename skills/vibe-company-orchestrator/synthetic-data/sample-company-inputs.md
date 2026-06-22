# Synthetic Data — Sample Company Inputs

> Sample inputs để test vibe-company-orchestrator pipeline mà không cần data thật. Dùng cho smoke test + schema validation test.

## Sample 1: SaaS Startup Intake Brief

```markdown
# Company Intake: Contoso SaaS

**Company:** Contoso
**Industry:** SaaS / Tech Startup
**Size:** SMALL (8 người)
**Model:** B2B SaaS, subscription
**Market:** Vietnam + Southeast Asia

**Product:** Project management tool cho dev teams

**Team hiện tại:**
- 2 founders (CEO + CTO)
- 3 engineers
- 2 marketing/sales
- 1 customer success

**Pain points:**
- Không có SOP, mọi thứ ad-hoc
- Marketing xuất 5 bài/tuần nhưng inconsistency
- Customer onboarding thủ công, mất 2 ngày/user
- Không track KPI rõ ràng

**Goal:** Thiết lập company structure + activate AI workforce cho marketing + CS trước.
```

## Sample 2: Department brief excerpt (dùng làm evidence source)

```
Hiện tại team tôi xuất 5 bài LinkedIn/tuần, mất khoảng 4 tiếng mỗi bài.
Customer onboarding thủ công mất khoảng 2 ngày mỗi user mới.
Traffic organic khoảng 60k sessions/tháng.
Target quý này: tăng traffic 40%, giảm onboarding time xuống 4 giờ.
```

→ Dòng này dùng làm `verbatim_quote` trong `evidence[]` của OKR artifact.

## Sample artifacts (JSON)

Xem cùng folder:
- `sample-company-okr.json` — Department OKR với evidence + confidence
- `sample-quality-standards.json` — SLI/SLO/SLA cho content SOP
- `sample-handoff-brief.json` — Phase 6 handoff cho aiworkforce

Những artifact này validate chống schema/ — dùng làm "happy path" cho test.

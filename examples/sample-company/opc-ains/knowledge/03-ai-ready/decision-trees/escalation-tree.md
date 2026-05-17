# Customer Escalation Decision Tree

**Version:** 1.0
**Last updated:** 2026-04-01
**Usage**: AI Workers dùng khi xử lý vấn đề/tục tiume từ khách hàng

---

## Severity Classification

```
Issue tiếp nhận →
│
├─ Client express dissatisfaction?
│  ├─ YES → Classify severity
│  └─ NO → Standard handling, no escalation
│
├─ SEVERITY 1 (CRITICAL)
│  ├─ Dữ liệu client bị mất hoặc lộ
│  ├─ Deliverable sai nghiêm trọng (legal risk)
│  ├─ Client đe dọa terminate contract
│  └─ ACTION: → CEO IMMEDIATELY (within 1 hour)
│
├─ SEVERITY 2 (HIGH)
│  ├─ Deliverable quality below standard (client complain)
│  ├─ Timeline delay >3 ngày
│  ├─ Scope change request từ client
│  ├─ Client unhappy nhưng chưa threaten
│  └─ ACTION: → CEO within 4 hours. AI PM prepare incident report.
│
├─ SEVERITY 3 (MEDIUM)
│  ├─ Minor quality issue (typo, formatting)
│  ├─ Client question about approach/methodology
│  ├─ Request for additional deliverable (small)
│  ├─ Communication delay >24h
│  └─ ACTION: AI Worker handle → notify CEO in daily brief
│
└─ SEVERITY 4 (LOW)
   ├─ General feedback (positive or neutral)
   ├─ FAQ-style question
   ├─ Scheduling change request
   └─ ACTION: AI Worker auto-handle. No escalation needed.
```

---

## Escalation Protocol by Severity

### Severity 1 — CRITICAL

| Step | Action | Owner | Timeline |
|------|--------|-------|----------|
| 1 | Acknowledge issue to client (email + Zalo) | AI PM | Immediately |
| 2 | Notify CEO with incident report | AI PM | Within 30 min |
| 3 | CEO reviews and decides action plan | CEO | Within 1 hour |
| 4 | Implement fix | CEO + AI Workers | Within 24h |
| 5 | Client update call | CEO | Within 24h |
| 6 | Post-mortem report | AI PM | Within 48h |
| 7 | SOP update if needed | AI KM | Within 1 week |

### Severity 2 — HIGH

| Step | Action | Owner | Timeline |
|------|--------|-------|----------|
| 1 | Acknowledge to client | AI PM | Within 2h |
| 2 | Prepare incident brief for CEO | AI PM | Within 4h |
| 3 | CEO reviews, provides guidance | CEO | Within 8h |
| 4 | Implement fix | AI Workers | Within 48h |
| 5 | Client update | AI PM | Within 48h |
| 6 | Update SOP if needed | AI KM | Within 1 week |

### Severity 3 — MEDIUM

| Step | Action | Owner | Timeline |
|------|--------|-------|----------|
| 1 | Resolve issue per SOP | AI Worker | Within 24h |
| 2 | Notify CEO in daily brief | AI Worker | Next daily brief |
| 3 | Log in issue tracker | AI PM | Within 24h |

### Severity 4 — LOW

| Step | Action | Owner | Timeline |
|------|--------|-------|----------|
| 1 | Auto-respond per FAQ/template | AI Worker | Within 4h |
| 2 | No escalation needed | — | — |

---

## Response Templates

### Acknowledgment Template (Severity 1-2)

```
Chào [Tên client],

AINS đã nhận được feedback của anh/chị về [vấn đề].
Chúng tôi rất coi trọng trải nghiệm của anh/chị và đang xử lý ngay.

[Khi cần thiết: CEO sẽ liên hệ trực tiếp trong vòng [X] giờ.]

Cảm ơn anh/chị đã thông báo để chúng tôi cải thiện.

Trân trọng,
AINS Team
```

### Resolution Template (Severity 1-2)

```
Chào [Tên client],

Về vấn đề [tóm tắt vấn đề] mà anh/chị đã báo cáo:

1. **Nguyên nhân**: [Giải thích ngắn gọn, honest]
2. **Giải pháp**: [Đã làm gì để fix]
3. **Phòng ngừa**: [Biện pháp để không lặp lại]

[Nếu cần bồi thường: "Như một cách đền bù, AINS xin [action]"]

AINS cam kết chất lượng và sẽ đảm bảo vấn đề này không lặp lại.

Trân trọng,
[Tên CEO] — CEO, AI Native Solutions
```

---

## Escalation Metrics to Track

| Metric | Target | Alert if |
|--------|--------|----------|
| Severity 1 incidents | 0/tháng | Any |
| Severity 2 incidents | ≤1/tháng | >2 |
| Average resolution time (Sev 1) | <24h | >48h |
| Average resolution time (Sev 2) | <48h | >72h |
| Client satisfaction post-resolution | 4.0+/5.0 | <3.5 |
| Repeat issues (same type) | 0 | Any |

---
*Review quarterly. Update severity definitions based on actual incidents.*

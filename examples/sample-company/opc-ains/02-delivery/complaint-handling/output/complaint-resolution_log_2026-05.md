# Complaint Resolution Log — May 2026

**Period:** 2026-05-01 → 2026-05-31
**Maintained by:** CS AI
**Last Updated:** 2026-05-07
**Status:** 1 Resolved, 1 In Progress

---

## Summary

| Metric | Value |
|--------|-------|
| **Total Complaints** | 2 |
| **Resolved** | 1 |
| **In Progress** | 1 |
| **Critical** | 0 |
| **High** | 1 |
| **Medium** | 1 |
| **Avg Resolution Time** | 3 ngày (resolved only) |
| **Avg Post-complaint CSAT** | 4.0/5 |

---

## CMP-20260502-001: Training Recording Quality

### Thông tin cơ bản

| Field | Value |
|-------|-------|
| **Complaint ID** | CMP-20260502-001 |
| **Customer** | GreenStart Co., Ltd. |
| **Contact** | Lê Thu Hà — Operations Manager |
| **Project** | PRJ-2026-009 (AI Training) |
| **Date Received** | 2026-05-02 10:15 |
| **Channel** | Email |
| **Severity** | Medium |
| **Category** | Quality |
| **Related Ticket** | TK-20260429-002 |

### Mô tả khiếu nại

Lê Thu Hà phàn nàn về chất lượng recording của Training Session 1. Sau khi được convert sang .mp4 (như đã resolve trong TK-20260429-002), audio quality bị giảm đáng kể — tiếng echo và noise. Cô ấy cho rằng recording không usable cho team members không tham dự live session.

### Root Cause Analysis

1. Recording gốc (.webm) có audio quality chấp nhận được
2. Conversion sang .mp4 dùng default settings — không optimize audio
3. Audio bitrate giảm từ 192kbps → 128kbps trong quá trình convert
4. **Root cause:** QA checklist cho recording không có audio quality check item

### Resolution

| Step | Action | Date | Owner |
|------|--------|------|-------|
| 1 | Acknowledge complaint | 2026-05-02 10:30 | CS AI |
| 2 | Investigation — identify conversion quality issue | 2026-05-02 14:00 | QA AI |
| 3 | Re-convert recording với optimized audio settings (192kbps) | 2026-05-02 16:00 | Project AI |
| 4 | QA check audio quality | 2026-05-02 16:30 | QA AI |
| 5 | Share new recording with GreenStart | 2026-05-02 17:00 | CS AI |
| 6 | Client confirms acceptable | 2026-05-03 09:00 | Client |
| 7 | Formal apology + prevention commitment | 2026-05-03 10:00 | Human Owner (Shimazu) |

### Compensation

- No financial compensation (resolved nhanh, client satisfied)
- Bonus: Share thêm annotated transcript của session

### Prevention Actions

| Action | Owner | Status |
|--------|-------|--------|
| Update QA checklist: thêm audio quality check cho recording | QA AI | Completed (2026-05-03) |
| Update recording SOP: sử dụng .mp4 từ đầu (không convert) | Project AI | Completed (2026-05-03) |
| Add KB article: "Recording quality standards" | CS AI | Completed (2026-05-04) |

### Outcome

| Metric | Value |
|--------|-------|
| **Resolution Time** | 1 ngày |
| **Post-complaint CSAT** | 4/5 |
| **Client Feedback** | "Cảm ơn xử lý nhanh. Hy vọng recording sau sẽ tốt hơn từ đầu." |
| **Status** | **RESOLVED** (2026-05-03) |

---

## CMP-20260505-002: Assessment Report Delay

### Thông tin cơ bản

| Field | Value |
|-------|-------|
| **Complaint ID** | CMP-20260505-002 |
| **Customer** | TechCorp Vietnam JSC |
| **Contact** | Nguyễn Văn Minh — Project Manager |
| **Project** | PRJ-2026-008 (AI Consulting) |
| **Date Received** | 2026-05-05 16:30 |
| **Channel** | Slack |
| **Severity** | High |
| **Category** | Timeline |
| **Related Ticket** | N/A |

### Mô tả khiếu nại

Nguyễn Văn Minh express frustration về việc Assessment Report chưa được share dù đã qua deadline agreed. Originally agreed: report draft share by 2026-05-05 (end of day), nhưng anh ấy muốn review trước meeting ngày 2026-05-06 và chưa nhận được gì đến 16:30. Anh ấy feel "không được update kịp thời".

### Root Cause Analysis (Preliminary)

1. Report draft đã hoàn thành (QA score 87% — passed)
2. Human Owner quality gate scheduled thứ 5 (2026-05-07) — chưa diễn ra
3. Miscommunication: "deadline" trong project plan là client presentation date, không phải draft share date
4. **Contributing factor:** Không có intermediate communication về draft status
5. **Root cause:** Ambiguous timeline — "delivery date" vs "draft share date" chưa clarify

### Resolution (In Progress)

| Step | Action | Date | Owner | Status |
|------|--------|------|-------|--------|
| 1 | Immediate acknowledgment + apology | 2026-05-05 16:45 | CS AI | Done |
| 2 | Clarify timeline confusion (draft vs final) | 2026-05-05 17:00 | CS AI | Done |
| 3 | Share report summary (high-level) immediately | 2026-05-05 17:30 | Project AI | Done |
| 4 | Schedule early quality gate review | 2026-05-06 09:00 | Human Owner | Planned |
| 5 | Share full draft after quality gate | 2026-05-06 11:00 | Project AI | Pending |
| 6 | Confirm client satisfied | 2026-05-06 14:00 | CS AI | Pending |

### Proposed Prevention

| Action | Owner | Status |
|--------|-------|--------|
| Update project plan template: differentiate "draft share date" vs "final delivery date" | Project AI | Pending |
| Add mandatory "draft status update" 24h before deadline | CS AI | Pending |
| Clarify timeline definitions trong Working Agreement template | CS AI | Pending |

### Current Status

**IN PROGRESS** — Draft summary đã share, full draft pending quality gate (2026-05-06 AM). Client phản hồi positive sau khi nhận summary và clarification.

---

## Trend Analysis

### Month-over-Month

| Metric | March 2026 | April 2026 | May 2026 (MTD) |
|--------|-----------|-----------|---------------|
| Total Complaints | 1 | 0 | 2 |
| Resolved | 1 | 0 | 1 |
| Avg Resolution Time | 2 ngày | N/A | 1 ngày (resolved) |
| Root Cause: Process Gap | 1 | 0 | 2 |

### Pattern Identified

- **100% complaints tháng 5** liên quan đến process gaps (recording SOP, timeline clarity)
- **0%** liên quan đến chất lượng tư vấn hoặc expertise
- **Action:** Focus cải thiện SOP clarity, đặc biệt cho new project types

---

**Log maintained by:** CS AI
**Next review:** 2026-05-14

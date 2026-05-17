# SOP-DEL-003: Hỗ trợ khách hàng

**Version:** 1.0 | **Ngày tạo:** 2026-05-07 | **Owner:** CS AI

---

## 1. Mục đích

Quy trình này định nghĩa cách AINS tiếp nhận, xử lý và theo dõi tất cả các yêu cầu hỗ trợ từ khách hàng. CS AI là first-line support, xử lý tự động các câu hỏi thường gặp và escalate khi cần đến Human Owner.

## 2. Phạm vi

- Áp dụng cho tất cả customer-facing support channels
- Bao gồm: email, chat, phone message
- Từ lúc tiếp nhận ticket đến khi resolved và closed

## 3. Vai trò (RACI)

| Hoạt động | CS AI | Project AI | QA AI | Human Owner |
|-----------|-------|-----------|-------|-------------|
| Tiếp nhận ticket | **R** | I | I | I |
| Phân loại & ưu tiên | **R** | I | I | I |
| Trả lời câu hỏi (FAQ) | **R** | I | I | I |
| Trả lời câu hỏi (Complex) | C | C | C | **R** |
| Escalation | **R** | C | C | A |
| Cập nhật knowledge base | **R** | C | I | A |
| Gửi CSAT survey | **R** | I | I | I |
| Ticket closure | **R** | I | I | I |

## 4. IPO Analysis

### Input
- Customer inquiry (email, chat, phone message)
- Ticket metadata (customer info, project context, history)
- Knowledge base articles
- Previous ticket history

### Process
1. Tiếp nhận inquiry → Tạo ticket
2. Phân loại: priority + category
3. Search knowledge base
4. Draft response hoặc escalate
5. Customer confirmation
6. Close ticket → CSAT survey

### Output
- Ticket record (full lifecycle)
- Response to customer
- Updated knowledge base (nếu có insight mới)
- CSAT data
- Support metrics

## 5. Quy trình chi tiết

### Bước 1: Tiếp nhận Ticket

**Trigger:** Customer gửi inquiry qua bất kỳ channel

1.1. Auto-acknowledge (trong vòng 5 phút):
   - Gửi confirmation email/message
   - Ticket ID
   - Estimated response time

1.2. Tạo ticket record:
   ```
   Ticket ID: TK-YYYYMMDD-XXX
   Customer: ___
   Project: ___
   Channel: [Email/Chat/Phone]
   Subject: ___
   Description: ___
   Priority: [P0/P1/P2/P3]
   Category: [#technical/#billing/#how-to/#feature-request/#complaint/#feedback]
   Status: [New → In Progress → Resolved → Closed]
   ```

1.3. Lưu tại `customer-support/input/`

### Bước 2: Phân loại & Ưu tiên

2.1. **Auto-classification** (CS AI):
   - Scan nội dung ticket
   - Match với category tags
   - Assign priority theo matrix:

| Priority | Keyword/Signal | SLA |
|----------|---------------|-----|
| P0 | "không truy cập được", "mất dữ liệu", "bảo mật" | 30 phút response |
| P1 | "không hoạt động", "lỗi nghiêm trọng", "gấp" | 2 giờ response |
| P2 | "câu hỏi", "hướng dẫn", "lỗi nhỏ" | 4 giờ response |
| P3 | "đề xuất", "ý tưởng", "khi nào có" | 8 giờ response |

2.2. Nếu auto-classification confidence < 80%:
   - Default to P2
   - Flag cho Human Owner review

### Bước 3: Xử lý Ticket

3.1. **Search Knowledge Base:**
   - Match câu hỏi với KB articles
   - Nếu match rate >= 85% → Auto-draft response

3.2. **Auto-response (nếu FAQ):**
   - Draft response dựa trên KB article
   - Personalize (tên khách hàng, context)
   - Gửi response
   - Mark as "Pending Customer Confirmation"

3.3. **Escalation (nếu complex):**
   - Draft analysis: tóm tắt vấn đề, context, đề xuất hướng giải quyết
   - Forward đến Human Owner qua Slack
   - Nếu P0: Slack + SMS notification
   - Track đến khi resolved

### Bước 4: Follow-up & Closure

4.1. Sau khi gửi response:
   - Đợi customer confirmation (auto-reminder sau 24h)
   - Nếu customer confirm resolved → Close ticket
   - Nếu customer phản hồi thêm → Reopen, quay lại Bước 3

4.2. Ticket Closure:
   - Resolution summary
   - Time metrics (response time, resolution time)
   - Root cause (nếu applicable)
   - Lưu tại `customer-support/output/`

4.3. Post-closure:
   - Gửi CSAT survey (sau 1 giờ)
   - Update knowledge base nếu phát hiện gap
   - Update ticket metrics

### Bước 5: Knowledge Base Maintenance (Weekly)

5.1. Phân tích ticket pattern:
   - Top 10 câu hỏi thường gặp
   - Gap trong KB (câu hỏi chưa có answer)
   - Outdated articles

5.2. Tạo/cập nhật KB articles
5.3. Human Owner review KB updates (monthly)

## 6. Template & Checklist

### Response Template — FAQ Answer

```
Chào [Tên khách hàng],

Cảm ơn bạn đã liên hệ AINS. Về câu hỏi của bạn:

**[Tóm tắt câu hỏi]**

**Câu trả lời:**
[Chi tiết câu trả lời]

**Các bước thực hiện:**
1. ___
2. ___
3. ___

Nếu bạn cần thêm hỗ trợ, đừng ngần ngại phản hồi email này hoặc liên hệ qua [channel].

Trân trọng,
CS AI — AI Native Solutions
```

### Escalation Template

```
⚠️ ESCALATION — [Priority Level]
Ticket: TK-XXXXXX
Customer: ___
Project: ___
Issue Summary: ___
KB Match: __%
Proposed Action: ___
Requires: [Human decision / Technical investigation / Client meeting]
SLA Remaining: __h
```

## 7. KPIs & Metrics

| KPI | Mục tiêu | Tần suất | Owner |
|-----|----------|----------|-------|
| Support Response Time | < 2h (avg) | Weekly | CS AI |
| First Contact Resolution | >= 70% | Monthly | CS AI |
| CSAT Score | >= 4.5/5 | Monthly | CS AI |
| Knowledge Base Coverage | >= 90% | Monthly | CS AI |
| Ticket Volume Trend | Tracking | Weekly | CS AI |

## 8. AI Integration Points

| Bước | AI Worker | Task | Automation |
|------|-----------|------|-----------|
| Tiếp nhận | CS AI | Auto-acknowledge, tạo ticket | 100% |
| Phân loại | CS AI | Auto-classification | 85% |
| KB search | CS AI | Semantic matching | 90% |
| Response drafting | CS AI | Auto-draft từ KB | 80% |
| Escalation routing | CS AI | Auto-route theo priority | 95% |
| CSAT collection | CS AI | Auto-send survey | 100% |
| KB update | CS AI | Draft new articles | 75% |

## 9. Upstream/Downstream SOPs

### Upstream:
- **SOP-DEL-001** (Project Management) — Project context, status
- **SOP-DEL-004** (Customer Onboarding) — Customer info, onboarding status
- **SOP-DEL-002** (Quality Assurance) — Quality issues cần communicate

### Downstream:
- **SOP-DEL-007** (Complaint Handling) — Ticket chuyển thành complaint
- **SOP-DEL-005** (Change Management) — Feature request từ customer
- **SOP-DEL-006** (Project Evaluation) — CSAT data cho retrospective

## 10. Version History

| Version | Ngày | Thay đổi | Author |
|---------|------|----------|--------|
| 1.0 | 2026-05-07 | Tạo mới | CS AI |

---

**Approved by:** Shimazu — Human Owner
**Ngày approve:** 2026-05-07

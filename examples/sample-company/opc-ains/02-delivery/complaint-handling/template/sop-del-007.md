# SOP-DEL-007: Xử lý khiếu nại

**Version:** 1.0 | **Ngày tạo:** 2026-05-07 | **Owner:** CS AI

---

## 1. Mục đích

Quy trình này định nghĩa cách AINS tiếp nhận, xử lý và giải quyết khiếu nại từ khách hàng. Mục tiêu giải quyết khiếu nại nhanh chóng, công bằng và biến complaint thành cơ hội cải thiện dịch vụ.

## 2. Phạm vi

- Áp dụng cho tất cả khiếu nại từ khách hàng
- Bao gồm: chất lượng sản phẩm/dịch vụ, thái độ dịch vụ, deadline, billing
- Từ lúc tiếp nhận complaint đến khi resolved và follow-up

## 3. Vai trò (RACI)

| Hoạt động | CS AI | Project AI | QA AI | Human Owner |
|-----------|-------|-----------|-------|-------------|
| Tiếp nhận khiếu nại | **R** | I | I | I |
| Phân loại severity | **R** | C | C | A |
| Investigation | C | C | **R** | A |
| Draft resolution | C | C | C | **R** |
| Communicate với client | C | I | I | **R** |
| Implement resolution | **R** | C | C | A |
| Follow-up | **R** | I | I | I |
| Complaint log | **R** | I | I | A |

## 4. IPO Analysis

### Input
- Customer complaint (qua bất kỳ channel)
- Related project/deliverable information
- Previous interaction history
- Contract/SLA terms

### Process
1. Tiếp nhận → Tạo complaint record
2. Phân loại severity
3. Investigation (root cause)
4. Propose resolution
5. Human Owner approve
6. Implement & communicate
7. Follow-up & close
8. Update processes

### Output
- Complaint record (full lifecycle)
- Resolution report
- Customer satisfaction confirmation
- Process improvement (nếu cần)
- Updated complaint log

## 5. Quy trình chi tiết

### Bước 1: Tiếp nhận Khiếu nại

**Trigger:** Customer nêu không hài lòng hoặc khiếu nại rõ ràng

1.1. CS AI nhận complaint → Tạo Complaint Record:
   ```
   Complaint ID: CMP-YYYYMMDD-XXX
   Customer: ___
   Project: ___
   Channel: [Email/Chat/Phone/In-person]
   Date Received: ___
   Description: ___
   Severity: [Low/Medium/High/Critical]
   Category: [Quality/Service/Timeline/Billing/Other]
   Related Ticket: [TK-XXX] (nếu có)
   ```

1.2. **Immediate acknowledgment** (trong vòng 30 phút):
   - Xác nhận đã nhận được khiếu nại
   - Thể hiện sự thấu hiểu
   - Cam kết thời gian phản hồi

1.3. Lưu tại `complaint-handling/input/`

### Bước 2: Phân loại Severity

2.1. **Critical:**
   - Ảnh hưởng nghiêm trọng đến business của khách hàng
   - Data loss hoặc security issue
   - Legal risk
   - **SLA:** 2 giờ response, 24 giờ resolution plan

2.2. **High:**
   - Deliverable không đạt yêu cầu đáng kể
   - Trễ deadline nghiêm trọng (> 1 tuần)
   - **SLA:** 4 giờ response, 48 giờ resolution plan

2.3. **Medium:**
   - Chất lượng dưới kỳ vọng nhưng workaround có thể
   - Trễ deadline nhỏ
   - **SLA:** 8 giờ response, 5 ngày resolution

2.4. **Low:**
   - Góp ý cải thiện, không ảnh hưởng business
   - **SLA:** 24 giờ response, 10 ngày resolution

### Bước 3: Investigation

3.1. **QA AI** điều tra:
   - Review deliverable/issue liên quan
   - Identify root cause
   - Assess AINS's responsibility level

3.2. **Project AI** cung cấp context:
   - Project timeline, decisions made
   - Communication history
   - Change request history

3.3. CS AI tổng hợp:
   - Root cause analysis
   - AINS responsibility assessment
   - Proposed resolution options

3.4. Lưu tại `complaint-handling/processing/ai-draft/`

### Bước 4: Resolution Proposal

4.1. CS AI draft resolution options:
   - **Option A:** [Full fix] — Mô tả, timeline, cost
   - **Option B:** [Partial fix + compensation] — Mô tả
   - **Option C:** [Alternative] — Mô tả

4.2. Human Owner review và approve resolution:
   - Chọn option hoặc propose alternative
   - Approve compensation level
   - Sign off communication tone

4.3. Decision authority:
   - Resolution < 2M VND impact: Human Owner approve
   - Resolution >= 2M VND impact: Human Owner approve + document

### Bước 5: Implementation & Communication

5.1. **Implement resolution:**
   - Assign action items
   - Track progress
   - Quality check (QA AI)

5.2. **Communicate với client:**
   - Human Owner gửi formal response
   - Explain root cause (transparent)
   - Present resolution
   - Commit prevention measures

### Bước 6: Follow-up & Close

6.1. Sau resolution:
   - Verify client satisfaction
   - Follow-up sau 7 ngày
   - Thu thập CSAT

6.2. Close complaint:
   - Resolution confirmed
   - All action items completed
   - Client satisfied

6.3. Archive → `complaint-handling/archive/`

### Bước 7: Process Improvement

7.1. Phân tích root cause:
   - Systemic issue hay isolated case?
   - SOP gap hay execution gap?

7.2. Implement prevention:
   - Update SOP nếu cần
   - Update QA checklist
   - Update AI Worker training
   - Add to risk register

## 6. Template & Checklist

### Complaint Resolution Email Template

```
Chào [Tên khách hàng],

Cảm ơn bạn đã chia sẻ phản hồi. Chúng tôi rất coi trọng mọi góp ý
và xin lỗi vì trải nghiệm chưa đạt kỳ vọng của bạn.

**Tóm tắt vấn đề:**
[Paraphrase complaint để thể hiện đã hiểu]

**Nguyên nhân:**
[Transparent explanation — không đổ lỗi, focus vào facts]

**Giải pháp:**
[Chi tiết resolution đã agree]

**Cam kết phòng ngừa:**
[Các bước AINS sẽ thực hiện để không lặp lại]

Nếu bạn có bất kỳ câu hỏi nào, xin liên hệ trực tiếp với tôi.

Trân trọng,
Shimazu
Founder & CEO — AI Native Solutions
```

### Complaint Log Entry

```markdown
## CMP-YYYYMMDD-XXX
- **Customer:** ___
- **Date:** ___
- **Category:** ___
- **Severity:** ___
- **Description:** ___
- **Root Cause:** ___
- **Resolution:** ___
- **Resolution Date:** ___
- **Compensation:** ___
- **Prevention Action:** ___
- **Client Satisfaction:** [1-5]
- **Status:** [Open/In Progress/Resolved/Closed]
```

## 7. KPIs & Metrics

| KPI | Mục tiêu | Tần suất | Owner |
|-----|----------|----------|-------|
| Complaint Response Time | < 4 giờ (avg) | Per complaint | CS AI |
| Complaint Resolution Time | < 5 ngày (avg) | Per complaint | CS AI |
| Complaint Resolution Rate | 100% | Monthly | CS AI |
| Repeat Complaint Rate | < 10% | Monthly | CS AI |
| Post-complaint CSAT | >= 4.0/5 | Per complaint | CS AI |

## 8. AI Integration Points

| Bước | AI Worker | Task | Automation |
|------|-----------|------|-----------|
| Tiếp nhận | CS AI | Auto-detect complaint sentiment | 85% |
| Phân loại | CS AI | Auto-classify severity | 80% |
| Investigation | QA AI | Root cause analysis | 75% |
| Draft resolution | CS AI | Propose options | 70% |
| Communication | Human | Final response (mandatory) | 0% |
| Follow-up | CS AI | Auto-reminder, CSAT | 95% |
| Log | CS AI | Auto-update complaint log | 100% |

## 9. Upstream/Downstream SOPs

### Upstream:
- **SOP-DEL-003** (Customer Support) — Ticket escalated to complaint
- **SOP-DEL-002** (Quality Assurance) — Quality issue identified
- **External** — Direct client complaint

### Downstream:
- **SOP-DEL-006** (Project Evaluation) — Complaint data cho retrospective
- **SOP-DEL-001** (Project Management) — Resolution action items
- **All SOPs** — Process improvements từ complaint root cause

## 10. Version History

| Version | Ngày | Thay đổi | Author |
|---------|------|----------|--------|
| 1.0 | 2026-05-07 | Tạo mới | CS AI |

---

**Approved by:** Shimazu — Human Owner
**Ngày approve:** 2026-05-07

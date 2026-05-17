# SOP-DEL-002: Đảm bảo chất lượng

**Version:** 1.0 | **Ngày tạo:** 2026-05-07 | **Owner:** QA AI

---

## 1. Mục đích

Quy trình này định nghĩa cách AINS đảm bảo chất lượng cho mọi deliverable trước khi giao cho khách hàng. QA AI thực hiện review tự động theo checklist chuẩn, chấm điểm và quyết định deliverable có đạt yêu cầu hay không.

## 2. Phạm vi

- Áp dụng cho tất cả deliverable của AINS
- Bao gồm: document, report, code, presentation, training material
- Từ lúc nhận deliverable draft đến khi approve/reject

## 3. Vai trò (RACI)

| Hoạt động | QA AI | Project AI | CS AI | Human Owner |
|-----------|-------|-----------|-------|-------------|
| Tạo/maintain QA checklist | **R** | C | I | A |
| Review deliverable | **R** | I | I | I |
| Chấm điểm QA | **R** | I | I | I |
| Approve (score >= 80%) | **R** | I | I | I |
| Conditional review (70-79%) | C | I | I | **R** |
| Reject (score < 70%) | **R** | C | I | A |
| QA trend reporting | **R** | I | I | A |

## 4. IPO Analysis

### Input
- Deliverable draft (từ Project AI hoặc team thực hiện)
- Requirements document / Client brief
- QA checklist (per deliverable type)
- Previous QA feedback (nếu có revision)

### Process
1. Nhận deliverable → Phân loại loại deliverable
2. Chọn QA checklist phù hợp
3. Review theo checklist (automated + manual check)
4. Chấm điểm theo 5 tiêu chí
5. Tạo QA report
6. Decision: Approve / Conditional / Reject
7. Gửi kết quả đến Project AI + Human Owner

### Output
- QA Report (với score và detail)
- Approve/Conditional/Reject decision
- Improvement suggestions
- Updated QA checklist (nếu cần)

## 5. Quy trình chi tiết

### Bước 1: Nhận Deliverable

**Trigger:** Project AI hoặc Human Owner submit deliverable để review

1.1. Xác nhận deliverable info:
   - Project name
   - Deliverable type (document, code, presentation, etc.)
   - Milestone liên quan
   - Deadline review

1.2. Lưu tại `quality-assurance/input/`

### Bước 2: Chọn QA Checklist

2.1. Phân loại deliverable:
   - **Document/Report:** Checklist-DOC
   - **Code/Technical:** Checklist-CODE
   - **Presentation:** Checklist-PPT
   - **Training Material:** Checklist-TRAIN

2.2. Load checklist tương ứng

### Bước 3: Review theo Checklist

**QA AI thực hiện tự động:**

3.1. **Completeness Check (25%):**
   - Tất cả sections/parts có đầy đủ không?
   - Có phần nào bị thiếu so với requirements?
   - Appendices và supporting documents?

3.2. **Requirements Check (25%):**
   - Có đáp ứng đúng yêu cầu từ brief?
   - Có deliver đúng format yêu cầu?
   - Có đáp ứng các constraint (ngôn ngữ, audience, etc.)?

3.3. **Presentation Check (20%):**
   - Format consistent không?
   - Visual elements (chart, table, image) chất lượng?
   - Readability score đạt chuẩn?
   - Branding consistent (logo, color, font)?

3.4. **Error-free Check (15%):**
   - Spelling & grammar check (automated)
   - Data accuracy check
   - Link validation
   - Logic consistency

3.5. **Timeliness Check (15%):**
   - Giao đúng deadline không?
   - Nếu trễ: bao lâu? Lý do?

### Bước 4: Chấm điểm

4.1. Chấm từng tiêu chí (0-100%)
4.2. Tính weighted score:
   ```
   Total Score = (Completeness x 0.25) + (Requirements x 0.25) +
                 (Presentation x 0.20) + (Error-free x 0.15) +
                 (Timeliness x 0.15)
   ```

4.3. Phân loại kết quả:

| Score | Classification | Action |
|-------|---------------|--------|
| 90-100% | Pass — Excellent | Auto-approve |
| 80-89% | Pass — Good | Approve với improvement notes |
| 70-79% | Conditional | Human Owner review bắt buộc |
| < 70% | Fail | Reject, yêu cầu làm lại |

### Bước 5: Tạo QA Report

5.1. Tạo QA report document → lưu tại `quality-assurance/output/`
5.2. Format report:

```markdown
# QA Report: [Deliverable Name]
**Date:** ___ | **QA AI** | **Score: __%**

## Overall: [Pass/Conditional/Fail]
## Chi tiết theo tiêu chí:
| Tiêu chí | Score | Notes |
|----------|-------|-------|
| Completeness | __% | ___ |
| Requirements | __% | ___ |
| Presentation | __% | ___ |
| Error-free | __% | ___ |
| Timeliness | __% | ___ |

## Issues Found:
1. [Severity] Description → Recommendation
## Improvement Suggestions:
1. ___
## Decision: [Approve/Conditional/Reject]
```

### Bước 6: Communication

6.1. Gửi QA report cho:
   - Project AI (slack notification)
   - Human Owner (email nếu Conditional/Fail, slack nếu Pass)

6.2. Nếu Reject:
   - Tạo revision request chi tiết
   - Project AI điều phối rework
   - Track đến khi resubmit

6.3. Nếu Conditional:
   - Notify Human Owner để schedule review
   - Human Owner review trong Quality Gate session (Thứ 5)

## 6. Template & Checklist

### QA Checklist — Document/Report

- [ ] **COM-01:** Trang bìa có đầy đủ thông tin (title, date, version, client)?
- [ ] **COM-02:** Mục lục (table of contents) chính xác?
- [ ] **COM-03:** Tất cả sections trong outline có đầy đủ?
- [ ] **COM-04:** Executive summary / TL;DR có?
- [ ] **REQ-01:** Đáp ứng đúng scope trong SoW?
- [ ] **REQ-02:** Đúng audience level (technical/business/mixed)?
- [ ] **REQ-03:** Đúng ngôn ngữ yêu cầu (VI/EN)?
- [ ] **PRE-01:** Format consistent (heading, font, spacing)?
- [ ] **PRE-02:** Charts/tables có label và source?
- [ ] **PRE-03:** Page numbers, header/footer đúng?
- [ ] **ERR-01:** Spelling check passed?
- [ ] **ERR-02:** Grammar check passed?
- [ ] **ERR-03:** Data/numbers chính xác?
- [ ] **ERR-04:** Links hoạt động?
- [ ] **TIM-01:** Giao đúng deadline?

## 7. KPIs & Metrics

| KPI | Mục tiêu | Tần suất | Owner |
|-----|----------|----------|-------|
| Quality Score (avg) | >= 90% | Weekly | QA AI |
| Defect Escape Rate | < 5% | Monthly | QA AI |
| QA Review Turnaround | < 4h | Per deliverable | QA AI |
| First-pass Yield | >= 75% | Monthly | QA AI |

## 8. AI Integration Points

| Bước | AI Worker | Task | Automation |
|------|-----------|------|-----------|
| Checklist selection | QA AI | Auto-select based on type | 100% |
| Automated checks | QA AI | Spelling, grammar, links, format | 100% |
| Content review | QA AI | Requirements, completeness | 80% |
| Scoring | QA AI | Calculate weighted score | 100% |
| Report generation | QA AI | Create QA report | 95% |
| Decision (Pass) | QA AI | Auto-approve if score >= 80% | 100% |
| Decision (Conditional/Fail) | Human | Review required | 0% auto |

## 9. Upstream/Downstream SOPs

### Upstream:
- **SOP-DEL-001** (Project Management) — Deliverable draft, requirements
- **SOP-DEL-005** (Change Management) — Updated requirements

### Downstream:
- **SOP-DEL-001** (Project Management) — QA result, revision request
- **SOP-DEL-003** (Customer Support) — Quality data cho customer communication
- **SOP-DEL-006** (Project Evaluation) — Quality metrics cho retrospective

## 10. Version History

| Version | Ngày | Thay đổi | Author |
|---------|------|----------|--------|
| 1.0 | 2026-05-07 | Tạo mới | QA AI |

---

**Approved by:** Shimazu — Human Owner
**Ngày approve:** 2026-05-07

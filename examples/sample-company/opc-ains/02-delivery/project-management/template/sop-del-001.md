# SOP-DEL-001: Quản lý dự án

**Version:** 1.0 | **Ngày tạo:** 2026-05-07 | **Owner:** Project AI

---

## 1. Mục đích

Quy trình này định nghĩa cách AINS quản lý dự án từ lúc nhận brief đến khi hoàn thành và bàn giao. Mục tiêu đảm bảo mọi dự án được thực hiện đúng scope, đúng deadline, đúng ngân sách và đạt chất lượng yêu cầu.

## 2. Phạm vi

- Áp dụng cho tất cả dự án của AINS (consulting, training, audit, development)
- Từ lúc ký hợp đồng/confirm project đến khi closure
- Bao gồm cả internal projects và client-facing projects

## 3. Vai trò (RACI)

| Hoạt động | Project AI | QA AI | CS AI | Human Owner |
|-----------|-----------|-------|-------|-------------|
| Nhận brief & tạo project plan | **R** | C | C | **A** |
| Phê duyệt project plan | C | C | C | **A** |
| Theo dõi tiến độ hàng ngày | **R** | I | I | I |
| Phê duyệt milestone | I | C | I | **A** |
| Quản lý rủi ro | **R** | C | I | A |
| Project closure & retrospective | **R** | C | C | **A** |
| Client communication (status) | C | I | **R** | A |

## 4. IPO Analysis

### Input
- Client brief / Signed contract
- Scope of Work (SoW)
- Budget và timeline đã agree
- Resource availability
- Requirements document

### Process
1. **Initiation:** Nhận brief → Kickoff → Tạo project plan
2. **Planning:** Chi tiết hóa sprint, milestone, resource allocation
3. **Execution:** Thực hiện theo plan, track tiến độ
4. **Monitoring:** Daily tracking, weekly report, risk management
5. **Closure:** Deliverable review, client acceptance, retrospective

### Output
- Project plan (đã approved)
- Weekly status reports
- Milestone deliverables
- Final delivery package
- Project retrospective report

## 5. Quy trình chi tiết

### Bước 1: Project Initiation (Day 0)

**Trigger:** Signed contract hoặc client confirmation

1.1. Project AI nhận brief từ CS AI (hoặc trực tiếp từ Human Owner)
1.2. Phân tích requirements:
   - Scope chính và scope phụ
   - Timeline constraint
   - Budget constraint
   - Quality requirement
   - Dependencies
1.3. Tạo Project Brief Summary → lưu tại `project-management/input/`
1.4. Gửi Project Brief Summary cho Human Owner review

### Bước 2: Project Planning (Day 1-2)

**Owner:** Project AI
**Approver:** Human Owner

2.1. Tạo Project Plan chi tiết bao gồm:
   - **WBS (Work Breakdown Structure):** Phân chia task-level
   - **Sprint Plan:** 1-2 tuần/sprint
   - **Milestone Definition:** Checkpoint rõ ràng
   - **Resource Allocation:** AI Worker assignment
   - **Risk Register:** Rủi ro xác định + mitigation
   - **Budget Breakdown:** Cost tracking
   - **Communication Plan:** Khi nào, báo cáo cho ai

2.2. Tạo project plan document → lưu tại `project-management/processing/ai-draft/`

2.3. Human Owner review & approve:
   - Nếu approve → chuyển sang `project-management/output/`
   - Nếu cần sửa → annotate, trả lại cho Project AI

2.4. Schedule kickoff meeting (nếu client-facing project)

### Bước 3: Execution & Tracking (Ongoing)

**Owner:** Project AI
**Tần suất:** Hàng ngày

3.1. **Daily:**
   - Cập nhật task status (Not Started / In Progress / Done / Blocked)
   - Check deviation từ plan
   - Nếu deviation > 10%: Alert Human Owner

3.2. **Weekly:**
   - Tạo weekly status report
   - Cập nhật risk register
   - Review burndown chart
   - Gửi report cho Human Owner + Client (qua CS AI)

3.3. **Per Milestone:**
   - Trigger QA review (QA AI)
   - Prepare milestone deliverable
   - Human Owner quality gate review
   - Client presentation/handoff

### Bước 4: Risk Management (Ongoing)

**Owner:** Project AI
**Trigger:** Khi phát hiện risk hoặc scheduled weekly review

4.1. Identify risks:
   - Timeline risk (trễ deadline)
   - Scope risk (scope creep)
   - Quality risk (không đạt standard)
   - Resource risk (resource không available)
   - Client risk (thay đổi yêu cầu)

4.2. Assess risk: Impact x Probability → Risk Score

4.3. Action:
   - Risk Score < Medium: Project AI tự xử lý, log trong risk register
   - Risk Score >= Medium: Alert Human Owner, propose mitigation
   - Risk Score >= High: Immediate escalation, emergency meeting

### Bước 5: Change Management (As needed)

5.1. Nhận change request (từ client hoặc internal)
5.2. Impact assessment: scope, timeline, budget, quality
5.3. Decision:
   - Change < 10% scope: Project AI approve, notify Human Owner
   - Change >= 10% scope: Human Owner approve
5.4. Cập nhật project plan
5.5. Notify stakeholders

### Bước 6: Project Closure

**Trigger:** Tất cả milestone completed + client acceptance

6.1. Final QA review (QA AI) — comprehensive
6.2. Human Owner final quality gate
6.3. Prepare delivery package:
   - Tất cả deliverables
   - Documentation
   - Training materials (nếu có)
   - Handover checklist

6.4. Client acceptance:
   - Giao delivery package
   - Thu thập client sign-off
   - Gửi CSAT survey (CS AI)

6.5. Project retrospective:
   - What went well
   - What could be improved
   - Lessons learned
   - Process improvements
   - → Lưu tại `project-evaluation/`

6.6. Archive project documents → `project-management/archive/`

## 6. Template & Checklist

### 6.1. Project Plan Template
```
# Project Plan: [Tên dự án]
## 1. Project Overview
   - Client: ___
   - Project Type: ___
   - Start Date: ___
   - End Date: ___
   - Budget: ___
## 2. Scope of Work
   - In-scope: ___
   - Out-of-scope: ___
## 3. WBS & Sprint Plan
   - Sprint 1: ___
   - Sprint 2: ___
   - ...
## 4. Milestones
   - M1: ___ (Date)
   - M2: ___ (Date)
## 5. Resource Allocation
   - Project AI: ___h
   - QA AI: ___h
   - CS AI: ___h
   - Human Owner: ___h
## 6. Risk Register
   - Risk 1: ___ (Score, Mitigation)
## 7. Communication Plan
   - Weekly: ___
   - Milestone: ___
```

### 6.2. Weekly Status Report Template
```
# Weekly Status Report — Week [W__]
## Project: [Tên]
## Period: [Date] - [Date]
### Overall Status: [Green/Yellow/Red]
### Progress: __% complete
### Completed This Week:
- [ ] Task 1
- [ ] Task 2
### Planned Next Week:
- [ ] Task 3
- [ ] Task 4
### Risks & Issues:
- Risk: ___
### Decisions Needed:
- Decision: ___ → Owner: ___
```

## 7. KPIs & Metrics

| KPI | Mục tiêu | Tần suất đo | Nguồn |
|-----|----------|------------|-------|
| On-time Delivery Rate | >= 95% | Weekly | Project tracker |
| Plan Accuracy | >= 85% | Per project | Actual vs planned |
| Milestone Adherence | >= 90% | Per milestone | Milestone tracker |
| Risk Mitigation Rate | >= 80% | Monthly | Risk register |

## 8. AI Integration Points

| Bước | AI Worker | Task | Automation Level |
|------|-----------|------|-----------------|
| Initiation | Project AI | Phân tích brief, tạo plan draft | 90% |
| Planning | Project AI | WBS, sprint plan, risk register | 85% |
| Daily tracking | Project AI | Status update, deviation alert | 95% |
| Weekly report | Project AI | Tạo status report | 90% |
| Milestone review | QA AI | Quality check | 80% |
| Risk assessment | Project AI | Risk scoring, mitigation proposal | 85% |
| Closure | Project AI | Retrospective draft | 80% |

**Human touchpoints:**
- Plan approval (bắt buộc)
- Milestone quality gate (bắt buộc)
- High-risk decisions (conditional)
- Client meetings (bắt buộc)

## 9. Upstream/Downstream SOPs

### Upstream (Input đến từ):
- **SOP-DEL-004** (Customer Onboarding) — Client brief, signed contract
- **Sales/Commercial SOP** — Signed SoW, budget confirmation

### Downstream (Output đi đến):
- **SOP-DEL-002** (Quality Assurance) — Deliverable để QA review
- **SOP-DEL-003** (Customer Support) — Status update cho client
- **SOP-DEL-005** (Change Management) — Change request processing
- **SOP-DEL-006** (Project Evaluation) — Retrospective data

## 10. Version History

| Version | Ngày | Thay đổi | Author |
|---------|------|----------|--------|
| 1.0 | 2026-05-07 | Tạo mới | Project AI |

---

**Approved by:** Shimazu — Human Owner
**Ngày approve:** 2026-05-07

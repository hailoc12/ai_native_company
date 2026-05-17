# SOP-DEL-005: Quản lý thay đổi

**Version:** 1.0 | **Ngày tạo:** 2026-05-07 | **Owner:** Project AI

---

## 1. Mục đích

Quy trình này định nghĩa cách AINS tiếp nhận, đánh giá và xử lý yêu cầu thay đổi (change request) từ khách hàng hoặc internal. Mục tiêu quản lý thay đổi hiệu quả mà không làm ảnh hưởng đến tiến độ, ngân sách và chất lượng dự án.

## 2. Phạm vi

- Áp dụng cho tất cả change request trong dự án đang thực hiện
- Bao gồm: scope change, timeline change, resource change, requirement change
- Không bao gồm: bug fix (xử lý theo SOP-DEL-002), complaint (xử lý theo SOP-DEL-007)

## 3. Vai trò (RACI)

| Hoạt động | Project AI | QA AI | CS AI | Human Owner |
|-----------|-----------|-------|-------|-------------|
| Tiếp nhận change request | C | I | **R** | I |
| Impact assessment | **R** | C | I | C |
| Approve (minor < 10% scope) | **R** | I | I | I |
| Approve (major >= 10% scope) | C | C | I | **R** |
| Cập nhật project plan | **R** | I | I | A |
| Communicate change | C | I | **R** | A |
| Track change implementation | **R** | C | I | I |

## 4. IPO Analysis

### Input
- Change request form (từ client hoặc internal)
- Current project plan & scope
- Budget status
- Timeline status
- Resource availability

### Process
1. Tiếp nhận change request
2. Phân loại: minor/major/critical
3. Impact assessment (scope, time, budget, quality)
4. Approval decision
5. Cập nhật project plan
6. Communicate stakeholders
7. Track implementation

### Output
- Change request record (approved/rejected)
- Updated project plan
- Impact assessment report
- Stakeholder communication

## 5. Quy trình chi tiết

### Bước 1: Tiếp nhận Change Request

**Trigger:** Client hoặc internal member yêu cầu thay đổi

1.1. CS AI nhận request → Tạo Change Request Record:
   ```
   CR ID: CR-[PROJECT]-YYYY-XXX
   Requestor: ___
   Date: ___
   Description: ___
   Rationale: ___
   Urgency: [Low/Medium/High/Critical]
   Type: [Scope/Timeline/Resource/Requirement]
   ```

1.2. Lưu tại `change-management/input/`
1.3. Notify Project AI

### Bước 2: Phân loại

2.1. **Minor Change** (< 10% scope impact):
   - Không ảnh hưởng deadline chính
   - Không cần thêm ngân sách
   - Không thay đổi deliverable chính
   - **Approver:** Project AI

2.2. **Major Change** (10-30% scope impact):
   - Ảnh hưởng deadline hoặc milestone
   - Cần thêm ngân sách hoặc resource
   - Thay đổi deliverable chính
   - **Approver:** Human Owner

2.3. **Critical Change** (> 30% scope impact):
   - Thay đổi toàn bộ hướng dự án
   - Cần renegotiate hợp đồng
   - **Approver:** Human Owner + Client re-alignment

### Bước 3: Impact Assessment

3.1. Project AI thực hiện impact assessment:

| Dimension | Phân tích |
|-----------|----------|
| **Scope** | Phần nào bị thêm/bớt/thay đổi? |
| **Timeline** | Deadline có bị trễ không? Bao lâu? |
| **Budget** | Cần thêm chi phí không? Bao nhiêu? |
| **Quality** | Chất lượng có bị ảnh hưởng không? |
| **Risk** | Rủi ro mới nào phát sinh? |
| **Dependencies** | Task/milestone nào bị ảnh hưởng liên锁? |

3.2. Tạo Impact Assessment Report → `change-management/processing/ai-draft/`

3.3. QA AI review quality impact
3.4. Human Owner review nếu Major/Critical

### Bước 4: Approval Decision

4.1. **Minor:** Project AI approve, notify Human Owner
4.2. **Major:** Human Owner review và decide:
   - Approve → Implement
   - Approve with conditions → Implement với điều chỉnh
   - Reject → Explain rationale to client
   - Request more info → Quay lại Bước 3

4.3. **Critical:** Human Owner + Client meeting:
   - Discuss options
   - Renegotiate nếu cần
   - Formal approval

4.4. Record decision → `change-management/output/`

### Bước 5: Implementation

5.1. Project AI cập nhật:
   - Project plan (timeline, WBS, milestones)
   - Resource allocation
   - Risk register
   - Budget tracker

5.2. QA AI cập nhật:
   - QA checklist (nếu scope change)
   - Test plan (nếu technical change)

5.3. CS AI communicate:
   - Notify client về approved change
   - Updated timeline/milestone (nếu có)
   - Expectation setting

### Bước 6: Track & Close

6.1. Project AI track change implementation
6.2. Verify change được implement đúng
6.3. Close CR khi change hoàn tất
6.4. Archive → `change-management/archive/`

## 6. Template & Checklist

### Change Request Form

```markdown
# Change Request: CR-[PROJECT]-YYYY-XXX

## Thông tin cơ bản
- **Requestor:** ___
- **Date:** ___
- **Project:** ___
- **Type:** [Scope/Timeline/Resource/Requirement]

## Mô tả thay đổi
**Current state:**
**Requested change:**
**Rationale:**

## Urgency
[ ] Low — Không gấp, có thể schedule
[ ] Medium — Cần xử lý trong tuần
[ ] High — Cần xử lý trong 48h
[ ] Critical — Cần xử lý ngay

## Impact Assessment (điền bởi Project AI)
| Dimension | Impact | Detail |
|-----------|--------|--------|
| Scope | +/- __% | ___ |
| Timeline | +/- __ days | ___ |
| Budget | +/- __ VND | ___ |
| Quality | [None/Low/Medium/High] | ___ |
| Risk | [None/Low/Medium/High] | ___ |

## Decision
- [ ] Approved
- [ ] Approved with conditions: ___
- [ ] Rejected — Reason: ___
- [ ] Need more info

**Approver:** ___ | **Date:** ___
```

## 7. KPIs & Metrics

| KPI | Mục tiêu | Tần suất | Owner |
|-----|----------|----------|-------|
| Change Request Turnaround | < 48h | Per CR | Project AI |
| Change Approval Rate | Tracking | Monthly | Project AI |
| Scope Change Rate | < 20% per project | Per project | Project AI |
| Change Impact Accuracy | >= 80% | Per CR | Project AI |

## 8. AI Integration Points

| Bước | AI Worker | Task | Automation |
|------|-----------|------|-----------|
| Tiếp nhận | CS AI | Tạo CR record | 95% |
| Phân loại | Project AI | Auto-classify minor/major | 85% |
| Impact assessment | Project AI | Calculate impact | 80% |
| Plan update | Project AI | Auto-update plan | 90% |
| Communication | CS AI | Draft & send notification | 90% |
| Tracking | Project AI | Monitor implementation | 85% |

## 9. Upstream/Downstream SOPs

### Upstream:
- **SOP-DEL-003** (Customer Support) — Change request từ ticket
- **SOP-DEL-001** (Project Management) — Current project plan context
- **External** — Client direct request

### Downstream:
- **SOP-DEL-001** (Project Management) — Updated project plan
- **SOP-DEL-002** (Quality Assurance) — Updated QA checklist
- **SOP-DEL-003** (Customer Support) — Client communication

## 10. Version History

| Version | Ngày | Thay đổi | Author |
|---------|------|----------|--------|
| 1.0 | 2026-05-07 | Tạo mới | Project AI |

---

**Approved by:** Shimazu — Human Owner
**Ngày approve:** 2026-05-07

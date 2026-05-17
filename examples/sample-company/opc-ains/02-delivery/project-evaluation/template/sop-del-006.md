# SOP-DEL-006: Đánh giá hiệu quả dự án

**Version:** 1.0 | **Ngày tạo:** 2026-05-07 | **Owner:** Project AI

---

## 1. Mục đích

Quy trình này định nghĩa cách AINS đánh giá hiệu quả dự án sau khi hoàn thành, thu thập lessons learned và đề xuất cải tiến quy trình. Mục tiêu liên tục cải thiện chất lượng delivery dựa trên dữ liệu thực tế.

## 2. Phạm vi

- Áp dụng cho tất cả dự án đã hoàn thành (đạt client sign-off)
- Bao gồm: retrospective, KPI analysis, process improvement
- Thực hiện sau mỗi project closure

## 3. Vai trò (RACI)

| Hoạt động | Project AI | QA AI | CS AI | Human Owner |
|-----------|-----------|-------|-------|-------------|
| Thu thập dữ liệu dự án | **R** | C | C | I |
| Tạo retrospective draft | **R** | C | C | I |
| Phân tích KPI | **R** | C | C | I |
| Retrospective review | C | C | C | **R** |
| Đề xuất cải tiến | **R** | C | C | A |
| Implement improvement | C | **R** | **R** | A |

## 4. IPO Analysis

### Input
- Project plan (actual vs planned)
- QA reports (tất cả deliverable)
- Support tickets (project-related)
- CSAT scores
- Change request log
- Risk register
- Budget tracker (actual vs planned)

### Process
1. Thu thập tất cả dữ liệu dự án
2. Phân tích KPI actual vs target
3. Tạo retrospective report
4. Human Owner review & discussion
5. Xác định improvements
6. Implement và track

### Output
- Retrospective report
- KPI analysis dashboard
- Improvement action items
- Updated SOPs (nếu cần)
- Lessons learned database entry

## 5. Quy trình chi tiết

### Bước 1: Data Collection (Day +1 sau closure)

**Trigger:** Project closure confirmed

1.1. Project AI thu thập:
   - Original project plan vs actual timeline
   - All QA reports và scores
   - Change request log
   - Budget actual vs planned
   - Risk register (final state)

1.2. CS AI thu thập:
   - CSAT scores cho project
   - Client feedback (verbal + written)
   - Support tickets liên quan

1.3. QA AI thu thập:
   - Quality scores trend
   - Defect log
   - Defect escape rate

1.4. Lưu tất cả tại `project-evaluation/input/`

### Bước 2: KPI Analysis (Day +2)

2.1. Project AI tính toán KPI actual vs target:

| KPI | Target | Actual | Status |
|-----|--------|--------|--------|
| On-time Delivery | >= 95% | ___% | [Pass/Fail] |
| Quality Score | >= 90% | ___% | [Pass/Fail] |
| CSAT | >= 4.5/5 | ___/5 | [Pass/Fail] |
| Budget Variance | < 10% | ___% | [Pass/Fail] |
| Scope Change Rate | < 20% | ___% | [Pass/Fail] |
| Defect Escape Rate | < 5% | ___% | [Pass/Fail] |

2.2. Phân tích trend (so với projects trước)

### Bước 3: Retrospective Report (Day +3)

3.1. Project AI tạo retrospective report:

```markdown
# Project Retrospective: [Project Name]
**Period:** ___ to ___
**Retrospective Date:** ___

## Executive Summary
[2-3 câu tóm tắt]

## KPI Performance
| KPI | Target | Actual | Delta |
|-----|--------|--------|-------|

## What Went Well ✅
1. ___
2. ___

## What Could Be Improved ⚠️
1. ___
2. ___

## What Went Wrong ❌
1. ___
2. ___

## Root Cause Analysis (cho items cần improve)
| Issue | Root Cause | Proposed Fix |
|-------|-----------|-------------|

## Lessons Learned
1. ___
2. ___

## Action Items
| # | Action | Owner | Due Date | Status |
|---|--------|-------|----------|--------|

## Process Improvements Proposed
1. SOP change: ___ → Rationale: ___
2. Template update: ___ → Rationale: ___
```

3.2. Lưu tại `project-evaluation/processing/ai-draft/`

### Bước 4: Human Owner Review (Day +4-5)

4.1. Human Owner review retrospective:
   - Validate analysis
   - Add human perspective
   - Discuss với team (nếu cần)

4.2. Approve hoặc request revision

4.3. Final version → `project-evaluation/output/`

### Bước 5: Improvement Implementation

5.1. Action items assignment:
   - SOP updates → Assigned AI Worker
   - Template updates → Assigned AI Worker
   - Process changes → Human Owner approve

5.2. Track implementation:
   - Weekly check trên action items
   - Close khi hoàn tất
   - Verify improvement trong project tiếp theo

5.3. Update lessons learned database

### Bước 6: Archive

6.1. Archive tất cả project evaluation docs
6.2. Update company-wide improvement backlog
6.3. Feed insights vào AI Workers training data

## 6. Template & Checklist

### Retrospective Meeting Agenda

```
1. Review KPI Performance (10 min)
2. What Went Well — Celebrate wins (10 min)
3. What Could Be Improved — Constructive feedback (15 min)
4. Root Cause Analysis — Dig deeper (15 min)
5. Action Items — Concrete improvements (10 min)
Total: 60 min
```

### Evaluation Checklist

- [ ] Tất cả project data đã thu thập
- [ ] KPI actual vs target đã tính toán
- [ ] Trend analysis hoàn thành
- [ ] Retrospective report đã tạo
- [ ] Human Owner đã review
- [ ] Action items đã assign
- [ ] Lessons learned đã record
- [ ] SOP updates proposed (nếu cần)
- [ ] Archive completed

## 7. KPIs & Metrics

| KPI | Mục tiêu | Tần suất | Owner |
|-----|----------|----------|-------|
| Retrospective Completion Rate | 100% | Per project | Project AI |
| Time to Retrospective | < 5 days post-closure | Per project | Project AI |
| Action Item Completion Rate | >= 80% | Monthly | Project AI |
| Improvement Implementation Rate | >= 60% | Quarterly | Human Owner |

## 8. AI Integration Points

| Bước | AI Worker | Task | Automation |
|------|-----------|------|-----------|
| Data collection | Project AI | Auto-gather from all sources | 95% |
| KPI calculation | Project AI | Auto-calculate | 100% |
| Trend analysis | Project AI | Auto-analyze | 85% |
| Retrospective draft | Project AI | Generate report | 80% |
| CSAT aggregation | CS AI | Auto-collect | 100% |
| Quality metrics | QA AI | Auto-aggregate | 100% |

## 9. Upstream/Downstream SOPs

### Upstream:
- **SOP-DEL-001** (Project Management) — Project closure data
- **SOP-DEL-002** (Quality Assurance) — QA reports, quality metrics
- **SOP-DEL-003** (Customer Support) — CSAT, feedback
- **SOP-DEL-005** (Change Management) — Change log
- **SOP-DEL-007** (Complaint Handling) — Complaint data

### Downstream:
- **All SOPs** — Improvement updates
- **AI Worker Profiles** — Training data updates
- **Charter** — Annual review input

## 10. Version History

| Version | Ngày | Thay đổi | Author |
|---------|------|----------|--------|
| 1.0 | 2026-05-07 | Tạo mới | Project AI |

---

**Approved by:** Shimazu — Human Owner
**Ngày approve:** 2026-05-07

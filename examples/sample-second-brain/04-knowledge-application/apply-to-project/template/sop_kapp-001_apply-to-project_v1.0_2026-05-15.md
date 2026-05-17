# SOP: Apply Knowledge to Project

**Mã SOP:** SOP-KAPP-001
**Phiên bản:** 1.0
**Ngày tạo:** 2026-05-15
**Chủ sở hữu:** Knowledge Application Department
**Department:** [Knowledge Application](../../README.md)

---

## 0. IPO Analysis

| Component | Detail |
|-----------|--------|
| **INPUT** | Active project + Vault (gems, syntheses, atomic notes relevant to project) |
| **CONTROL** | Project context, success criteria, time constraints |
| **OUTPUT** | Knowledge-informed project decisions, actions, or deliverables |
| **MECHANISM** | Vault search, Claude AI (knowledge retrieval + synthesis), Project brief template |

### Upstream / Downstream
- **Input từ:** [SOP-KC-002 Tag and Link](../../../03-knowledge-curation/tag-and-link/template/sop_kc-002_tag-and-link_v1.0_2026-05-15.md) — vault sẵn sàng
- **Output tới:** [SOP-KAPP-002 Create Deliverable](../../create-deliverable/template/sop_kapp-002_create-deliverable_v1.0_2026-05-15.md) và [SOP-PD-002 Track Progress](../../../05-personal-development/track-progress/template/sop_pd-002_track-progress_v1.0_2026-05-15.md)

---

## 1. Tổng Quan

Khi bắt đầu bất kỳ dự án nào, chủ động khai thác vault để tìm relevant knowledge và áp dụng vào quyết định, thiết kế, và execution — thay vì bắt đầu từ đầu mỗi lần.

---

## 2. Quy Trình

### 2.1 Knowledge Sprint (Trước khi bắt đầu project)

| # | Hành động | Chi tiết | Output |
|---|----------|----------|--------|
| 1 | Define project knowledge needs | Câu hỏi: "Để thành công, tôi cần biết gì?" | Knowledge requirements |
| 2 | Search vault by tags + keywords | DEVONthink search: project domain + related topics | Relevant notes list |
| 3 | Identify applicable gems | Filter: gems có application trong project domain | Applicable gems |
| 4 | Create Project Knowledge Brief | Compile top 5-10 insights relevant to project | Knowledge brief doc |
| 5 | Identify knowledge gaps | "Còn thiếu gì?" → trigger SOP-KA-001 to capture | Gap list |

### 2.2 During Project Execution

| # | Hành động | Chi tiết | Output |
|---|----------|----------|--------|
| 1 | Reference vault before key decisions | "Có gem nào relevant không?" | Decision informed |
| 2 | Capture new insights from project | Real-world application → new knowledge → SOP-KA-001 | New captures |
| 3 | Update project note with knowledge used | Track which gems/notes contributed | Attribution log |
| 4 | Flag lessons learned | Tag `#lesson-learned` for post-project review | Flagged notes |

> **[AI AUGMENT]** Claude Prompt: "Given this project brief: [brief], search through these vault notes [paste top 20] and identify the 5 most relevant insights and how to apply each."

---

## 3. Project Knowledge Brief Template

```markdown
# Knowledge Brief: [Project Name]

**Date:** [YYYY-MM-DD]
**Project deadline:** [date]

## Project Context
[1 paragraph: what, why, success criteria]

## Key Knowledge Needed
1. [Topic/question 1]
2. [Topic/question 2]
3. [Topic/question 3]

## Relevant Gems Applied
| Gem | How Applied | Expected Impact |
|-----|------------|----------------|
| [[gem-1]] | [Application] | [Expected outcome] |
| [[gem-2]] | [Application] | [Expected outcome] |

## Knowledge Gaps (Need to Capture)
- [Gap 1] → Trigger SOP-KA-001
- [Gap 2] → Trigger SOP-KA-001

## Lessons Learned (Post-project)
- [Lesson 1]
- [Lesson 2]
```

---

## 4. Checklist
- [ ] Knowledge sprint completed before project start?
- [ ] ≥3 relevant gems identified?
- [ ] Knowledge gaps → new capture tasks created?
- [ ] Project knowledge brief created?

---

## 5. Lịch Sử Thay Đổi

| Phiên bản | Ngày | Thay đổi |
|-----------|------|----------|
| 1.0 | 2026-05-15 | Tạo SOP ban đầu |

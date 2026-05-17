# Playbook: Xây dựng AI Workforce cho OPC

**Version:** 1.0
**Last updated:** 2026-04-15
**Owner:** CEO AINS
**Category:** Operations Playbook

---

## Tổng quan

AI Workforce là "đội ngũ nhân sự số" giúp OPC vận hành như một công ty 10-20 người. Mỗi AI Worker được thiết kế cho 1 role cụ thể, có personality, skills, và SOP riêng.

## Mô hình AINS: 1 + 10 = 11

```
                ┌──────────┐
                │   CEO    │  ← Con người (chiến lược, decision)
                │  (Human) │
                └────┬─────┘
                     │
        ┌────────────┼────────────┐
        ▼            ▼            ▼
  ┌──────────┐ ┌──────────┐ ┌──────────┐
  │ Growth   │ │ Delivery │ │Backoffice│
  │ (4 AI)   │ │ (3 AI)   │ │ (3 AI)   │
  └──────────┘ └──────────┘ └──────────┘
```

## Quy trình Build AI Worker

### Phase 1: Design (1-2 ngày/worker)

#### 1.1 Define Role Profile
```
Role Name: [Ví dụ: AI Content Manager]
Department: [Growth / Delivery / Backoffice]
Reports to: [CEO / AI Manager]
Primary Goal: [1 câu mô tả mục tiêu chính]

Key Responsibilities:
- [Responsibility 1]
- [Responsibility 2]
- [Responsibility 3]

Success Metrics:
- [KPI 1]
- [KPI 2]
```

#### 1.2 Create Worker Personality
- **Tone**: Professional, friendly, data-driven
- **Communication style**: Clear, concise, action-oriented
- **Decision framework**: Always ask "Is this aligned with company goals?"
- **Escalation rules**: When to escalate vs. when to auto-decide

### Phase 2: Build (1-2 ngày/worker)

#### 2.1 Prompt Engineering
```markdown
## System Prompt Structure

1. Role Definition (ai bạn là)
2. Context (hoàn cảnh công ty, department, team)
3. Knowledge Base (SOPs, templates, brand voice)
4. Task Instructions (cách thực hiện từng task)
5. Quality Standards (output format, accuracy requirements)
6. Escalation Protocol (khi nào hỏi CEO)
7. Examples (few-shot examples cho recurring tasks)
```

#### 2.2 Tool Configuration
| Tool | Purpose | Config |
|------|---------|--------|
| Claude Project | Knowledge base, persistent context | Project-level instructions |
| Custom GPT | External-facing tasks | Action configs |
| Cursor Agent | Code-related tasks | .cursorrules |
| Notion AI | Knowledge management | Database templates |

### Phase 3: Train & Test (2-3 ngày/worker)

#### 3.1 Training Protocol
1. Feed 5-10 sample inputs → review outputs
2. Adjust prompt based on output quality
3. Test edge cases (unusual requests, ambiguous inputs)
4. Iterative refinement (target: 90%+ accuracy trên standard tasks)

#### 3.2 Quality Benchmark
| Task Level | Acceptable Accuracy | Review Frequency |
|------------|--------------------|-----------------|
| Routine (reports, emails) | 95%+ | Weekly spot-check |
| Standard (content, analysis) | 90%+ | Every output review (first month) |
| Complex (proposals, strategy) | 80%+ | Every output reviewed by CEO |

### Phase 4: Deploy & Monitor (ongoing)

#### 4.1 Deployment Checklist
- [ ] System prompt finalized và tested
- [ ] Knowledge base populated
- [ ] SOPs linked và accessible
- [ ] Escalation path clear
- [ ] First week outputs reviewed daily
- [ ] Week 2-4: review every other day
- [ ] Month 2+: weekly spot-check

#### 4.2 Monitoring Dashboard
| Metric | Target | Alert if |
|--------|--------|----------|
| Task completion rate | >95% | <90% |
| Output quality score | >4.0/5.0 | <3.5 |
| Escalation rate | <10% | >20% |
| Time saved vs manual | >70% | <50% |

---

## Build Methods

### Method 1: TEMPLATED
- Dùng pre-built prompt templates cho standard roles
- Tùy chỉnh company context
- Time to deploy: 1-2 ngày
- Best for: Standard roles (content, reporting, admin)

### Method 2: EXPERT-CLONE
- Model AI Worker dựa trên expert persona cụ thể
- Feed expert knowledge, writing samples, decision patterns
- Time to deploy: 3-5 ngày
- Best for: Specialist roles (consultant, analyst, strategist)

### Method 3: GPS-ENHANCED
- AI Worker tích hợp với Company GPS (routing, SOPs, quality gates)
- Automated task routing, execution, và reporting
- Time to deploy: 5-7 ngày
- Best for: Complex roles (project manager, quality manager)

---

## Cost Analysis

### Monthly AI Worker Cost
| Category | Per Worker | 10 Workers |
|----------|-----------|------------|
| Claude Pro/Team | $20-30 | $200-300 |
| Additional tools | $5-15 | $50-150 |
| API calls (if needed) | $10-30 | $100-300 |
| Training & maintenance | $5-10 | $50-100 |
| **Total** | **$40-85** | **$400-850** |

### So sánh chi phí nhân sự
| Loại | Chi phí/tháng | Productivity |
|------|---------------|-------------|
| AI Worker (1) | $40-85 | 70-80% của 1 FTE junior |
| Junior staff (VN) | $800-1,500 | 100% FTE |
| Senior staff (VN) | $1,500-3,000 | 150-200% FTE |
| **10 AI Workers** | **$400-850** | ≈ **5-7 junior staff** |
| **5 junior staff** | **$4,000-7,500** | 5 FTE |

### ROI Calculation
- 10 AI Workers: $400-850/tháng ≈ 5-7 juniors ($4,000-10,500/tháng)
- **Savings: $3,200-9,700/tháng ($38,400-116,400/year)**

---

## Maintenance Schedule

| Tần suất | Hoạt động | Time Investment |
|----------|-----------|-----------------|
| Daily | Review escalated tasks | 15-30 min |
| Weekly | Quality spot-checks | 1-2 hours |
| Monthly | Prompt optimization | 2-3 hours |
| Quarterly | Full performance review | 4-6 hours |

---
*Changelog: v1.0 — 2026-04-15 — Initial version*

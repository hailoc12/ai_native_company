# SOP-BACK-005: Quan ly AI Workforce

> Version: 1.0 | Ngay tao: 2026-05-07 | Owner: HR AI

---

## 1. Muc dich

Quan ly toan bo AI workforce cua AINS — bao gom roster management, capacity planning, va workforce optimization — dam bao 10 AI workers van hanh o hieu suat toi uu.

## 2. Pham vi

- Ap dung cho: Toan bo AI workers (10 workers across 3 departments)
- Ap dung tu: Hang tuan (review) va hang ngay (monitoring)
- HR AI phu trach, CEO approve thay doi quan trong

## 3. Vai tro (RACI)

| Vai tro | nguoi/AI | Trach nhiem |
|---------|----------|-------------|
| **R** — Responsible | HR AI | Quan ly roster, capacity |
| **A** — Accountable | CEO | Phe duyet thay doi |
| **C** — Consulted | All AI workers | Performance data |
| **I** — Informed | CEO, All department leads | Workforce status |

## 4. IPO Analysis

### Input
- AI worker profiles (tu `ai-workers/`)
- Task assignment data (tu tat ca departments)
- Performance data (SOP-BACK-006)
- Capacity requirements (tu CEO/strategy)

### Process
1. Maintain AI workforce roster
2. Monitor workload per worker
3. Identify bottlenecks/overcapacity
4. Propose optimization
5. Execute approved changes

### Output
- AI Workforce Roster (trong `output/ai-workforce-roster_YYYY-MM.md`)
- Capacity Plan (trong `output/ai-worker_capacity-plan_YYYY-QN.md`)
- Optimization recommendations

## 5. Quy trinh chi tiet

### 5.1 AI Workforce Roster

AINS co 10 AI workers:

| ID | Name | Department | Role | Model | Status |
|----|------|-----------|------|-------|--------|
| AI-SLS-001 | Sales AI | Sales (01) | Sales Manager | Claude Opus 4 | Active |
| AI-MKT-001 | Marketing AI | Marketing (02) | Marketing Manager | Claude Sonnet 4 | Active |
| AI-OPS-001 | Delivery AI | Delivery (04) | Project Manager | Claude Opus 4 | Active |
| AI-OPS-002 | Tech AI | Delivery (04) | Technical Lead | Claude Sonnet 4 | Active |
| AI-FIN-001 | Finance AI | Backoffice (03) | CFO | Claude Opus 4 | Active |
| AI-HR-001 | HR AI | Backoffice (03) | HR Manager | Claude Sonnet 4 | Active |
| AI-ADM-001 | Admin AI | Backoffice (03) | Office Manager | Claude Sonnet 4 | Active |
| AI-STR-001 | Strategy AI | CEO Office (05) | Strategy Advisor | Claude Opus 4 | Active |
| AI-CXO-001 | CX AI | CEO Office (05) | CX Manager | Claude Sonnet 4 | Active |
| AI-QA-001 | QA AI | Delivery (04) | Quality Assurance | Claude Haiku | Active |

### 5.2 Capacity Monitoring
- **Weekly:** Review workload per worker
- **Metrics:** Tasks completed, avg response time, error rate, uptime
- **Target utilization:** 70-85% (du nang luong cho peak)

### 5.3 Capacity Planning
- **Quarterly:** Lap capacity plan cho quy tiep theo
- **Factors:** Projected revenue, new clients, seasonal patterns
- **Scenarios:** Base case, optimistic, pessimistic

### 5.4 Onboarding AI Worker moi
| Buoc | Action | Owner |
|------|--------|-------|
| 1 | CEO approve nhu cau | CEO |
| 2 | Define role & scope | HR AI + CEO |
| 3 | Create profile | HR AI |
| 4 | Configure & test | HR AI |
| 5 | Assign SOPs | HR AI + CEO |
| 6 | Go live | HR AI |

### 5.5 Workforce Optimization
- Monthly: Review workload distribution
- Identify: Overloaded vs underloaded workers
- Propose: Task redistribution, model upgrade/downgrade
- Execute: After CEO approval

## 6. Template & Checklist

### Weekly Workforce Checklist
- [ ] Update roster (neu co thay doi)
- [ ] Check workload per worker
- [ ] Identify bottlenecks
- [ ] Check uptime metrics
- [ ] Report to CEO

### Capacity Plan Template
```
| Worker ID | Current Load | Projected Load | Capacity | Gap | Action |
```

## 7. KPIs & Metrics

| KPI | Target | Do luong |
|-----|--------|----------|
| Workforce uptime | 99.5% | Weekly |
| Capacity utilization | 70-85% | Weekly |
| Roster accuracy | 100% | Monthly |
| Optimization implemented | >=1/quarter | Quarterly |

## 8. AI Integration Points

- **HR AI** tu dong monitor workload tu task assignment
- **HR AI** tu dong flag khi workload >85% hoac <70%
- **CEO** review tuan (1h) va approve thay doi quan trong
- **All AI workers** bao cao status cho HR AI

## 9. Upstream/Downstream SOPs

### Upstream
- CEO strategy decisions (workforce planning)
- SOP-BACK-006: Danh gia hieu suat (performance data)

### Downstream
- SOP-BACK-006: Danh gia hieu suat (workforce data)
- Tat ca department SOPs (workforce assignments)

## 10. Version History

| Version | Ngay | Thay doi | Author |
|---------|------|----------|--------|
| 1.0 | 2026-05-07 | Tao moi | HR AI |

---
*SOP-BACK-005 v1.0 — AINS Backoffice*

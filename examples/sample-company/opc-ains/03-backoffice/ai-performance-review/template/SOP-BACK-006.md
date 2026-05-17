# SOP-BACK-006: Danh gia hieu suat AI

> Version: 1.0 | Ngay tao: 2026-05-07 | Owner: HR AI

---

## 1. Muc dich

Danh gia hieu suat hang thang cua tung AI worker, bao gom quality of output, efficiency, cost-effectiveness va reliability, de dam bao workforce van hanh o muc toi uu.

## 2. Pham vi

- Ap dung cho: Tat ca 10 AI workers
- Tan suat: Hang thang (chinh thuc), hang tuan (quick check)
- Deadline: Ngay 5 thang sau

## 3. Vai tro (RACI)

| Vai tro | nguoi/AI | Trach nhiem |
|---------|----------|-------------|
| **R** — Responsible | HR AI | Thu thap data, danh gia, bao cao |
| **A** — Accountable | CEO | Review va phe duyet |
| **C** — Consulted | Department AI leads | Performance data |
| **I** — Informed | CEO, All AI workers | Ket qua |

## 4. IPO Analysis

### Input
- Task completion data (tu tat ca SOPs)
- Error/incident logs
- Uptime data
- Cost data (API usage, resource usage)
- CEO feedback
- Customer feedback (neu co)

### Process
1. Thu thap performance data tu moi AI worker
2. Tinh diem theo rubric
3. Phan tich xu huong
4. Compare voi thang truoc
5. De xuat action items
6. Tao bao cao review

### Output
- AI Performance Review (trong `output/ai-performance-review_*.md`)
- Action items cho tung worker
- Recommendations cho CEO

## 5. Quy trinh chi tiet

### 5.1 Rubric danh gia (100 diem)

| Category | Weight | Metrics |
|----------|--------|---------|
| Quality | 30% | Accuracy, completeness, relevance |
| Efficiency | 25% | Speed, resource usage, automation rate |
| Reliability | 25% | Uptime, error rate, consistency |
| Cost-effectiveness | 20% | API cost per task, ROI |

### 5.2 Scoring Scale
| Score | Rating | Action |
|-------|--------|--------|
| 90-100 | Excellent | Maintain, consider expansion |
| 80-89 | Good | Minor optimizations |
| 70-79 | Satisfactory | Identify improvements |
| 60-69 | Needs Improvement | Action plan required |
| <60 | Critical | Escalate to CEO immediately |

### 5.3 Moi worker — KPIs cu the

**Finance AI:**
- Financial accuracy >= 99%
- Invoice processing < 24h
- Report on-time rate 100%

**HR AI:**
- Workforce uptime >= 99.5%
- Review completion 100%
- Issue resolution < 4h

**Admin AI:**
- Backup success rate 100%
- Document accuracy >= 99%
- Contract tracking 100%

**Sales AI:**
- Lead response time < 1h
- Conversion rate tracking
- Pipeline accuracy

**Marketing AI:**
- Content output on schedule
- Engagement metrics
- Campaign ROI

**Delivery AI:**
- Project on-time rate
- Client satisfaction
- Quality score

### 5.4 Quy trinh review hang thang
| Buoc | Ngay | Action |
|------|------|--------|
| 1 | Ngay 1 | Lock data thang truoc |
| 2 | Ngay 1-2 | Thu thap performance data |
| 3 | Ngay 2-3 | Tinh diem va phan tich |
| 4 | Ngay 3-4 | Viet review report |
| 5 | Ngay 5 | Gui CEO |
| 6 | Ngay 5-7 | CEO review & feedback |

## 6. Template & Checklist

### Performance Review Template (per worker)
```
## [Worker Name] — [Month] Performance Review

### Overall Score: [X]/100 — [Rating]

### Category Breakdown
| Category | Score | Weight | Weighted |
|----------|-------|--------|----------|
| Quality | /30 | 30% | |
| Efficiency | /25 | 25% | |
| Reliability | /25 | 25% | |
| Cost-effectiveness | /20 | 20% | |

### Highlights
- [Key achievement 1]
- [Key achievement 2]

### Areas for Improvement
- [Issue 1]
- [Issue 2]

### Action Items
| Action | Owner | Deadline |
|--------|-------|----------|

### MoM Comparison
| Metric | This Month | Last Month | Change |
|--------|------------|------------|--------|
```

## 7. KPIs & Metrics

| KPI | Target | Do luong |
|-----|--------|----------|
| Review completion | 100% on-time | Monthly |
| Average workforce score | >= 80 | Monthly |
| Action item completion | >= 90% | Monthly |

## 8. AI Integration Points

- **HR AI** tu dong thu thap data tu tat ca workers
- **HR AI** tu dong tinh diem theo rubric
- **HR AI** tao report voi insights va recommendations
- **CEO** review va approve action items
- **Workers** implement action items

## 9. Upstream/Downstream SOPs

### Upstream
- SOP-BACK-005: Quan ly AI workforce (roster data)
- Tat ca operational SOPs (performance data)

### Downstream
- SOP-BACK-005: Quan ly AI workforce (optimization decisions)
- CEO strategic decisions (workforce changes)

## 10. Version History

| Version | Ngay | Thay doi | Author |
|---------|------|----------|--------|
| 1.0 | 2026-05-07 | Tao moi | HR AI |

---
*SOP-BACK-006 v1.0 — AINS Backoffice*

# SOP-BACK-011: Mua sam & Danh gia nha cung cap

> Version: 1.0 | Ngay tao: 2026-05-07 | Owner: Admin AI

---

## 1. Muc dich

Quy trinh danh gia, lua chon va quan ly cac cong cu va nha cung cap cho AINS, dam bao tool stack toi uu ve chi phi (target ~$450/thang), phu hop voi nhu cau van hanh, va duoc review dinh ky.

## 2. Pham vi

- Ap dung cho: Tat ca cong cu, subscription, va dich vu mua sam cho AINS
- Ap dung tu: Luc co nhu cau cong cu moi hoac den han review contract
- Categories: AI Tools, Productivity, Infrastructure, Marketing, Administrative

## 3. Vai tro (RACI)

| Vai tro | Nguoi/AI | Trach nhiem |
|---------|----------|-------------|
| **R** — Responsible | Admin AI | Nghien cuu, danh gia, de xuat |
| **A** — Accountable | CEO | Phe duyet mua sam, approve budget |
| **C** — Consulted | All AI workers | Input nhu cau, feedback cong cu |
| **I** — Informed | Finance AI | Chi phi, budget impact |

## 4. IPO Analysis

### Input
- Nhu cau cong cu tu cac department
- Tool stack hien tai va chi phi
- Market research (alternatives, pricing)
- Feedback tu users (AI workers)
- Budget constraint (SOP-BACK-002)

### Process
1. Nhan yeu cau mua sam
2. Nghien cuu va danh gia options
3. Compare features, pricing, ROI
4. De xuat len CEO
5. CEO approve → Implement
6. Setup va onboarding
7. Review performance dinh ky

### Output
- Tool stack overview (trong `output/tool-stack-overview_YYYY.md`)
- Vendor evaluation report (trong `output/vendor-evaluation_*.md`)
- Procurement request form
- Cost-benefit analysis

## 5. Quy trinh chi tiet

### 5.1 Tool Evaluation Framework

| TieU chi | Trong so | Mo ta |
|----------|----------|-------|
| Functional fit | 30% | Dam bao 80%+ features can thiet |
| Cost-effectiveness | 25% | Total cost vs. value delivered |
| Integration ease | 15% | API, webhook, data portability |
| Reliability | 15% | Uptime SLA, support quality |
| Security | 10% | Data protection, compliance |
| Scalability | 5% | Growth path, volume pricing |

**Pass threshold:** Tong diem >= 70/100

### 5.2 Vendor Selection Process

```
Buoc 1: Define requirements (Admin AI + Requesting department)
Buoc 2: Shortlist 2-3 vendors
Buoc 3: Trial/Demo (7-14 ngay)
Buoc 4: Score theo evaluation framework
Buoc 5: Negotiate pricing
Buoc 6: De xuat len CEO (voi cost-benefit analysis)
Buoc 7: CEO approve
Buoc 8: Contract signing (SOP-BACK-012)
Buoc 9: Setup & onboarding
Buoc 10: 30-day review
```

### 5.3 Approval Thresholds

| So tien/thang | Approver | Process |
|---------------|----------|---------|
| < $20 | Admin AI (tu dong) | Log va bao cao |
| $20 - $100 | Admin AI + log | Weekly report |
| $100 - $500 | CEO ( nhanh) | <24h |
| > $500 | CEO (review chi tiet) | <48h + ROI analysis |

### 5.4 Contract Negotiation Checklist
- [ ] Pricing: Monthly vs. Annual discount
- [ ] Terms: Minimum commitment, cancellation policy
- [ ] SLA: Uptime guarantee, support response time
- [ ] Data: Data ownership, export policy, portability
- [ ] Security: Encryption, compliance certifications
- [ ] Payment: Payment methods, invoicing frequency

### 5.5 Performance Review Schedule

| Tan suat | Hoat dong |
|----------|-----------|
| Monthly | Usage tracking, cost monitoring |
| Quarterly | Performance review vs. KPIs |
| Annually | Full vendor audit, renegotiate |

### 5.6 Renewal Process
- **60 ngay truoc expiry:** Admin AI review performance
- **45 ngay truoc expiry:** Compare voi alternatives
- **30 ngay truoc expiry:** De xuat renew hoac switch
- **14 ngay truoc expiry:** CEO approve decision
- **7 ngay truoc expiry:** Execute (renew hoac migrate)

## 6. Template & Checklist

### Procurement Request Template
```
Tool/Vendor: [Ten]
Requesting Department: [Department]
Estimated Monthly Cost: [$X]
Annual Cost: [$X x 12]
Purpose: [Mo ta]
Alternatives Considered: [Danh sach]
Expected ROI: [Mo ta]
Trial Period: [Ngay]
```

### Vendor Evaluation Scorecard
```
| Tieu chi | Trong so | Vendor A | Vendor B | Vendor C |
|----------|----------|----------|----------|----------|
| Functional fit | 30% | /10 | /10 | /10 |
| Cost-effectiveness | 25% | /10 | /10 | /10 |
| Integration ease | 15% | /10 | /10 | /10 |
| Reliability | 15% | /10 | /10 | /10 |
| Security | 10% | /10 | /10 | /10 |
| Scalability | 5% | /10 | /10 | /10 |
| TOTAL | 100% | /100 | /100 | /100 |
```

## 7. KPIs & Metrics

| KPI | Target | Do luong |
|-----|--------|----------|
| Tool stack cost | <=$450/thang | Monthly |
| Tool utilization rate | >=80% | Monthly |
| Vendor satisfaction | >=7/10 | Quarterly |
| Procurement cycle time | <14 ngay | Per procurement |

## 8. AI Integration Points

- **Admin AI** tu dong track tool usage va costs
- **Admin AI** tu dong compare pricing alternatives
- **Admin AI** tu dong generate vendor evaluation scorecard
- **CEO** review va approve procurement decisions
- **Finance AI** track budget impact va cost trends
- **All AI workers** cung cap feedback ve tools

## 9. Upstream/Downstream SOPs

### Upstream
- SOP-BACK-002: Quan ly chi phi & ngan sach (budget constraints)
- Department SOPs (tool requirements)

### Downstream
- SOP-BACK-012: Quan ly hop dong (contract signing)
- SOP-BACK-002: Quan ly chi phi (expense tracking)
- SOP-BACK-010: Backup & DR (tool backup requirements)

## 10. Version History

| Version | Ngay | Thay doi | Author |
|---------|------|----------|--------|
| 1.0 | 2026-05-07 | Tao moi | Admin AI |

---
*SOP-BACK-011 v1.0 — AINS Backoffice*

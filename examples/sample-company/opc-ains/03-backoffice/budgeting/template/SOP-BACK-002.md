# SOP-BACK-002: Quan ly chi phi & Ngan sach

> Version: 1.0 | Ngay tao: 2026-05-07 | Owner: Finance AI

---

## 1. Muc dich

Quy trinh theo doi, phan loai va quan ly moi khoan chi phi cua AINS, dam bao chi phi nam trong ngan sach da duyet va toi uu hoa chi phi -20% YoY.

## 2. Pham vi

- Ap dung cho: Tat ca chi phi van hanh (OpEx) va chi phi dau tu (CapEx)
- Ap dung tu: Luc phat sinh chi phi
- Categories: Tools/Software, Infrastructure, Outsourcing, Administrative, Marketing

## 3. Vai tro (RACI)

| Vai tro | nguoi/AI | Trach nhiem |
|---------|----------|-------------|
| **R** — Responsible | Finance AI | Theo doi, phan loai, bao cao |
| **A** — Accountable | CEO | Phe duyet ngan sach |
| **C** — Consulted | Admin AI | Thong tin nha cung cap |
| **I** — Informed | CEO, HR AI | Bao cao |

## 4. IPO Analysis

### Input
- Hoa don tu nha cung cap
- Receipt tu mua sam
- Subscription invoices (Claude, GPT, tools)
- Salary/payment records
| Ngan sach da duyet tu CEO

### Process
1. Nhan va xac minh hoa don/receipt
2. Phan loai chi phi theo category
3. Kiem tra voi ngan sach
4. Ghi nhan vao expense tracker
5. Tao variance report

### Output
- Expense tracking log (trong `output/expense-tracking_YYYY-MM.md`)
- Budget variance report
- Alerts neu vuot ngan sach

## 5. Quy trinh chi tiet

### 5.1 Buoc 1: Nhan va xac minh
- **Trigger:** Nhan hoa don/receipt tu email hoac manual entry
- **Checklist:**
  - [ ] Hoa don hop le (thong tin day du)?
  - [ ] So tien chinh xac?
  - [ ] Da duoc phe duyet truoc do (neu >5M VND)?

### 5.2 Buoc 2: Phan loai chi phi
| Category | Ma | Vi du | Budget % |
|----------|-----|-------|----------|
| Tools & Software | EXP-TOOL | Claude, GPT, Figma, Notion | 35% |
| Infrastructure | EXP-INFRA | Cloud, hosting, domain | 15% |
| Outsourcing | EXP-OUT | Freelancer, design, content | 25% |
| Administrative | EXP-ADMIN | Van phong, dich vu, bank fees | 15% |
| Marketing | EXP-MKT | Ads, events, content | 10% |

### 5.3 Buoc 3: Kiem tra ngan sach
```
Budget Variance = (Chi phi thuc te - Ngan sach) / Ngan sach x 100%
```
- Variance <5%: OK, tiep tuc
- Variance 5-10%: Canh bao, review
- Variance >10%: STOP, bao CEO

### 5.4 Buoc 4: Ghi nhan va bao cao
- Cap nhat expense tracker hang ngay
- Weekly budget review voi CEO
- Monthly budget summary trong bao cao tai chinh

### 5.5 Quy trinh phe duyet chi phi
| So tien | Approver | SLA |
|---------|----------|-----|
| <2M VND | Finance AI (tu dong) | Ngay |
| 2-5M VND | Finance AI (tu dong) + log | Ngay |
| 5-20M VND | CEO (review nhanh) | <24h |
| >20M VND | CEO (review chi tiet) | <48h |

## 6. Template & Checklist

### Expense Entry Template
```
| Ngay | Ma NCC | Ten NCC | Category | Mo ta | So tien (VND) | Thue | Net | Phe duyet | Trang thai |
```

### Monthly Budget Review Checklist
- [ ] Tong hop chi phi thang
- [ ] So sanh voi ngan sach
- [ ] Phan tich variance
- [ ] De xuat dieu chinh (neu can)
- [ ] Forecast cho thang sau

## 7. KPIs & Metrics

| KPI | Target | Do luong |
|-----|--------|----------|
| Budget accuracy | <5% variance | Monthly |
| Cost optimization | -20% YoY | Quarterly |
| Approval SLA | 100% within SLA | Per transaction |

## 8. AI Integration Points

- **Finance AI** tu dong nhan dien hoa don tu email
- **Finance AI** tu dong phan loai dua tren rules va historical data
- **Finance AI** tu dong check budget va alert
- **CEO** review weekly (2h/tuan)
- **Admin AI** cung cap thong tin vendor khi can

## 9. Upstream/Downstream SOPs

### Upstream
- SOP-BACK-001: Ke toan & doanh thu (revenue data cho budget planning)
- SOP-BACK-011: Mua sam (thong tin chi phi vendor)

### Downstream
- SOP-BACK-004: Bao cao tai chinh (chi phi data)
- SOP-BACK-003: Xuat hoa don (AP cho vendors)

## 10. Version History

| Version | Ngay | Thay doi | Author |
|---------|------|----------|--------|
| 1.0 | 2026-05-07 | Tao moi | Finance AI |

---
*SOP-BACK-002 v1.0 — AINS Backoffice*

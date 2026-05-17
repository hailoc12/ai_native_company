# Backoffice Department Charter

> AI Native Solutions (AINS) — One Person Company (OPC)
> Version: 1.0 | Ngay tao: 2026-05-07 | Owner: CEO

---

## 1. Su menh (Mission)

Dam bao hoat dong tai chinh, nhan su (AI), hanh chinh va phap ly cua AINS van hanh chinh xac, kip thoi va tuan thu day du quy dinh, giup CEO tap trung vao tang truong kinh doanh.

## 2. Tam nhom (Vision)

Xay dung bo may backoffice tu dong hoa 95%+ voi AI workforce, trong do CEO chi can review va approve — khong can thao tác thu cong.

## 3. Pham vi (Scope)

### 3.1 Finance
- Ke toan hang ngay: ghi nhan doanh thu, chi phi
- Ngan sach: lap ke hoach, theo doi, dieu chinh
- Hoa don & cong no: xuat hoa don, theo doi thu no
- Bao cao tai chinh: bao cao thang, quy, nam
- Thue & bao cao cho co quan thue

### 3.2 HR (AI Workforce)
- Quan ly danh sach AI workers
- Danh gia hieu suat hang thang
- Capacity planning
- Onboard/offboard AI workers

### 3.3 Admin
- Quan ly tai lieu va kho luu tru
- Mua sam cong cu, dich vu
- Quan ly hop dong voi khach hang va nha cung cap
- Backup & disaster recovery

### 3.4 Legal
- Tuan thu phap luat Viet Nam (OPC, thue, lao dong)
- Chinh sach bao mat thong tin
- Quan ly rui ro phap ly

## 4. Cau truc to chuc

```
                    CEO (Shimazu)
                         |
                   Backoffice Dept
                    /      |      \
             Finance AI   HR AI   Admin AI
                |           |         |
         [BACK-001..004] [BACK-005..006] [BACK-007..012]
```

### 4.1 Finance AI — CFO
- **Xu ly:** SOP-BACK-001, 002, 003, 004
- **Review by CEO:** 2h/tuan (financial review)
- **Escalation:** Giao dich >50M VND, bat thuong tai chinh

### 4.2 HR AI — HR Manager
- **Xu ly:** SOP-BACK-005, 006
- **Review by CEO:** 1h/tuan (approvals)
- **Escalation:** Thay doi AI worker quan trong, loi he thong

### 4.3 Admin AI — Office Manager
- **Xu ly:** SOP-BACK-007, 010, 011, 012
- **Review by CEO:** 1h/tuan (approvals + strategic)
- **Escalation:** Hop dong >100M VND, loi backup, data breach

## 5. Governance

### 5.1 Quy trinh pheduyet (Approval Matrix)

| Loai giao dich | Limit | Approver |
|----------------|-------|----------|
| Chi phi van hanh | <5M VND | Finance AI (tu dong) |
| Chi phi van hanh | 5-20M VND | CEO (review nhanh) |
| Chi phi dau tu | >20M VND | CEO (review chi tiet) |
| Hoa don xuat | Bat ky | Finance AI (tu dong) + CEO review |
| Hop dong moi | Bat ky | CEO (bat buoc) |
| Backup/Recovery | Bat ky | Admin AI (tu dong) |

### 5.2 Bao cao (Reporting)

| Bao cao | Tan suat | Owner | Nguoi nhan |
|---------|----------|-------|-----------|
| Weekly backoffice report | Tuan | Admin AI | CEO |
| Monthly financial report | Thang | Finance AI | CEO |
| AI performance review | Thang | HR AI | CEO |
| Quarterly budget review | Quy | Finance AI | CEO |

### 5.3 Meeting cadence

| Meeting | Tan suat | Thoi gian | Participants |
|---------|----------|-----------|-------------|
| Financial Review | Weekly | 2h | CEO + Finance AI |
| Approvals & Ops | Weekly | 1h | CEO + all AI |
| Strategy Review | Weekly | 1h | CEO + all AI |

## 6. Values & Principles

1. **Accuracy First** — Chinh xac la uu tien so mot trong tai chinh
2. **Compliance Always** — 100% tuan thu, khong exception
3. **Automate Everything** — Neu co the tu dong, thi tu dong
4. **Transparency** — Moi so lieu co the truy xuat va kiem chung
5. **Cost Consciousness** — Tiet kiem 20% chi phi moi nam

## 7. KPIs Department

| KPI | Target 2026 | Do luoc |
|-----|-------------|---------|
| Financial accuracy | 99%+ | % error-free transactions |
| Invoice processing time | <24h | Hours from request to invoice |
| Compliance score | 100% | Violations per quarter |
| Cost optimization | -20% YoY | OpEx vs previous year |
| Report timeliness | 100% | On-time delivery rate |
| AI uptime | 99.5% | System availability |

## 8. RACI Matrix

| Hoat dong | Finance AI | HR AI | Admin AI | CEO |
|-----------|-----------|-------|---------|-----|
| Ke toan hang ngay | **R** | - | - | I |
| Lap ngan sach | **R** | - | - | A |
| Xuat hoa don | **R** | - | - | I |
| Bao cao tai chinh | **R** | - | - | A |
| Quan ly AI workers | - | **R** | - | A |
| Danh gia hieu suat | - | **R** | - | A |
| Quan ly tai lieu | - | - | **R** | I |
| Backup & DR | - | - | **R** | I |
| Mua sam | C | - | **R** | A |
| Quan ly hop dong | C | - | **R** | A |
| Tuan thu phap luat | C | C | C | **A** |
| Bao mat | C | C | **R** | A |

*R = Responsible, A = Accountable, C = Consulted, I = Informed*

---

## Version History

| Version | Ngay | Thay doi | Author |
|---------|------|----------|--------|
| 1.0 | 2026-05-07 | Tao moi | CEO |

---
*AINS Backoffice Department Charter v1.0 — Confidential*

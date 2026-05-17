# SOP-BACK-012: Quan ly Hop dong

> Version: 1.0 | Ngay tao: 2026-05-07 | Owner: Admin AI

---

## 1. Muc dich

Quan ly toan bo vòng đời hop dong cua AINS — tu tao moi, review, ky, luu tru, theo doi gia han va giam sat nghia vu — dam bao 100% hop dong duoc theo doi va khong co hop dong nao qua han ma khong duoc xu ly.

## 2. Pham vi

- Ap dung cho: Tat ca hop dong cua AINS (client contracts, vendor contracts, partnership agreements)
- Ap dung tu: Luc bat dau qua trinh tao hop dong
- Khong ap dung: Internal SOPs (thuoc SOP-BACK-007)

## 3. Vai tro (RACI)

| Vai tro | Nguoi/AI | Trach nhiem |
|---------|----------|-------------|
| **R** — Responsible | Admin AI | Tao, luu tru, theo doi, nhac nho |
| **A** — Accountable | CEO | Phe duyet, ky hop dong |
| **C** — Consulted | Finance AI | Payment terms, financial review |
| **I** — Informed | Related departments | Contract status |

## 4. IPO Analysis

### Input
- Thong tin thoa thuan voi khach hang/vendor
- Template hop dong (theo loai)
- Terms va conditions
- Financial terms (tu Finance AI)
- Legal requirements (tu SOP-BACK-008)

### Process
1. Tao draft hop dong tu template
2. Review noi dung (Admin AI)
3. Review tai chinh (Finance AI)
4. CEO review va ky
5. Gui cho doi tac
6. Theo doi trang thai
7. Luu tru va dang ky
8. Nhac nho gia han
9. Giam sat nghia vu

### Output
- Contract register (trong `output/contract-register_YYYY-MM.md`)
- Signed contracts (trong `output/contract_*.md`)
- Renewal reminders
- Obligation tracking report

## 5. Quy trinh chi tiet

### 5.1 Contract Types

| Loai | Ma | Vi du | Owner |
|------|-----|-------|-------|
| Client Service | CT-CLT | Hop dong tu van, training | CEO |
| Vendor/Tool | CT-VND | Subscription, license | Admin AI |
| Partnership | CT-PTR | Co-marketing, referral | CEO |
| NDA | CT-NDA | Non-disclosure | CEO |
| Employment/IC | CT-EMP | Freelancer, contractor | HR AI |

### 5.2 Contract Lifecycle

```
Draft → Internal Review → CEO Approval → Sent to Partner
  → Negotiation (neu can) → Final Approval → Signed
  → Active → Monitoring → Renewal/Expiry → Archived
```

### 5.3 Contract Creation Process

| Buoc | Action | Owner | SLA |
|------|--------|-------|-----|
| 1 | Nhan yeu cau tao hop dong | Requester | - |
| 2 | Tao draft tu template | Admin AI | <4h |
| 3 | Review noi dung | Admin AI | <1 ngay |
| 4 | Review tai chinh | Finance AI | <1 ngay |
| 5 | CEO review | CEO | <2 ngay |
| 6 | Gui doi tac | Admin AI | <4h |
| 7 | Follow up signing | Admin AI | Weekly |
| 8 | Luu tru da ky | Admin AI | <4h |
| 9 | Cap nhat register | Admin AI | Ngay |

### 5.4 Key Contract Elements
- **Parties:** Ten, dia chi, dai dien phap luat
- **Scope of work:** Mo ta chi tiet dich vu/san pham
- **Financial terms:** Gia, payment schedule, payment method
- **Duration:** Ngay bat dau, ngay ket thuc, renewal terms
- **Termination:** Dieu kien huy, notice period
- **Confidentiality:** NDA clauses
- **Liability:** Gioi han trach nhiem
- **Dispute resolution:** Co che giai quyet tranh chap

### 5.5 Renewal Tracking

| Timeline | Action | Owner |
|----------|--------|-------|
| 60 ngay truoc expiry | Review performance | Admin AI |
| 45 ngay truoc expiry | De xuat renew/terminate | Admin AI + Finance AI |
| 30 ngay truoc expiry | CEO approve decision | CEO |
| 14 ngay truoc expiry | Thuc hien (renew hoac close) | Admin AI |
| 0 ngay | Expiry date | Auto-archive |

### 5.6 Obligation Monitoring

- **Weekly:** Kiem tra milestones, deadlines
- **Monthly:** Review obligation compliance
- **Alerts:** 7 ngay truoc moi deadline quan trong
- **Report:** Monthly obligation status cho CEO

## 6. Template & Checklist

### Contract Register Template
```
| Ma HD | Ten hop dong | Loai | Doi tac | Gia tri | Ngay ky | Ngay HH | Trang thai | Next Action |
```

### Contract Review Checklist
- [ ] Thong tin parties day du va chinh xac?
- [ ] Scope of work ro rang va measurable?
- [ ] Financial terms chinh xac (gia, VAT, payment terms)?
- [ ] Duration va renewal terms ro rang?
- [ ] Termination clauses hop ly?
- [ ] Liability limits phu hop?
- [ ] Dispute resolution mechanism co?
- [ ] Compliance voi legal requirements (SOP-BACK-008)?
- [ ] Formatting va presentation chuyen nghiep?

## 7. KPIs & Metrics

| KPI | Target | Do luong |
|-----|--------|----------|
| Contract processing time | <5 ngay | Per contract |
| Renewal tracking accuracy | 100% | Monthly |
| Obligation compliance | 100% | Monthly |
| Contract register accuracy | 100% | Monthly |
| Zero missed renewals | 0 | Yearly |

## 8. AI Integration Points

- **Admin AI** tu dong tao draft tu template
- **Admin AI** tu dong track renewal dates va send reminders
- **Admin AI** tu dong cap nhat contract register
- **Finance AI** tu dong review financial terms
- **CEO** review va ky tat ca hop dong
- **HR AI** provide input cho employment/IC contracts

## 9. Upstream/Downstream SOPs

### Upstream
- SOP-BACK-008: Legal compliance (legal requirements)
- SOP-BACK-011: Procurement (vendor contracts)
- SOP-SALES-003: Sales (client contracts)

### Downstream
- SOP-BACK-001: Ke toan (revenue recognition)
- SOP-BACK-002: Chi phi (expense tracking)
- SOP-BACK-003: Hoa don (invoicing)
- SOP-BACK-007: Quan ly tai lieu (document storage)

## 10. Version History

| Version | Ngay | Thay doi | Author |
|---------|------|----------|--------|
| 1.0 | 2026-05-07 | Tao moi | Admin AI |

---
*SOP-BACK-012 v1.0 — AINS Backoffice*

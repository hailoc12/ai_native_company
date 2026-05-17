# SOP-BACK-003: Xuat hoa don & Thu hoi cong no

> Version: 1.0 | Ngay tao: 2026-05-07 | Owner: Finance AI

---

## 1. Muc dich

Quy trinh xuat hoa don cho khach hang va theo doi cong no, dam bao thu hoi duoc toan bo doanh thu trong thoi han thoa thuan, voi thoi gian xu ly <24h.

## 2. Pham vi

- Ap dung cho: Tat ca hoa don ban ra (sales invoices)
- Ap dung tu: Luc co yeu cau xuat hoa don tu Sales AI hoac CEO
- Khong ap dung: Hoa don mua vao (vendor invoices — thuoc SOP-BACK-002)

## 3. Vai tro (RACI)

| Vai tro | nguoi/AI | Trach nhiem |
|---------|----------|-------------|
| **R** — Responsible | Finance AI | Xuat hoa don, theo doi cong no |
| **A** — Accountable | CEO | Phe duyet quy trinh |
| **C** — Consulted | Sales AI | Thong tin don hang |
| **I** — Informed | CEO, Admin AI | Bao cao |

## 4. IPO Analysis

### Input
- Yeu cau xuat hoa don (tu Sales AI hoac CEO)
- Thong tin don hang (ten KH, dich vu, so tien, thue suat)
- Thong tin khach hang (ten, dia chi, ma so thue)
- Hop dong da ky

### Process
1. Nhan yeu cau xuat hoa don
2. Xac minh thong tin
3. Tao hoa don theo template
4. Gui hoa don cho khach hang
5. Theo doi trang thai thanh toan
6. Remind khi den han / qua han
7. Cap nhat AR aging report

### Output
- Hoa don da xuat (trong `output/invoice_*.md`)
- Accounts receivable report (trong `output/accounts-receivable_*.md`)
- Reminder emails
- Thong bao cho CEO (qua han >30 ngay)

## 5. Quy trinh chi tiet

### 5.1 Buoc 1: Nhan yeu cau
- **Trigger:** Sales AI gui yeu cau xuat hoa don / CEO request
- **Thong tin can:**
  - Ten khach hang
  - Dich vu/san pham
  - So tien (chua thue)
  - Thue suat
  - Payment terms
  - Dia chi, ma so thue

### 5.2 Buoc 2: Xac minh
- [ ] Thong tin khach hang day du?
- [ ] So tien khop voi hop dong?
- [ ] Thue suat chinh xac?
- [ ] Payment terms da ro rang?

### 5.3 Buoc 3: Tao hoa don
- Ma hoa don: `INV-YYYY-NNN` (vi du: INV-2026-001)
- Template: Invoice template trong `template/`
- Format: PDF + Markdown
- Noi dung:
  - Header: AINS ten, dia chi, ma so thue
  - Bill to: Thong tin khach hang
  - Line items: Dich vu, so luong, don gia, thanh tien
  - Subtotal, VAT, Total
  - Payment terms & bank details

### 5.4 Buoc 4: Gui hoa don
- Gui qua email (cc CEO)
- Luu vao `output/` va Google Drive
- Log vao invoice register

### 5.5 Buoc 5: Theo doi thanh toan
| Timeline | Action |
|----------|--------|
| Ngay xuat | Gui hoa don |
| +7 ngay | Reminder 1 (neu chua thanh toan) |
| +14 ngay | Reminder 2 (neu chua thanh toan) |
| +30 ngay | Bao CEO + Stop services |
| +60 ngay | Thu hoi no (formal demand letter) |

### 5.6 Buoc 6: Cap nhat AR aging
- Weekly: Cap nhat AR aging report
- Categories: Current, 1-30 days, 31-60 days, 60+ days
- Total AR tracking

## 6. Template & Checklist

### Invoice Number Format
```
INV-YYYY-NNN
INV-2026-001  = Invoice 1 nam 2026
```

### Invoice Checklist
- [ ] Ma hoa don dung format
- [ ] Thong tin AINS day du
- [ ] Thong tin KH day du
- [ ] Line items chinh xac
- [ ] Tinh toan thue chinh xac
- [ ] Payment terms ro rang
- [ ] Bank details chinh xac

## 7. KPIs & Metrics

| KPI | Target | Do luong |
|-----|--------|----------|
| Invoice processing time | <24h | Hours from request to delivery |
| AR collection rate | >95% | % collected within terms |
| Average collection period | <30 days | Days Sales Outstanding |

## 8. AI Integration Points

- **Finance AI** tu dong tao hoa don tu template
- **Finance AI** tu dong gui email voi hoa don dinh kem
- **Finance AI** tu dong send reminders theo schedule
- **Finance AI** tu dong cap nhat AR aging
- **CEO** informed moi hoa don, review qua han

## 9. Upstream/Downstream SOPs

### Upstream
- SOP-SALES-003: Don hang (thong tin don hang)
- SOP-BACK-012: Hop dong (payment terms)
- SOP-BACK-001: Ke toan (ghi nhan doanh thu)

### Downstream
- SOP-BACK-001: Ke toan (ghi nhan doanh thu khi thanh toan)
- SOP-BACK-004: Bao cao tai chinh (AR data)

## 10. Version History

| Version | Ngay | Thay doi | Author |
|---------|------|----------|--------|
| 1.0 | 2026-05-07 | Tao moi | Finance AI |

---
*SOP-BACK-003 v1.0 — AINS Backoffice*

# SOP-BACK-001: Ke toan & Ghi nhan doanh thu

> Version: 1.0 | Ngay tao: 2026-05-07 | Owner: Finance AI

---

## 1. Muc dich

Quy trinh ghi nhan moi giao dich doanh thu cua AINS vao he thong ke toan, dam bao chinh xac, day du va kip thoi. Moi dong doanh thu duoc phan loai dung theo nguon, duoc ghi nhan dung thue suat, va duoc bao cao cho CEO.

## 2. Pham vi

- Ap dung cho: Tat ca giao dich doanh thu (dich vu consulting, training, digital products, subscription)
- Ap dung tu: Luc nhan duoc thong bao thanh toan hoac xac nhan giao dich
- Khong ap dung: Doanh thu du kien (chi ghi nhan khi thuc te)

## 3. Vai tro (RACI)

| Vai tro | nguoi/AI | Trach nhiem |
|---------|----------|-------------|
| **R** — Responsible | Finance AI | Thu thap, phan loai, ghi nhan |
| **A** — Accountable | CEO | Phe duyet quy trinh |
| **C** — Consulted | Sales AI | Thong tin don hang |
| **I** — Informed | CEO, Admin AI | Bao cao |

## 4. IPO Analysis

### Input
- Thong bao thanh toan tu payment gateway (Stripe/Momo/bank transfer)
- Hop dong da ky voi khach hang
- Hoa don da xuat (SOP-BACK-003)
| Thong tin don hang tu Sales AI

### Process
1. Xac nhan giao dich thanh toan
2. Phan loai nguon doanh thu
3. Tinh thue GTGT (10% hoac 8%)
4. Ghi nhan vao revenue log
5. Cap nhat bao cao tong hop

### Output
- Revenue log entry (trong `output/revenue-log_YYYY-MM.md`)
- Cap nhat bao cao tai chinh
- Thong bao cho CEO (neu giao dich >50M VND)

## 5. Quy trinh chi tiet

### 5.1 Buoc 1: Nhan thong bao thanh toan
- **Trigger:** Email tu payment gateway hoac bank notification
- **Action:** Finance AI kiem tra thong tin giao dich
- **Checklist:**
  - [ ] So tien khop voi hoa don?
  - [ ] Ten khach hang khop voi hop dong?
  - [ ] Phuong thuc thanh toan ghi nhan?

### 5.2 Buoc 2: Phan loai doanh thu
| Ma loai | Nguon | Thue GTGT | Ghi chu |
|---------|-------|-----------|---------|
| REV-CON | Consulting services | 10% | AI consulting, strategy |
| REV-TRN | Training & workshop | 10% | In-house, public |
| REV-DIG | Digital products | 10% | Templates, guides, courses |
| REV-SUB | Subscription revenue | 10% | Monthly retainer |
| REV-OTH | Other revenue | 10% | Miscellaneous |

### 5.3 Buoc 3: Tinh toan thue
```
Doanh thu chua thue = Tong tien / (1 + Thue suat)
Thue GTGT = Tong tien - Doanh thu chua thue
```

### 5.4 Buoc 4: Ghi nhan vao revenue log
Template entry:
```
| Ngay | Ma KH | Ten KH | Loai DV | So tien (VND) | Thue GTGT | Net revenue | PTTT | Trang thai |
```

### 5.5 Buoc 5: Cap nhat bao cao
- Cap nhat monthly revenue total
- Cap nhat YTD revenue
- So sanh voi budget (SOP-BACK-002)
- Alert neu偏离 budget >10%

## 6. Template & Checklist

### Daily Revenue Checklist
- [ ] Kiem tra tat ca payment channels
- [ ] Ghi nhan moi giao dich
- [ ] Phan loai chinh xac
- [ ] Tinh toan thue chinh xac
- [ ] Cap nhat revenue log
- [ ] Flag bat thuong (neu co)

## 7. KPIs & Metrics

| KPI | Target | Do luong |
|-----|--------|----------|
| Ghi nhan chinh xac | 99%+ | Error rate |
| Thoi gian ghi nhan | <2h | Tu nhan thong bao den ghi nhan |
| Daily reconciliation | 100% | Moi ngay |

## 8. AI Integration Points

- **Finance AI** tu dong kiem tra payment channels moi 30 phut
- **Finance AI** tu dong phan loai dua tren rule-based engine
- **Finance AI** tu dong tinh thue va ghi nhan
- **CEO** review qua weekly financial review (2h/tuan)
- **Exception handling:** Giao dich >50M VND → immediate notification

## 9. Upstream/Downstream SOPs

### Upstream
- SOP-SALES-003: Don hang & xac nhan ( cung cap thong tin don hang)
- SOP-BACK-003: Xuat hoa don ( cung cap hoa don)

### Downstream
- SOP-BACK-002: Quan ly chi phi & ngan sach (su dung revenue data)
- SOP-BACK-004: Bao cao tai chinh thang (tong hop revenue)

## 10. Version History

| Version | Ngay | Thay doi | Author |
|---------|------|----------|--------|
| 1.0 | 2026-05-07 | Tao moi | Finance AI |

---
*SOP-BACK-001 v1.0 — AINS Backoffice*

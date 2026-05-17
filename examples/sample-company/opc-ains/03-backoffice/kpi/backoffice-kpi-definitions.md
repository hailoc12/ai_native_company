# Backoffice KPI Definitions

> Version: 1.0 | Ngay tao: 2026-05-07 | Owner: Backoffice Department

---

## 1. Financial Accuracy Rate

**Ma KPI:** KPI-BACK-001
**Target:** 99%+
**Tan suat do:** Hang thang
**Owner:** Finance AI

### Cong thuc
```
Financial Accuracy = (Tong giao dich chinh xac / Tong giao dich) x 100%
```

### Cach do
- Dem so giao dich co error (sai so tien, sai thue, sai tai khoan)
- Di tiem can: review ngau nhien 10% giao dich moi thang

### Thresholds
| Level | Gia tri | Hanh dong |
|-------|---------|-----------|
| Green | >= 99% | Tiep tuc |
| Yellow | 95-99% | Review process, tang frequency kiem tra |
| Red | < 95% | Dung lai, audit toan bo, bao CEO |

---

## 2. Invoice Processing Time

**Ma KPI:** KPI-BACK-002
**Target:** < 24 hours
**Tan suat do:** Moi hoa don
**Owner:** Finance AI

### Cong thuc
```
Processing Time = Thoi gian xuat hoa don - Thoi gian nhan yeu cau
```

### Cach do
- Log timestamp khi nhan yeu cau xuat hoa don
- Log timestamp khi hoa don duoc gui cho khach hang
- Tinh trung binh moi thang

### Thresholds
| Level | Gia tri | Hanh dong |
|-------|---------|-----------|
| Green | < 12h | Excellent |
| Yellow | 12-24h | Canh bao, kiem tra bottleneck |
| Red | > 24h | Review urgently, bao CEO |

---

## 3. Compliance Score

**Ma KPI:** KPI-BACK-003
**Target:** 100%
**Tan suat do:** Hang quy
**Owner:** Admin AI (compile), CEO (accountable)

### Cong thuc
```
Compliance Score = (Tong yeu cau tuan thu - So vi pham) / Tong yeu cau tuan thu x 100%
```

### Checklist items
- [ ] Thue GTGT khai bao dung han
- [ ] Thue TNCN dong du
- [ ] Bao cao tai chinh hop le
- [ ] Hop dong ki dinh dang
- [ ] Hoa don chinh xac
- [ ] Bao mat du lieu khach hang
- [ ] Backup du lieu dinh ky

### Thresholds
| Level | Gia tri | Hanh dong |
|-------|---------|-----------|
| Green | 100% | Tiep tuc |
| Yellow | 90-100% | Dieu chinh ngay |
| Red | < 90% | STOP, bao CEO ngay lap tuc |

---

## 4. Cost Optimization (YoY)

**Ma KPI:** KPI-BACK-004
**Target:** -20% YoY
**Tan suat do:** Hang quy (review), hang nam (tinh chinh thuc)
**Owner:** Finance AI

### Cong thuc
```
Cost Optimization = (OpEx Quy nay - OpEx Quy truoc) / OpEx Quy truoc x 100%
```

### Categories tracked
- Tool & Software costs (Claude, GPT, tools khac)
- Infrastructure costs (cloud, hosting)
- Outsourcing costs (design, content)
- Administrative costs (van phong, dich vu)

### Thresholds
| Level | Gia tri | Hanh dong |
|-------|---------|-----------|
| Green | <= -20% | Tang toc dau tu |
| Yellow | -10% to -20% | Tim them co hoi tiet kiem |
| Red | > -10% | Review toan bo chi phi, bao CEO |

---

## 5. Report Timeliness

**Ma KPI:** KPI-BACK-005
**Target:** 100%
**Tan suat do:** Hang thang
**Owner:** Admin AI (compile)

### Cong thuc
```
Timeliness = So bao cao giao dung han / Tong bao cao x 100%
```

### Deadline cho tung bao cao
| Bao cao | Deadline |
|---------|----------|
| Weekly report | Monday 9:00 AM |
| Monthly financial | Ngay 5 thang sau |
| AI performance | Ngay 5 thang sau |
| Quarterly budget | Ngay 10 thang sau quy |

### Thresholds
| Level | Gia tri | Hanh dong |
|-------|---------|-----------|
| Green | 100% | Tiep tuc |
| Yellow | 80-100% | Phan tich nguyen nhan tre |
| Red | < 80% | Review process, tang automation |

---

## 6. AI Worker Uptime

**Ma KPI:** KPI-BACK-006
**Target:** 99.5%
**Tan suat do:** Hang tuan
**Owner:** HR AI

### Cong thuc
```
Uptime = (Tong gio hoat dong - Tong gio downtime) / Tong gio hoat dong x 100%
```

### Ghi chu
- AI workers chay 24/7 nen uptime target cao
- Downtime bao gom: maintenance, upgrade, error recovery
- Khong bao gom: planned downtime (thong bao truoc 24h)

### Thresholds
| Level | Gia tri | Hanh dong |
|-------|---------|-----------|
| Green | >= 99.5% | Tiep tuc |
| Yellow | 95-99.5% | Kiem tra root cause |
| Red | < 95% | Emergency response, bao CEO |

---

## KPI Dashboard Summary

| KPI | Ma | Target | Frequency | Owner |
|-----|-----|--------|-----------|-------|
| Financial Accuracy | KPI-BACK-001 | 99%+ | Monthly | Finance AI |
| Invoice Processing | KPI-BACK-002 | <24h | Per invoice | Finance AI |
| Compliance | KPI-BACK-003 | 100% | Quarterly | Admin AI |
| Cost Optimization | KPI-BACK-004 | -20% YoY | Quarterly | Finance AI |
| Report Timeliness | KPI-BACK-005 | 100% | Monthly | Admin AI |
| AI Uptime | KPI-BACK-006 | 99.5% | Weekly | HR AI |

---

## Version History

| Version | Ngay | Thay doi | Author |
|---------|------|----------|--------|
| 1.0 | 2026-05-07 | Tao moi | CEO |

---
*AINS Backoffice KPI Definitions v1.0*

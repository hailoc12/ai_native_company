# SOP-BACK-010: Backup & Disaster Recovery

> Version: 1.0 | Ngay tao: 2026-05-07 | Owner: Admin AI

---

## 1. Muc dich

Dam bao toan bo du lieu va tai lieu cua AINS duoc backup dinh ky theo lich trinh, co kha nang phuc hoi trong thoi gian ngan nhat (RTO <4h, RPO <1h), va co ke hoach disaster recovery duoc test it nhat 1 lan/quy.

## 2. Pham vi

- Ap dung cho: Toan bo du lieu AINS (SOPs, contracts, invoices, reports, financial data, AI worker configs)
- Ap dung tu: Hang ngay (auto backup), hang tuan (verify), hang quy (DR test)
- Nguon du lieu: Google Drive, local filesystem, GitHub repos, email archives

## 3. Vai tro (RACI)

| Vai tro | Nguoi/AI | Trach nhiem |
|---------|----------|-------------|
| **R** — Responsible | Admin AI | Thuc hien backup, verify, test DR |
| **A** — Accountable | CEO | Phe duyet chinh sach, review ket qua test |
| **C** — Consulted | Finance AI | Financial data backup priority |
| **I** — Informed | CEO, All AI workers | Ket qua backup, DR test |

## 4. IPO Analysis

### Input
- Du lieu can backup (files, databases, configs)
- Backup schedule da duyet
- DR plan hien tai
- Ket qua backup lan truoc

### Process
1. Thuc hien backup theo lich trinh (daily/weekly/monthly)
2. Verify backup integrity
3. Luu log backup
4. Thuc hien DR test quy
5. Cap nhat DR plan (neu can)

### Output
- Backup log (trong `output/backup-log_YYYY-MM.md`)
- DR test report (trong `output/dr-test-report_YYYY-QN.md`)
- Backup verification report
- Alerts (neu backup fail)

## 5. Quy trinh chi tiet

### 5.1 Backup Schedule

| Loai | Tan suat | Thoi gian | Noi luu | Retention |
|------|----------|-----------|---------|-----------|
| Daily incremental | Moi ngay | 02:00 AM | Google Drive + Local | 30 ngay |
| Weekly full | Chu nhat | 03:00 AM | Google Drive + Local | 12 tuan |
| Monthly archive | Ngay 1 hang thang | 04:00 AM | Google Drive + Cold storage | 24 thang |
| Quarterly snapshot | Cuoi quy | 05:00 AM | Offline backup (external) | Vinh vien |

### 5.2 Backup Priority Levels

| Priority | Data Type | RPO | RTO | Backup Method |
|----------|-----------|-----|-----|---------------|
| P1 — Critical | Financial data, contracts, invoices | <1h | <2h | Real-time sync + daily backup |
| P2 — High | SOPs, AI worker configs, client data | <4h | <4h | Daily backup |
| P3 — Medium | Marketing materials, templates | <24h | <8h | Weekly backup |
| P4 — Low | Archive, old versions | <1 tuan | <48h | Monthly backup |

### 5.3 Backup Process — Daily

```
Buoc 1: Admin AI kiem tra thay doi tu lan backup cuoi
Buoc 2: Tao incremental backup cua files thay doi
Buoc 3: Upload den Google Drive (primary) + Local (secondary)
Buoc 4: Verify backup integrity (checksum)
Buoc 5: Gui backup log qua email
Buoc 6: Alert CEO neu backup fail
```

### 5.4 Backup Verification — Weekly

- Chieu thu 7: Verify tat ca daily backup tuan do
- Kiem tra: File count, total size, checksum match
- Restore test: Random restore 3 files de verify
- Report: Gui verification report cho CEO

### 5.5 Disaster Recovery Plan

**Scenario 1: Loss of Google Drive access**
- RTO: 2h
- Action: Restore tu local backup
- Steps: Kiem tra local backup → Restore → Verify → Resume operations

**Scenario 2: Loss of local data**
- RTO: 4h
- Action: Download tu Google Drive backup
- Steps: Access GDrive → Download all → Verify → Resume

**Scenario 3: Ransomware / Data corruption**
- RTO: 4h
- Action: Restore tu clean backup (truoc thoi diem corruption)
- Steps: Identify clean backup point → Restore → Scan → Verify → Resume

**Scenario 4: Complete data loss (ca 2 location)**
- RTO: 48h
- Action: Restore tu quarterly offline backup
- Steps: Access offline backup → Restore → Rebuild → Verify → Resume

### 5.6 DR Test — Quarterly

| Buoc | Hoat dong | Duration |
|------|-----------|----------|
| 1 | Chon scenario | 30 phut |
| 2 | Simulate disaster | 1h |
| 3 | Thuc hien recovery theo DR plan | < RTO target |
| 4 | Verify data integrity | 1h |
| 5 | Document ket qua | 1h |
| 6 | Update DR plan (neu can) | 1h |

## 6. Template & Checklist

### Daily Backup Checklist
- [ ] Incremental backup da chay thanh cong?
- [ ] Backup size hop ly (so voi lan truoc)?
- [ ] Checksum verify pass?
- [ ] Log da gui?
- [ ] Co error nao khong?

### Weekly Verification Checklist
- [ ] Tat ca 7 daily backup cua tuan co day du?
- [ ] Total size khop voi du kien?
- [ ] Random restore test pass?
- [ ] Verification report da gui?

### Quarterly DR Test Checklist
- [ ] Scenario da chon va approved?
- [ ] DR test da thuc hien?
- [ ] RTO dat target?
- [ ] Data integrity verify pass?
- [ ] Lessons learned da ghi nhan?
- [ ] DR plan da cap nhat (neu can)?
- [ ] Report da gui CEO?

## 7. KPIs & Metrics

| KPI | Target | Do luong |
|-----|--------|----------|
| Backup success rate | 100% | Daily |
| Backup verification pass | 100% | Weekly |
| DR test pass | 100% (RTO within target) | Quarterly |
| RPO compliance | 100% | Continuous |
| Mean Time to Recovery | <4h | Per incident |

## 8. AI Integration Points

- **Admin AI** tu dong chay backup theo schedule
- **Admin AI** tu dong verify backup integrity
- **Admin AI** tu dong send backup log va alerts
- **Admin AI** thuc hien DR test quy
- **CEO** review DR test results va approve DR plan changes
- **Finance AI** bao cao financial data backup priority

## 9. Upstream/Downstream SOPs

### Upstream
- SOP-BACK-007: Quan ly tai lieu (xac dinh data can backup)
- SOP-BACK-009: Security policy (encryption requirements)

### Downstream
- Tat ca SOPs (restore khi can)
- CEO Office (business continuity)

## 10. Version History

| Version | Ngay | Thay doi | Author |
|---------|------|----------|--------|
| 1.0 | 2026-05-07 | Tao moi | Admin AI |

---
*SOP-BACK-010 v1.0 — AINS Backoffice*

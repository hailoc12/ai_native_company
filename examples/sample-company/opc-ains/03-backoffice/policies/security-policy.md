# SOP-BACK-009: Chinh sach Bao mat & An toan thong tin (Policy Document)

> Version: 1.0 | Ngay tao: 2026-05-07 | Owner: Admin AI
> Loai: DOCUMENTATION-ONLY (Khong co state machine — tham khao tu cac SOP khac)

---

## 1. Muc dich

Xac dinh chinh sach bao mat va an toan thong tin cho AINS, bao gom phan loai du lieu, quyen truy cap, ma hoa, lich backup va quy trinh ung pho su co bao mat. Dam bao compliance voi Decree 13/2023/ND-CP ve bao ve du lieu ca nhan va quy dinh ve an toan thong tin tai Viet Nam.

## 2. Pham vi

- Ap dung cho: Toan bo du lieu, tai nguyen va hoat dong cua AINS
- Ap dung tu: Tu ngay ban hanh
- Doi tuong: CEO, tat ca AI workers, vendors co truy cap data AINS
- Review: Hang quy hoac khi co su co bao mat

## 3. Vai tro (RACI)

| Vai tro | Nguoi/AI | Trach nhiem |
|---------|----------|-------------|
| **R** — Responsible | Admin AI | Trien khai, giam sat, bao cao |
| **A** — Accountable | CEO | Phe duyet chinh sach, xu ly su co lon |
| **C** — Consulted | All AI workers | Compliance feedback |
| **I** — Informed | CEO, Vendors | Cap nhat chinh sach |

## 4. Phan loai du lieu (Data Classification)

### Level 1 — Public (Cong khai)

| Thuoc tinh | Chi tiet |
|------------|----------|
| Vi du | Marketing materials, website content, public SOPs |
| Truy cap | Tat ca moi nguoi |
| Bao ve | Khong yeu cau dac biet |
| Ma hoa | Khong bat buoc |

### Level 2 — Internal (Noi bo)

| Thuoc tinh | Chi tiet |
|------------|----------|
| Vi du | Internal SOPs, meeting notes, workforce roster, non-financial reports |
| Truy cap | CEO + Tat ca AI workers |
| Bao ve | Access control, backup |
| Ma hoa | At-rest encryption khuyen khich |

### Level 3 — Confidential (Mat)

| Thuoc tinh | Chi tiet |
|------------|----------|
| Vi du | Financial reports, contracts, invoices, client data, pricing |
| Truy cap | CEO + Relevant AI workers only |
| Bao ve | Access control + Encryption + Audit log |
| Ma hoa | Bat buoc (at-rest + in-transit) |

### Level 4 — Restricted (Han che)

| Thuoc tinh | Chi tiet |
|------------|----------|
| Vi du | Tax records, bank details, API keys, passwords, encryption keys |
| Truy cap | CEO only (va Admin AI qua secure channel) |
| Bao ve | Maximum security + No sharing + Vault storage |
| Ma hoa | Bat buoc (AES-256) + Key rotation |

## 5. Quyen truy cap (Access Control)

### 5.1 Role-based Access

| Role | Public | Internal | Confidential | Restricted |
|------|--------|----------|-------------|------------|
| CEO | Full | Full | Full | Full |
| Finance AI | Full | Full | Financial data only | Bank details only |
| Admin AI | Full | Full | Operations data only | Backup keys only |
| HR AI | Full | HR data only | Workforce data only | None |
| Sales AI | Full | Sales data only | Client data only | None |
| Marketing AI | Full | Marketing data only | None | None |
| Delivery AI | Full | Project data only | Project-specific only | None |
| Strategy AI | Full | Strategy data only | Summary data only | None |
| CX AI | Full | CX data only | Client feedback only | None |
| QA AI | Full | QA data only | None | None |

### 5.2 Access Management Rules

- **Principle of Least Privilege:** Chi cap quyen toi thieu can thiet
- **Quarterly Review:** Review quyen truy cap hang quy
- **Immediate Revocation:** Thu hoi quyen ngay khi AI worker ngung hoat dong
- **Audit Log:** Ghi log moi lan truy cap Confidential/Restricted data

## 6. Ma hoa (Encryption)

| Loai | Standard | Ap dung |
|------|----------|---------|
| At-rest | AES-256 | Tat ca Level 3+ data |
| In-transit | TLS 1.3 | Tat ca data transmission |
| Password storage | bcrypt/Argon2 | Tat ca passwords |
| API keys | Vault (encrypted) | Tat ca API keys |
| Backup | AES-256 | Tat ca backup files |

### Key Management
- **Rotation:** API keys moi 90 ngay
- **Storage:** Secure vault (khong luu trong code hoac documents)
- **Access:** CEO + Admin AI (restricted mode)
- **Emergency:** CEO co the truy cap moi key trong truong hop khan cap

## 7. Backup Schedule (Chi tiet bo sung SOP-BACK-010)

| Data Level | Backup Frequency | Retention | Encryption |
|------------|-----------------|-----------|------------|
| Level 1 — Public | Weekly | 3 thang | Optional |
| Level 2 — Internal | Daily | 6 thang | Yes |
| Level 3 — Confidential | Daily + Real-time sync | 12 thang | Yes (AES-256) |
| Level 4 — Restricted | Daily + Real-time sync + Offline | 24 thang | Yes (AES-256 + separate key) |

## 8. Quy trinh ung pho su co bao mat (Incident Response)

### 8.1 Severity Levels

| Level | Mo ta | Vi du | Response Time |
|-------|-------|-------|---------------|
| **Critical** | Du lieu Restricted bi lo | API keys exposed, bank details leaked | <30 phut |
| **High** | Du lieu Confidential bi lo | Financial reports leaked, client data exposed | <2h |
| **Medium** | Access control violation | Unauthorized access, policy violation | <8h |
| **Low** | Security improvement | Outdated encryption, weak password | <48h |

### 8.2 Incident Response Process

```
Buoc 1: Phat hien su co (Admin AI monitoring / manual report)
Buoc 2: Phan loai severity level
Buoc 3: Thong bao CEO (Critical/High: immediate, Medium: <2h, Low: daily report)
Buoc 4: Containment — Ngung truy cap, thay doi passwords/keys
Buoc 5: Investigation — Xac dinh nguyen nhan va pham vi anh huong
Buoc 6: Remediation — Khac phuc, patch vulnerability
Buoc 7: Recovery — Restore data (neu can tu SOP-BACK-010)
Buoc 8: Post-mortem — Viet bao cao, hoc bai hoc, cap nhat policy
```

### 8.3 Incident Report Template
```
Ngay su co: [YYYY-MM-DD HH:MM]
Severity: [Critical/High/Medium/Low]
Mo ta: [Chi tiet su co]
Pham vi anh huong: [Data/User/System nao bi anh huong]
Nguyen nhan: [Root cause]
Hanh dong da thuc hien: [Danh sach]
Ket qua: [Trang thai hien tai]
Lessons learned: [Bai hoc]
Action items: [De xuat ngan chan lai]
```

## 9. Security Audit Schedule

| Tan suat | Hoat dong | Owner |
|----------|-----------|-------|
| Daily | Automated security scan | Admin AI |
| Weekly | Access log review | Admin AI |
| Monthly | Access control review | Admin AI |
| Quarterly | Full security audit | Admin AI + CEO |
| Annually | Penetration test (neu co) | External |

## 10. Vendor Security Requirements

Bat ky vendor nao co truy cap du lieu AINS phai dam bao:
- [ ] Encryption at-rest va in-transit
- [ ] Access control va audit logging
- [ ] Data processing agreement (DPA)
- [ ] Incident notification within 24h
- [ ] Data deletion upon contract termination
- [ ] Compliance voi Decree 13/2023/ND-CP (data cua ca nhan Viet Nam)

## 11. Compliance Framework

| Quy dinh | Trang thai | Review |
|----------|-----------|--------|
| Decree 13/2023/ND-CP (Bao ve du lieu ca nhan) | Compliant | Hang quy |
| Law on Cybersecurity 2018 | Compliant | Hang quy |
| Law on Network Information Security 2015 | Compliant | Hang quy |
| Industry standards (ISO 27001 reference) | Partial | Hang nam |

## 12. Upstream/Downstream SOPs

### Tham chieu boi
- SOP-BACK-010: Backup & DR (encryption requirements, backup schedule)
- SOP-BACK-011: Procurement (vendor security requirements)
- SOP-BACK-008: Legal compliance (regulatory requirements)
- SOP-BACK-012: Contract management (security clauses in contracts)

## 13. Version History

| Version | Ngay | Thay doi | Author |
|---------|------|----------|--------|
| 1.0 | 2026-05-07 | Tao moi | Admin AI |

---
*SOP-BACK-009 v1.0 — AINS Backoffice Policy*

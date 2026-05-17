# SOP-DEL-008: Bảo mật thông tin khách hàng

**Version:** 1.0 | **Ngày tạo:** 2026-05-07 | **Owner:** Human Owner (Shimazu)

---

## 1. Mục đích

Chính sách này định nghĩa các quy tắc và biện pháp bảo mật thông tin khách hàng tại AINS. Đảm bảo tất cả dữ liệu khách hàng được xử lý, lưu trữ và chia sẻ một cách an toàn, tuân thủ quy định pháp luật.

## 2. Phạm vi

- Áp dụng cho tất cả thông tin khách hàng mà AINS tiếp xúc
- Bao gồm: dữ liệu cá nhân, dữ liệu doanh nghiệp, dữ liệu tài chính, dữ liệu dự án
- Áp dụng cho tất cả AI Workers và Human Owner
- Áp dụng cho tất cả tools, platforms và storage systems

## 3. Phân loại dữ liệu

### 3.1. Confidential (Bảo mật cao)

| Loại dữ liệu | Ví dụ | Xử lý |
|-------------|-------|-------|
| Thông tin tài chính | Doanh thu, ngân sách, giá cả | Mã hóa, giới hạn truy cập |
| Thông tin cá nhân | CMND, tài khoản ngân hàng | Mã hóa, không share |
| Trade secrets | Chiến lược, IP, công nghệ | Mã hóa, NDA bắt buộc |
| Dữ liệu dự án nhạy cảm | Source code, algorithm | Encrypted storage |

### 3.2. Internal (Nội bộ)

| Loại dữ liệu | Ví dụ | Xử lý |
|-------------|-------|-------|
| Project details | Scope, timeline, deliverables | Giới hạn trong team |
| Communication | Email, chat nội dung dự án | Access control |
| Reports internal | QA report, status report | Internal only |

### 3.3. Public (Công khai)

| Loại dữ liệu | Ví dụ | Xử lý |
|-------------|-------|-------|
| Marketing materials | Case study (đã approve) | Public sau khi client approve |
| General info | Dịch vụ, giá niêm yết | Public |

## 4. Quy tắc xử lý dữ liệu

### 4.1. Nguyên tắc chung

1. **Need-to-know:** Chỉ truy cập dữ liệu cần thiết cho task hiện tại
2. **Minimal collection:** Chỉ thu thập dữ liệu cần thiết, không thu thập thừa
3. **Purpose limitation:** Chỉ sử dụng dữ liệu cho mục đích đã thông báo
4. **Data retention:** Không giữ dữ liệu lâu hơn cần thiết
5. **Transparency:** Thông báo rõ cho khách hàng về cách sử dụng dữ liệu

### 4.2. Quy tắc cho AI Workers

| Quy tắc | Chi tiết |
|---------|----------|
| Không store raw data | AI Workers không lưu raw customer data trong context |
| Sanitize outputs | Output không chứa sensitive data không cần thiết |
| Access logging | Mọi access vào confidential data được log |
| Auto-expiry | Dữ liệu dự án auto-purge sau 90 ngày post-closure |
| No cross-client | Dữ liệu client A không bao giờ dùng cho client B |

### 4.3. Quy tắc cho Human Owner

| Quy tắc | Chi tiết |
|---------|----------|
| Encrypted storage | Tất cả confidential data lưu ở encrypted storage |
| Secure communication | Sử dụng encrypted channel cho confidential info |
| Regular audit | Monthly audit access log |
| Password management | Sử dụng password manager, 2FA cho mọi account |
| Physical security | Lock screen khi rời bàn làm việc |

## 5. Biện pháp bảo mật

### 5.1. Technical Measures

| Biện pháp | Chi tiết |
|-----------|----------|
| Encryption at rest | AES-256 cho stored data |
| Encryption in transit | TLS 1.3 cho data transfer |
| Access control | Role-based, principle of least privilege |
| Audit logging | Log mọi access, modification, deletion |
| Auto-backup | Daily backup, 30-day retention |
| Vulnerability scanning | Monthly scan |

### 5.2. Organizational Measures

| Biện pháp | Chi tiết |
|-----------|----------|
| NDA | Ký NDA với tất cả clients |
| Training | Quarterly security awareness |
| Incident response | SOP xử lý data breach |
| Access review | Monthly review permissions |
| Vendor assessment | Security check trước khi dùng vendor |

## 6. Quy trình xử lý Data Breach

### 6.1. Phát hiện

- AI Workers: Auto-detect anomalous access pattern
- Human Owner: Manual detection
- External: Third-party notification

### 6.2. Response (trong vòng 1 giờ)

1. **Contain:** Ngừng breach, isolate affected systems
2. **Assess:** Phạm vi ảnh hưởng, loại dữ liệu bị lộ
3. **Notify:** Thông báo cho:
   - Human Owner (ngay lập tức)
   - Affected clients (trong vòng 24 giờ)
   - Relevant authorities (nếu pháp luật yêu cầu)

### 6.3. Recovery

1. **Fix:** Khắc phục vulnerability
2. **Monitor:** Theo dõi enhanced trong 30 ngày
3. **Report:** Post-incident report trong 7 ngày
4. **Improve:** Cập nhật security measures

## 7. Data Retention Schedule

| Loại dữ liệu | Retention Period | Disposal Method |
|-------------|-----------------|----------------|
| Project deliverables | 1 năm sau closure | Auto-archive, then delete |
| Client communication | 2 năm | Auto-delete |
| Financial records | 5 năm (theo luật) | Secure delete |
| Support tickets | 1 năm | Auto-delete |
| QA reports | 1 năm | Auto-delete |
| Personal data | Project duration + 30 days | Secure delete |

## 8. Compliance Checklist

- [ ] NDA ký với tất cả clients
- [ ] Data classification applied cho tất cả client data
- [ ] Access control configured đúng role
- [ ] Encryption enabled cho tất cả storage
- [ ] Audit logging hoạt động
- [ ] Backup đang chạy đúng schedule
- [ ] AI Workers không store raw data
- [ ] Auto-expiry configured
- [ ] Incident response plan đã test
- [ ] Security awareness training completed

## 9. Review & Update

- **Monthly:** Access log audit (Human Owner)
- **Quarterly:** Security measures review
- **Annually:** Full policy review và update
- **Ad-hoc:** Khi có security incident hoặc regulation change

## 10. Version History

| Version | Ngày | Thay đổi | Author |
|---------|------|----------|--------|
| 1.0 | 2026-05-07 | Tạo mới | Shimazu |

---

**Approved by:**

Shimazu — Founder & CEO
Ngày: 2026-05-07

---

*Lưu ý: Đây là chính sách nội bộ của AINS. Mọi thay đổi cần được Human Owner phê duyệt.*

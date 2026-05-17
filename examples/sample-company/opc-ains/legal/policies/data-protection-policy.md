# CHÍNH SÁCH BẢO VỆ DỮ LIỆU — DATA PROTECTION POLICY

## AI Native Solutions (AINS)

**Phiên bản:** 1.0
**Ngày ban hành:** [Ngày]
**Ngày có hiệu lực:** [Ngày]
**Chịu trách nhiệm:** Giám đốc

---

## I. MỤC ĐÍCH VÀ PHẠM VI

### 1.1. Mục đích

Chính sách này quy định cách AINS thu thập, lưu trữ, xử lý, chia sẻ và xóa dữ liệu nhằm:

1. Bảo vệ quyền riêng tư của khách hàng, đối tác và người dùng
2. Tuân thủ Nghị định 13/2023/NĐ-CP về Bảo vệ dữ liệu cá nhân
3. Thiết lập tiêu chuẩn xử lý dữ liệu cho toàn bộ AI Workforce
4. Đảm bảo tính bảo mật, toàn vẹn và sẵn sàng của dữ liệu

### 1.2. Phạm vi áp dụng

Chính sách này áp dụng cho:

| Đối tượng | Phạm vi |
|-----------|---------|
| Giám đốc | Tất cả dữ liệu công ty |
| AI Workers | Dữ liệu trong phạm vi assigned task |
| Khách hàng | Dữ liệu cá nhân khách hàng cung cấp |
| Đối tác | Thông tin chia sẻ trong hợp tác |
| Third-party tools | Dữ liệu xử lý qua nền tảng bên thứ ba (AI providers, cloud) |

---

## II. PHÂN LOẠI DỮ LIỆU

### 2.1. Ma trận phân loại 4 cấp

| Cấp | Tên | Định nghĩa | Ví dụ | Biểu tượng |
|-----|-----|-----------|-------|------------|
| **P1** | **Public** (Công khai) | Dữ liệu có thể chia sẻ tự do với công chúng | Blog posts, social media content, pricing publicly listed | Xanh lá |
| **P2** | **Internal** (Nội bộ) | Dữ liệu dùng nội bộ, không chia sẻ ngoài | SOP, AI config, nội bộ financial summary, meeting notes | Xanh dương |
| **P3** | **Confidential** (Bảo mật) | Dữ liệu nhạy cảm, chỉ người có quyền mới được truy cập | Client data, contracts, proposals, client financials | Vàng |
| **P4** | **Restricted** (Hạn chế) | Dữ liệu cực kỳ nhạy cảm, tối đa bảo vệ | Mật khẩu, API keys, tax returns, dữ liệu thẻ tín dụng, personal ID | Đỏ |

### 2.2. Quy tắc xử lý theo phân loại

#### Public (P1)

| Quy tắc | Chi tiết |
|---------|----------|
| Ai được xem | Bất kỳ ai |
| Lưu trữ | Cloud public folder, website |
| Chia sẻ | Free to share |
| Xóa | Không bắt buộc |
| Backup | Không bắt buộc |

#### Internal (P2)

| Quy tắc | Chi tiết |
|---------|----------|
| Ai được xem | Giám đốc + AI Workers (theo vai trò) |
| Lưu trữ | Cloud private folder, encrypted |
| Chia sẻ | Chỉ nội bộ, không forward ngoài |
| Xóa | Khi không còn relevant hoặc sau 3 năm |
| Backup | Hàng tuần |

#### Confidential (P3)

| Quy tắc | Chi tiết |
|---------|----------|
| Ai được xem | Giám đốc + AI Worker được assign trực tiếp |
| Lưu trữ | Encrypted, access logged |
| Chia sẻ | Chỉ với sự đồng ý của Giám đốc |
| Xóa | Theo data retention schedule hoặc theo yêu cầu khách hàng |
| Backup | Hàng ngày |

#### Restricted (P4)

| Quy tắc | Chi tiết |
|---------|----------|
| Ai được xem | Chỉ Giám đốc |
| Lưu trữ | Encrypted, separate storage, MFA required |
| Chia sẻ | Không bao giờ share, trừ yêu cầu pháp lý |
| Xóa | Ngay khi không còn cần thiết, secure delete |
| Backup | Real-time sync + offline backup |

### 2.3. Ví dụ phân loại cụ thể

| Dữ liệu | Phân loại | Lý do |
|---------|-----------|-------|
| Blog posts đã publish | P1 - Public | Nội dung công khai |
| Bảng giá dịch vụ | P1 - Public | Publicly available |
| SOP vận hành | P2 - Internal | Competitive advantage, không share ngoài |
| AI Worker configurations | P2 - Internal | IP nội bộ |
| Báo cáo tài chính nội bộ | P2 - Internal | Nhạy cảm nội bộ |
| Thông tin liên hệ khách hàng | P3 - Confidential | Dữ liệu cá nhân |
| Hợp đồng dịch vụ | P3 - Confidential | Thỏa thuận bảo mật |
| Proposal gửi khách hàng | P3 - Confidential | Competitive info |
| Chat logs với khách hàng | P3 - Confidential | Dữ liệu cá nhân |
| Mật khẩu tài khoản | P4 - Restricted | Tối đa bảo mật |
| API keys (AI tools, cloud) | P4 - Restricted | Tối đa bảo mật |
| Thông tin thuế cá nhân | P4 - Restricted | Dữ liệu cá nhân nhạy cảm |
| Chữ ký số | P4 - Restricted | Quyền ký pháp lý |

---

## III. KIỂM SOÁT TRUY CẬP (ACCESS CONTROL)

### 3.1. Nguyên tắc phân quyền

AINS áp dụng nguyên tắc **Role-Based Access Control (RBAC)** kết hợp **Need-to-Know**:

| Vai trò | P1 - Public | P2 - Internal | P3 - Confidential | P4 - Restricted |
|---------|:-----------:|:------------:|:-----------------:|:---------------:|
| **Giám đốc** | Full | Full | Full | Full |
| **AI Growth Workers** | Read/Write | Read (assigned) | Read (assigned task only) | No access |
| **AI Delivery Workers** | Read | Read/Write (assigned) | Read/Write (assigned task only) | No access |
| **AI Backoffice Workers** | Read | Read (assigned) | Read (assigned task only) | Read (Accountant: tax docs) |
| **AI QA Reviewer** | Read | Read (for review) | Read (for review) | No access |
| **External parties** | Read only | No access | No access | No access |

### 3.2. Quy trình cấp quyền

```
[Task mới cần data access]
          │
          ▼
[Giám đốc phân loại dữ liệu cần thiết]
          │
          ▼
[Cấp quyền tối thiểu cho AI Worker]
          │
          ▼
[AI Worker thực hiện task]
          │
          ▼
[Hoàn thành task] → Thu hồi quyền truy cập
          │
          ▼
[Log access record]
```

### 3.3. Password và Authentication

| Quy tắc | Chi tiết |
|---------|----------|
| **Password strength** | Tối thiểu 16 ký tự, bao gồm uppercase, lowercase, số, ký tự đặc biệt |
| **MFA** | Bật Multi-Factor Authentication cho mọi tài khoản quan trọng |
| **Password manager** | Sử dụng password manager, không lưu trong plain text |
| **API Keys** | Lưu trong encrypted vault, rotate mỗi 90 ngày |
| **Sharing** | Không bao giờ share password/API key qua email, chat không mã hóa |

---

## IV. LƯU TRỮ DỮ LIỆU (DATA RETENTION)

### 4.1. Thời gian lưu trữ theo loại dữ liệu

| Loại dữ liệu | Phân loại | Lưu trữ | Sau khi hết hạn |
|-------------|-----------|---------|-----------------|
| **Blog content** | P1 | Vĩnh viễn | N/A |
| **Social media posts** | P1 | Vĩnh viễn | N/A |
| **SOP nội bộ** | P2 | 3 năm hoặc đến khi replace | Archive → Delete sau 1 năm |
| **Financial records** | P2-P4 | 10 năm (theo luật kế toán) | Secure delete |
| **Client communications** | P3 | 3 năm sau kết thúc hợp đồng | Secure delete |
| **Contracts** | P3 | 10 năm | Secure delete |
| **Client deliverables** | P3 | 2 năm sau giao | Archive → Delete |
| **Tax documents** | P4 | 10 năm (theo luật thuế) | Secure delete |
| **Access logs** | P2 | 1 năm | Auto-delete |
| **AI training data** | P2 | 1 năm | Anonymize → Delete |
| **Email drafts** | P2 | 6 tháng | Auto-delete |
| **Marketing analytics** | P1-P2 | 2 năm | Aggregate → Delete raw data |

### 4.2. Phương pháp xóa dữ liệu

| Phân loại | Phương pháp xóa | Xác nhận |
|-----------|----------------|----------|
| P1 | Normal delete | Không cần |
| P2 | Secure delete (overwrite 1 lần) | Log ghi nhận |
| P3 | Secure delete (overwrite 3 lần) | Log + xác nhận AI Accountant |
| P4 | Secure delete (overwrite 7 lần) hoặc physical destruction | Log + xác nhận Giám đốc |

---

## V. CHIA SẺ DỮ LIỆU (DATA SHARING)

### 5.1. Nguyên tắc chia sẻ

AINS **không bán, cho thuê, hoặc chia sẻ** dữ liệu khách hàng cho bên thứ ba, trừ trường hợp:

| Trường hợp ngoại lệ | Điều kiện |
|---------------------|-----------|
| **Yêu cầu pháp lý** | Khi cơ quan pháp luật yêu cầu bằng văn bản |
| **Yêu cầu khách hàng** | Khách hàng tự yêu cầu bằng văn bản |
| **Service provider cần thiết** | Chia sẻ tối thiểu cho AI provider, cloud provider — với NDA |
| **Aggregated/anonymized data** | Dữ liệu đã anonymous hoàn toàn, không trace về cá nhân |

### 5.2. Third-party data processing

| Provider | Loại dữ liệu xử lý | Biện pháp bảo vệ | NDA |
|----------|-------------------|-----------------|-----|
| **AI Provider (Claude/GPT)** | Task prompts, context data | Không sử dụng cho training, API only | Theo ToS provider |
| **Cloud Storage** | Toàn bộ dữ liệu công ty | Encryption at rest + in transit | Provider agreement |
| **Email Provider** | Email correspondence | TLS encryption, spam filter | Provider agreement |
| **Payment Processor** | Thông tin thanh toán | PCI-DSS compliant | Provider agreement |

### 5.3. Checklist trước khi chia sẻ

| # | Câu hỏi | Y/N |
|---|---------|-----|
| 1 | Người nhận có need-to-know không? | [ ] |
| 2 | Dữ liệu đã được phân loại đúng chưa? | [ ] |
| 3 | Có NDA hoặc thỏa thuận bảo mật với người nhận chưa? | [ ] |
| 4 | Dữ liệu đã được anonymize (nếu cần) chưa? | [ ] |
| 5 | Có approval từ Giám đốc chưa (P3-P4)? | [ ] |
| 6 | Phương thức truyền tải có an toàn không (encrypted)? | [ ] |

---

## VI. PHẢN HỒI SỰ CỐ (INCIDENT RESPONSE)

### 6.1. Định nghĩa sự cố dữ liệu

Sự cố dữ liệu (Data Incident) bao gồm:

| Loại sự cố | Ví dụ |
|-----------|-------|
| **Data breach** | Dữ liệu P3-P4 bị lộ ra ngoài |
| **Unauthorized access** | AI Worker truy cập data ngoài scope |
| **Data loss** | Dữ liệu bị xóa nhầm, hỏng, không recover được |
| **Data corruption** | Dữ liệu bị thay đổi sai, không nguyên bản |
| **System compromise** | Tài khoản bị hack, malware |

### 6.2. Phản ứng theo mức độ

#### Mức 1: Low — Internal data exposure (P2)

| Bước | Hành động | Thời gian phản hồi |
|------|-----------|-------------------|
| 1 | Xác nhận sự cố | < 1 giờ |
| 2 | Hạn chế truy cập | < 2 giờ |
| 3 | Đánh giá tác động | < 4 giờ |
| 4 | Khắc phục | < 24 giờ |
| 5 | Báo cáo nội bộ | Trong monthly review |

#### Mức 2: Medium — Confidential data exposure (P3)

| Bước | Hành động | Thời gian phản hồi |
|------|-----------|-------------------|
| 1 | Xác nhận sự cố | < 30 phút |
| 2 | Dừng mọi truy cập liên quan | < 1 giờ |
| 3 | Thông báo Giám đốc | < 1 giờ |
| 4 | Đánh giá phạm vi暴露 | < 4 giờ |
| 5 | Thông báo khách hàng (nếu liên quan) | < 24 giờ |
| 6 | Khắc phục và prevent recurrence | < 48 giờ |
| 7 | Post-incident report | < 72 giờ |

#### Mức 3: Critical — Restricted data exposure (P4)

| Bước | Hành động | Thời gian phản hồi |
|------|-----------|-------------------|
| 1 | **KHẨN CẤP** — Ngắt kết nối hệ thống liên quan | NGAY LẬP TỨC |
| 2 | Thông báo Giám đốc | < 15 phút |
| 3 | Đổi toàn bộ mật khẩu/API keys liên quan | < 1 giờ |
| 4 | Đánh giá phạm vi暴露 và dữ liệu bị ảnh hưởng | < 2 giờ |
| 5 | Thông báo cơ quan chức năng (nếu yêu cầu theo luật) | < 24 giờ |
| 6 | Thông báo khách hàng bị ảnh hưởng | < 24 giờ |
| 7 | Khắc phục triệt để | < 48 giờ |
| 8 | Full incident report + remediation plan | < 72 giờ |
| 9 | External audit (nếu cần) | < 2 tuần |

### 6.3. Incident Report Template

```
==========================================
DATA INCIDENT REPORT — AINS
==========================================

Ngày báo cáo: [DD/MM/YYYY]
Người báo cáo: [Tên/Vai trò]
Mức độ: [1/2/3]

1. MÔ TẢ SỰ CỐ
   - Thời gian phát hiện:
   - Thời gian xảy ra (ước tính):
   - Mô tả chi tiết:

2. PHẠM VI ẢNH HƯỞNG
   - Loại dữ liệu bị ảnh hưởng:
   - Số lượng bản ghi:
   - Số người/khách hàng bị ảnh hưởng:

3. NGUYÊN NHÂN GỐC
   - Nguyên nhân trực tiếp:
   - Nguyên nhân gốc rễ:

4. HÀNH ĐỘNG ĐÃ THỰC HIỆN
   - Immediate actions:
   - Corrective actions:

5. HÀNH ĐỘNG PHÒNG NGỪA
   - SOP cần update:
   - System cần thay đổi:
   - AI Worker cần retrain:

6. BÀI HỌC
   - What went wrong:
   - What went well:
   - What to improve:

==========================================
```

---

## VII. QUYỀN CỦA CHỦ THỂ DỮ LIỆU

### 7.1. Quyền của khách hàng về dữ liệu cá nhân

Theo Nghị định 13/2023/NĐ-CP, khách hàng có quyền:

| Quyền | Mô tả | Cách AINS thực hiện |
|-------|-------|---------------------|
| **Quyền được biết** | Biết dữ liệu nào được thu thập | Thông báo khi thu thập, Privacy Policy |
| **Quyền truy cập** | Yêu cầu xem dữ liệu cá nhân | Phản hồi trong 15 ngày làm việc |
| **Quyền chỉnh sửa** | Yêu cầu sửa dữ liệu sai | Cập nhật trong 15 ngày làm việc |
| **Quyền xóa** | Yêu cầu xóa dữ liệu cá nhân | Xóa trong 15 ngày làm việc (trừ yêu cầu lưu trữ pháp lý) |
| **Quyền hạn chế** | Giới hạn xử lý dữ liệu | Ngừng xử lý theo yêu cầu |
| **Quyền di chuyển** | Nhận dữ liệu ở dạng có thể sử dụng | Xuất dữ liệu trong 15 ngày làm việc |

### 7.2. Quy trình xử lý yêu cầu dữ liệu

```
[Nhận yêu cầu từ khách hàng]
          │
          ▼
[Xác minh danh tính người yêu cầu]
          │
          ▼
[Phân loại loại yêu cầu: xem/sửa/xóa/...]
          │
          ▼
[Thực hiện theo quy định]
          │
          ▼
[Xác nhận hoàn thành với khách hàng] ← Trong 15 ngày làm việc
          │
          ▼
[Log yêu cầu và kết quả]
```

---

## VIII. AUDIT VÀ REVIEW

### 8.1. Lịch audit

| Loại audit | Tần suất | Người thực hiện |
|------------|----------|-----------------|
| Access log review | Hàng tháng | AI Accountant |
| Data classification check | Hàng quý | Giám đốc |
| Third-party compliance check | Hàng năm | Giám đốc |
| Full policy review | Hàng năm | Giám đốc |
| Incident response drill | Hàng năm | Giám đốc + AI Workers |

### 8.2. Metrics theo dõi

| Metric | Mục tiêu | Đo lường |
|--------|----------|----------|
| Data incidents/tháng | 0 | Đếm số sự cố |
| Access policy violations | 0 | Audit log |
| Data subject requests processed within SLA | 100% | Track response time |
| Over-retained data cleaned | 100% | Quarterly review |
| Password rotation compliance | 100% | Audit every 90 days |

---

## IX. PHỤ LỤC

### 9.1. Data Processing Register

AINS duy trì Register ghi nhận mọi hoạt động xử lý dữ liệu:

| ID | Hoạt động | Loại dữ liệu | Mục đích | Cơ sở pháp lý | Lưu trữ |
|----|----------|-------------|---------|---------------|---------|
| DP-001 | Customer onboarding | Tên, email, công ty, số điện thoại | Cung cấp dịch vụ | Hợp đồng dịch vụ | 3 năm sau kết thúc |
| DP-002 | Service delivery | Project data, communication logs | Thực hiện dịch vụ | Hợp đồng dịch vụ | 2 năm sau giao |
| DP-003 | Marketing | Email, interests | Gửi newsletter, updates | Consent | Cho đến khi unsubscribe |
| DP-004 | Financial | Invoice data, tax info | Kế toán, thuế | Nghĩa vụ pháp lý | 10 năm |
| DP-005 | Website analytics | IP, pages visited | Cải thiện website | Legitimate interest | 2 năm |

---

**Chủ sở hữu / Giám đốc**

*(Ký, ghi rõ họ tên)*

_________________________

Họ và tên: [Tên Founder]
Ngày ký: [Ngày]

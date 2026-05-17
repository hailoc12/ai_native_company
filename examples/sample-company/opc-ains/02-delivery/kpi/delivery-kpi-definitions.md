# Delivery KPI Definitions — AI Native Solutions (AINS)

**Version:** 1.1
**Ngày tạo:** 2026-01-15
**Cập nhật:** 2026-05-07
**Owner:** Human Owner (Shimazu)

---

## 1. KPI Tổng hợp

### 1.1. On-time Delivery Rate (OTDR)

| Thuộc tính | Chi tiết |
|-----------|----------|
| **Mã KPI** | DEL-KPI-001 |
| **Mục tiêu** | >= 95% |
| **Công thức** | (Số deliverable giao đúng deadline / Tổng số deliverable) x 100 |
| **Đo lường** | Hàng tuần, tổng hợp hàng tháng |
| **Nguồn dữ liệu** | Project Management System (Project AI) |
| **Owner** | Project AI |
| **Escalation** | Human Owner nếu OTDR < 90% trong 2 tuần liên tiếp |

**Phân loại "đúng deadline":**
- Giao trong vòng deadline + 5% buffer time: On-time
- Giao trễ 1-24h: Late (minor)
- Giao trễ > 24h: Late (major)

### 1.2. Customer Satisfaction Score (CSAT)

| Thuộc tính | Chi tiết |
|-----------|----------|
| **Mã KPI** | DEL-KPI-002 |
| **Mục tiêu** | >= 4.5/5.0 |
| **Công thức** | Trung bình tất cả CSAT rating từ khách hàng |
| **Đo lường** | Sau mỗi deliverable, tổng hợp hàng tháng |
| **Nguồn dữ liệu** | CSAT Survey (CS AI) |
| **Owner** | CS AI |
| **Escalation** | Human Owner nếu CSAT < 4.0 trong bất kỳ tháng nào |

**Thang đo:**
- 5: Xuất sắc — vượt kỳ vọng
- 4: Tốt — đáp ứng kỳ vọng
- 3: Khá — cần cải thiện nhỏ
- 2: Kém — không đạt kỳ vọng
- 1: Rất kém — cần hành động ngay

### 1.3. Quality Score (QS)

| Thuộc tính | Chi tiết |
|-----------|----------|
| **Mã KPI** | DEL-KPI-003 |
| **Mục tiêu** | >= 90% |
| **Công thức** | Trung bình QA score của tất cả deliverable |
| **Đo lường** | Sau mỗi QA review, tổng hợp hàng tuần |
| **Nguồn dữ liệu** | QA Review Report (QA AI) |
| **Owner** | QA AI |
| **Escalation** | Human Owner nếu QS < 85% trong 2 deliverable liên tiếp |

**Tiêu chí chấm điểm QA:**
| Tiêu chí | Trọng số |
|----------|----------|
| Hoàn thiện nội dung (Completeness) | 25% |
| Đúng yêu cầu (Requirements) | 25% |
| Chất lượng format & presentation | 20% |
| Không có lỗi (Error-free) | 15% |
| Đúng deadline | 15% |

### 1.4. Support Response Time (SRT)

| Thuộc tính | Chi tiết |
|-----------|----------|
| **Mã KPI** | DEL-KPI-004 |
| **Mục tiêu** | < 2 giờ (trung bình) |
| **Công thức** | Tổng thời gian phản hồi đầu tiên / Tổng số ticket |
| **Đo lường** | Hàng tuần, tổng hợp hàng tháng |
| **Nguồn dữ liệu** | Support System (CS AI) |
| **Owner** | CS AI |
| **Escalation** | Human Owner nếu SRT > 3 giờ trong bất kỳ tuần nào |

---

## 2. KPI Phụ trợ

### 2.1. First Contact Resolution Rate (FCR)

| Thuộc tính | Chi tiết |
|-----------|----------|
| **Mã KPI** | DEL-KPI-005 |
| **Mục tiêu** | >= 70% |
| **Công thức** | (Số ticket giải quyết ở lần phản hồi đầu / Tổng số ticket) x 100 |
| **Owner** | CS AI |

### 2.2. Defect Escape Rate (DER)

| Thuộc tính | Chi tiết |
|-----------|----------|
| **Mã KPI** | DEL-KPI-006 |
| **Mục tiêu** | < 5% |
| **Công thức** | (Số defect khách hàng phát hiện / Tổng số defect) x 100 |
| **Owner** | QA AI |

### 2.3. Change Request Turnaround (CRT)

| Thuộc tính | Chi tiết |
|-----------|----------|
| **Mã KPI** | DEL-KPI-007 |
| **Mục tiêu** | < 48 giờ |
| **Công thức** | Thời gian trung bình từ nhận change request đến phản hồi chấp nhận/từ chối |
| **Owner** | Project AI |

### 2.4. Onboarding Completion Time (OCT)

| Thuộc tính | Chi tiết |
|-----------|----------|
| **Mã KPI** | DEL-KPI-008 |
| **Mục tiêu** | < 5 ngày làm việc |
| **Công thức** | Thời gian từ ký hợp đồng đến hoàn thành onboarding |
| **Owner** | CS AI |

### 2.5. Knowledge Base Coverage (KBC)

| Thuộc tính | Chi tiết |
|-----------|----------|
| **Mã KPI** | DEL-KPI-009 |
| **Mục tiêu** | >= 90% |
| **Công thức** | (Số câu hỏi có sẵn answer trong KB / Tổng số câu hỏi khách hàng) x 100 |
| **Owner** | CS AI |

---

## 3. Bảng tổng hợp KPI

| Mã | Tên KPI | Mục tiêu | Tần suất | Owner |
|----|---------|----------|----------|-------|
| DEL-KPI-001 | On-time Delivery Rate | >= 95% | Weekly | Project AI |
| DEL-KPI-002 | Customer Satisfaction | >= 4.5/5 | Monthly | CS AI |
| DEL-KPI-003 | Quality Score | >= 90% | Weekly | QA AI |
| DEL-KPI-004 | Support Response Time | < 2h | Weekly | CS AI |
| DEL-KPI-005 | First Contact Resolution | >= 70% | Monthly | CS AI |
| DEL-KPI-006 | Defect Escape Rate | < 5% | Monthly | QA AI |
| DEL-KPI-007 | Change Request Turnaround | < 48h | Per occurrence | Project AI |
| DEL-KPI-008 | Onboarding Completion Time | < 5 ngày | Per client | CS AI |
| DEL-KPI-009 | Knowledge Base Coverage | >= 90% | Monthly | CS AI |

## 4. Dashboard & Báo cáo

- **Daily:** Slack notification tự động — các metric quan trọng
- **Weekly:** Delivery Weekly Report (Project AI generate, Human Owner review)
- **Monthly:** Delivery Monthly Report — đầy đủ tất cả KPIs + trend analysis
- **Quarterly:** KPI review meeting — Human Owner đánh giá và điều chỉnh mục tiêu

---

**Phê duyệt:**

Shimazu — Founder & CEO
Ngày: 2026-05-07

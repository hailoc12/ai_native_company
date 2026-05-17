# Framework: Mô hình 1+1+N

**Version:** 1.0
**Last updated:** 2026-03-15
**Owner:** CEO AINS
**Category:** Business Model Framework

---

## Định nghĩa

**1+1+N** là mô hình tổ chức doanh nghiệp mà AINS sử dụng:

- **1** = 1 Con người (CEO) — chiến lược, decision-making, relationship
- **1** = 1 Hệ thống (Company GPS) — điều phối, routing, quality control
- **N** = N AI Workers — thực thi tasks, scale capacity

## Sơ đồ

```
┌─────────────────────────────────────────────┐
│                    CEO                       │
│         (Chiến lược, Decision,              │
│          Relationship, Quality Gate)         │
└──────────────────┬──────────────────────────┘
                   │
                   ▼
┌─────────────────────────────────────────────┐
│              Company GPS                     │
│     (AI Chief of Staff — Routing,           │
│      SOP Enforcement, Quality Gates,        │
│      Reporting, Escalation)                  │
└──────────────────┬──────────────────────────┘
                   │
        ┌──────────┼──────────┐
        ▼          ▼          ▼
   ┌────────┐ ┌────────┐ ┌────────┐
   │  AI #1 │ │  AI #2 │ │  AI #N │
   │ Growth │ │Delivery│ │Backoff │
   └────────┘ └────────┘ └────────┘
```

## Nguyên lý hoạt động

### Nguyên lý 1: Human-as-Conductor
- CEO không execute, CEO **conducts**
- CEO chỉ làm 3 việc: (1) Think strategically, (2) Build relationships, (3) Approve/Reject
- Mọi operational task → delegated to AI Workers qua Company GPS

### Nguyên lý 2: System-as-Operating-System
- Company GPS đóng vai trò OS (hệ điều hành)
- Nhận task → route đến đúng AI Worker → monitor execution → report
- CEO không cần biết AI nào đang làm gì, GPS lo

### Nguyên lý 3: AI-as-Execution-Engine
- Mỗi AI Worker là 1 specialist, không phải generalist
- AI Workers hoạt động theo SOPs, không ad-hoc
- Output quality được quality gates kiểm soát

## So sánh với mô hình truyền thống

| Khía cạnh | Doanh nghiệp truyền thống | 1+1+N Model |
|-----------|--------------------------|-------------|
| Nhân sự | 10-20 người | 1 người + 10 AI |
| Chi phí/tháng | $10,000-30,000 | $500-1,000 |
| Scalability | Tuyển thêm người → chậm, đắt | Clone AI Worker → tức thì, rẻ |
| Consistency | Con người hay sai | AI Workers follow SOPs luôn |
| Creativity | Cao (con người) | Trung bình (AI + human guidance) |
| Emotional intelligence | Cao | Thấp (→ CEO lo relationships) |
| Speed | Chậm (họp, approve多层) | Nhanh (GPS routing, auto-execute) |

## Khi nào 1+1+N KHÔNG phù hợp

1. **Business yêu cầu physical presence** (nhà hàng, sản xuất)
2. **Client yêu cầu team onsite** (một số enterprise contracts)
3. **Cần emotional/negotiation complexity cao** (M&A, legal disputes)
4. **Regulatory yêu cầu human sign-off** (y tế, pháp lý)

## Ứng dụng tại AINS

### AINS 1+1+N Setup
- **1 CEO**: Strategy, client meetings, final approval
- **1 Company GPS**: Task routing, SOP enforcement, quality gates
- **10 AI Workers**:
  - Growth Dept (4): AI Sales Rep, AI Content Manager, AI Content Writer, AI Social Media
  - Delivery Dept (3): AI Project Manager, AI Technical Consultant, AI Quality Reviewer
  - Backoffice Dept (3): AI Finance Manager, AI HR/Admin, AI Knowledge Manager

---
*Changelog: v1.0 — 2026-03-15 — Initial version*

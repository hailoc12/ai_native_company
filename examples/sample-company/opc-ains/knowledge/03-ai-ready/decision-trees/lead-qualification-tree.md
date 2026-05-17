# Lead Qualification Decision Tree

**Version:** 1.0
**Last updated:** 2026-04-01
**Usage**: AI Sales Rep dùng để qualify inbound leads

---

## Quick Scoring (60 seconds)

```
Lead tiếp xúc →
│
├─ Có company name + vị trí quyết định (CEO/CTO/COO)?
│  ├─ YES → +10 điểm
│  └─ NO → +0 điểm
│
├─ Company size 10-100 employees?
│  ├─ YES → +10 điểm
│  └─ NO (>100) → +5 điểm (still qualify, but lower priority)
│  └─ NO (<10) → +0 điểm
│
├─ Budget indicated ≥ $2,000?
│  ├─ YES → +15 điểm
│  ├─ NOT SURE → +5 điểm
│  └─ NO (<$2,000) → -10 điểm
│
├─ Timeline trong 3 tháng tới?
│  ├─ YES → +10 điểm
│  ├─ 3-6 tháng → +5 điểm
│  └─ NO timeline → +0 điểm
│
├─ Industry match (Tech, Retail, Manufacturing, F&B)?
│  ├─ YES → +10 điểm
│  └─ NO → +5 điểm
│
├─ Location: TP.HCM, Hà Nội, hoặc remote?
│  ├─ YES → +5 điểm
│  └─ NO → +0 điểm
│
└─ Referral từ existing client?
   ├─ YES → +15 điểm (bonus)
   └─ NO → +0 điểm
```

## Scoring Result

| Score | Classification | Action |
|-------|---------------|--------|
| **50-60+** | **HOT LEAD (A)** | CEO call within 24h. Priority proposal. |
| **35-49** | **WARM LEAD (B)** | AI Sales Rep nurture. Discovery call within 3 days. |
| **20-34** | **COOL LEAD (C)** | Add to email nurture sequence. Monthly check-in. |
| **<20** | **UNQUALIFIED (D)** | Polite decline hoặc refer đến training courses. |

---

## Decision Tree: Service Recommendation

```
Lead qualified (A/B) →
│
├─ "Chưa biết bắt đầu từ đâu"
│  └─ Recommend: AI Readiness Assessment ($2,000-4,000)
│
├─ "Cần AI strategy/roadmap"
│  └─ Recommend: AI Strategy Consulting ($3,000-8,000)
│
├─ "Team cần học AI"
│  ├─ Budget < $1,500 → Recommend: 1-day Workshop ($500-1,500)
│  └─ Budget ≥ $1,500 → Recommend: 3-5 day Training ($1,500-3,000)
│
├─ "Muốn implement AI" / "Muốn thử 1 use case"
│  ├─ Chưa có strategy → Recommend: Assessment + Pilot bundle
│  └─ Đã có strategy → Recommend: AI Pilot Project ($3,000-8,000)
│
├─ "Đã có AI, cần support"
│  └─ Recommend: Monthly AI Retainer ($800-2,500)
│
└─ "Unclear"
   └─ Schedule discovery call (30 phút) → diagnose → recommend
```

---

## Qualification Questions (Discovery Call Script)

### Must-Ask (5 câu)
1. "Công ty mình đang gặp khó khăn lớn nhất gì liên quan đến AI?"
2. "Team hiện tại có ai đã có kinh nghiệm AI/ML chưa?"
3. "Ngân sách cho dự án này khoảng bao nhiêu?"
4. "Timeline kỳ vọng là khi nào?"
5. "Ai là người ra quyết định cho dự án này?"

### Nice-to-Know
- "Công ty đã thử giải quyết vấn đề này chưa? Kết quả thế nào?"
- "Đang dùng tools/công nghệ gì hiện tại?"
- "Có biết công ty nào đã áp dụng AI thành công trong ngành mình chưa?"

---

## Handoff to CEO

Khi lead được classify là **HOT LEAD (A)**, AI Sales Rep chuẩn bị:

1. **Lead Summary**: 1 trang tóm tắt (company, pain point, budget, timeline)
2. **Recommended service**: Service match + pricing suggestion
3. **Discovery notes**: Key quotes và concerns từ lead
4. **Next step**: Proposed call time

Send qua Company GPS → CEO receives notification → CEO accepts hoặc requests more info.

---
*Review quarterly. Adjust scoring weights based on conversion data.*

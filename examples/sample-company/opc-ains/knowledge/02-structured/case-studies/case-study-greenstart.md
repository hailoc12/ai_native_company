# Case Study: GreenStart — AI Training & Pilot Project

**Client**: GreenStart Vietnam
**Industry**: AgriTech Startup
**Project Duration**: 4 tuần (April 7 — May 2, 2026)
**Contract Value**: $3,200
**Status**: In Progress (80% complete)

---

## Bối cảnh

GreenStart là AgriTech startup 12 nhân sự tại Thủ Đức, TP.HCM. Revenue ~$800K/year, đang ở giai đoạn pre-Series A. Founder Trần Thị Hương muốn dùng AI cho supply chain optimization.

### Vấn đề của khách hàng
- Đội ngũ nhỏ: chỉ 2 dev + 1 self-taught data analyst
- Đã tự build ML models nhưng accuracy thấp, không deploy được production
- Ngân sách rất hạn chế: $2,000-3,000 maximum
- Timeline flexible nhưng "càng sớm càng tốt"
- Fear: "Biết AI có ích nhưng không có người chỉ đường"

---

## Giải pháp của AINS

### Phase 1: Team Assessment & Training (Tuần 1-2)

#### Training Curriculum Design
| Ngày | Topic | Duration | Format |
|------|-------|----------|--------|
| Day 1 | AI/ML Fundamentals cho AgriTech | 4h | Workshop |
| Day 2 | Python ML Pipeline Hands-on | 4h | Lab |
| Day 3 | Data Preparation & Feature Engineering | 3h | Workshop + Lab |
| Day 4 | Model Building với Real Data | 4h | Lab |
| Day 5 | Deployment & Monitoring Basics | 3h | Workshop |

#### Training Outcomes
| Metric | Before | After | Improvement |
|--------|--------|-------|-------------|
| AI/ML knowledge (self-assessed) | 2.1/5 | 3.8/5 | +81% |
| Python ML confidence | 1.5/5 | 3.2/5 | +113% |
| Can build basic ML pipeline | 0/3 | 2/3 | — |
| Can explain AI to stakeholders | 1/3 | 3/3 | — |

### Phase 2: Pilot Project — Crop Yield Prediction (Tuần 3-4)

#### Technical Approach
1. **Data**: 2 năm historical data (weather, soil, yield) từ POS/ERP system
2. **Model**: Gradient Boosting (XGBoost) — phù hợp data size nhỏ, interpretable
3. **Features**: Temperature, rainfall, humidity, soil pH, fertilizer amount, crop variety
4. **Target**: Crop yield (tons/hectare)

#### Pilot Results (preliminary)
| Metric | Baseline (current) | AI Model | Improvement |
|--------|--------------------|---------|-------------|
| Yield prediction accuracy | ±22% | ±8% | **64% improvement** |
| Data processing time | 6h manual | 15min automated | **96% faster** |
| Actionable insights/month | 2 | 12 | **6x increase** |

#### Key Features Delivered
- Automated data pipeline (weather API + internal data → clean dataset)
- ML model training script (retrainable hàng tháng)
- Prediction dashboard (simple Streamlit app)
- Alert system (anomaly detection cho unusual patterns)

---

## Kết quả (dự kiến khi hoàn thành)

### ROI Projection
| Item | Value |
|------|-------|
| Project cost | $3,200 |
| Projected annual savings (better yield prediction) | $12,000-18,000 |
| Projected waste reduction | $8,000-12,000/year |
| **Payback period** | **1.5-2 months** |
| **Projected 1-year ROI** | **375-562%** |

### Client Feedback (mid-project)
> *"Lần đầu tiên team em cảm thấy AI không phải 'chuyện trên trời' nữa. AINS dạy rất practical, bằng tiếng Việt, hiểu hoàn cảnh startup. Anh em team rất hài lòng."*
— Trần Thị Hương, Founder GreenStart

---

## Challenges & Risks

### Identified Risks
1. **Data quality**: Historical data có gaps, cần manual cleaning → mitigation: thêm data cleaning SOP
2. **Team retention**: Startup environment, risk mất trained staff → mitigation: documentation chi tiết
3. **Scale limitation**: Pilot chỉ cho 1 crop type, cần expand → future project scope

### Current Blockers
- [ ] Waiting: Client confirm production server setup (expected May 5)
- [ ] Pending: Final model tuning với full dataset

---

## Lessons Learned

### What went well
1. **Training-first approach**: Client appreciate "teach to fish" hơn "give fish"
2. **AgriTech domain**: AI Workers research industry quickly → relevant examples
3. **Startup-friendly pricing**: Flexible payment (50/50 split) giúp client accept

### What could improve
1. Data quality assessment nên làm TRƯỚC training, không phải song song
2. Nên set expectations rõ hơn về "AI không phải magic" — client kỳ vọng quá cao ban đầu
3. Documentation cần cả tiếng Việt lẫn English (team mixed language)

### SOPs Updated
- Updated `SOP-DEL-002` (Client Training) — thêm data assessment pre-training
- Created `SOP-DEL-009` (Startup Client Engagement) — flexible pricing, milestone-based
- Updated `SOP-DEL-006` (Expectation Setting) — thêm "AI reality check" step

---
*Date documented: 2026-04-30 | Author: AI Project Manager | Status: Will update upon project completion*

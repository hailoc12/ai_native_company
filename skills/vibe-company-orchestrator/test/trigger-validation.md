# Trigger Validation — vibe-company-orchestrator

> Test description frontmatter triggers skill correctly.

## Should Trigger (positive cases)

User gõ những câu sau → vibe-company-orchestrator phải match:

1. **"Khởi tạo công ty cho startup SaaS của tôi"**
   - Signal: "khởi tạo công ty" + industry
   - Expected: MATCH

2. **"Tạo toàn bộ cấu trúc công ty: phòng ban, SOP, KPI"**
   - Signal: "toàn bộ cấu trúc công ty" + SOP + KPI
   - Expected: MATCH

3. **"Thiết kế company theo Porter Value Chain cho F&B"**
   - Signal: "company" + "Porter Value Chain" + industry
   - Expected: MATCH

4. **"Build org chart + RACI + OKR cho công ty 30 người"**
   - Signal: "org chart" + "RACI" + "OKR" + company size
   - Expected: MATCH

5. **"Trần sao âm vậy — thiết kế công ty như hệ thống"**
   - Signal: slogan + "thiết kế công ty"
   - Expected: MATCH

6. **"Activate AI workforce cho toàn bộ company"**
   - Signal: "activate AI workforce" + "company"
   - Expected: MATCH (Phase 6)

## Should NOT Trigger (negative cases)

1. **"Tạo 1 SOP cho content marketing"** → vibe-sop-orchestrator (single SOP, không phải whole company)
2. **"Build AI workforce cho team marketing"** → vibe-aiworkforce (workforce, không phải company structure)
3. **"Review chất lượng SOP này"** → vibe-review (review, không phải generate)
4. **"Phân tích sâu vấn đề X"** → vibe-xthinking / vibe-gps (problem solving)

## Boundary cases

- **"Tạo company + AI workforce luôn"** → MATCH (kích hoạt Phase 6 sau khi structure xong)
- **"Setup 1 phòng ban marketing"** → gần boundary → hỏi clarify: cả company hay chỉ 1 dept?

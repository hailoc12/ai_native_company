# QA Checklist Template — AINS Standard

**Version:** 1.1
**Last Updated:** 2026-05-07
**Owner:** QA AI

---

## Hướng dẫn sử dụng

1. Chọn checklist phù hợp với loại deliverable
2. Review từng item, đánh dấu Pass/Fail/N/A
3. Ghi chú cho mỗi Fail item
4. Tính tổng score theo công thức ở cuối
5. Attach vào QA Report

---

## A. Document/Report Checklist

### A1. Completeness (Trọng số: 25%)

| ID | Check Item | Pass | Fail | N/A | Notes |
|----|-----------|------|------|-----|-------|
| COM-01 | Trang bìa: Title, date, version, client name, AINS logo | | | | |
| COM-02 | Mục lục (Table of Contents) chính xác, page numbers đúng | | | | |
| COM-03 | Executive Summary / TL;DR có (max 1 page) | | | | |
| COM-04 | Tất cả sections trong outline có đầy đủ nội dung | | | | |
| COM-05 | Appendices và supporting documents (nếu require) có đủ | | | | |
| COM-06 | Page numbering liên tục, không bị miss | | | | |
| COM-07 | Version number và date updated ở cover + footer | | | | |

**Completeness Score:** ___/7 = ___%

### A2. Requirements (Trọng số: 25%)

| ID | Check Item | Pass | Fail | N/A | Notes |
|----|-----------|------|------|-----|-------|
| REQ-01 | Đáp ứng đúng scope trong SoW/Project Brief | | | | |
| REQ-02 | Đúng audience level (technical/business/mixed) | | | | |
| REQ-03 | Đúng ngôn ngữ yêu cầu (VI/EN/Mixed) | | | | |
| REQ-04 | Đúng format yêu cầu (PDF/Doc/Slide/Notion) | | | | |
| REQ-05 | Client-specific requirements addressed | | | | |
| REQ-06 | All required data/analysis present | | | | |

**Requirements Score:** ___/6 = ___%

### A3. Presentation (Trọng số: 20%)

| ID | Check Item | Pass | Fail | N/A | Notes |
|----|-----------|------|------|-----|-------|
| PRE-01 | Heading hierarchy consistent (H1, H2, H3) | | | | |
| PRE-02 | Font style, size consistent throughout | | | | |
| PRE-03 | Spacing, margins consistent | | | | |
| PRE-04 | Charts/tables có title, label, source | | | | |
| PRE-05 | Visual elements (images, icons) chất lượng tốt | | | | |
| PRE-06 | Color scheme consistent và professional | | | | |
| PRE-07 | Readability — sentences không quá dài, paragraph rõ ràng | | | | |
| PRE-08 | AINS branding đúng chuẩn (logo, color, font) | | | | |

**Presentation Score:** ___/8 = ___%

### A4. Error-free (Trọng số: 15%)

| ID | Check Item | Pass | Fail | N/A | Notes |
|----|-----------|------|------|-----|-------|
| ERR-01 | Spelling check passed (no typos) | | | | |
| ERR-02 | Grammar check passed | | | | |
| ERR-03 | Data/numbers chính xác (cross-check với source) | | | | |
| ERR-04 | Calculations đúng (if applicable) | | | | |
| ERR-05 | All links hoạt động (internal + external) | | | | |
| ERR-06 | Cross-references đúng (section references, page refs) | | | | |
| ERR-07 | No duplicate content | | | | |

**Error-free Score:** ___/7 = ___%

### A5. Timeliness (Trọng số: 15%)

| ID | Check Item | Pass | Fail | N/A | Notes |
|----|-----------|------|------|-----|-------|
| TIM-01 | Deliverable giao đúng deadline | | | | |
| TIM-02 | Nếu trễ: delay reason documented và accepted | | | | |
| TIM-03 | Review turnaround trong SLA (< 4h) | | | | |

**Timeliness Score:** ___/3 = ___%

---

## B. Code/Technical Deliverable Checklist

### B1. Functionality
| ID | Check Item | Pass | Fail | N/A | Notes |
|----|-----------|------|------|-----|-------|
| FN-01 | Core features hoạt động đúng requirements | | | | |
| FN-02 | Edge cases được handle | | | | |
| FN-03 | Error messages meaningful | | | | |
| FN-04 | Performance acceptable (< SLA) | | | | |

### B2. Code Quality
| ID | Check Item | Pass | Fail | N/A | Notes |
|----|-----------|------|------|-----|-------|
| CQ-01 | Code readable, well-structured | | | | |
| CQ-02 | Comments cho complex logic | | | | |
| CQ-03 | No hardcoded values (configurable) | | | | |
| CQ-04 | Error handling implemented | | | | |

### B3. Testing
| ID | Check Item | Pass | Fail | N/A | Notes |
|----|-----------|------|------|-----|-------|
| TST-01 | Unit tests passed | | | | |
| TST-02 | Integration tests passed | | | | |
| TST-03 | No critical/high severity bugs open | | | | |

### B4. Documentation
| ID | Check Item | Pass | Fail | N/A | Notes |
|----|-----------|------|------|-----|-------|
| DOC-01 | README/Setup guide có | | | | |
| DOC-02 | API documentation (if applicable) | | | | |
| DOC-03 | Deployment instructions | | | | |

---

## C. Presentation/Slide Checklist

| ID | Check Item | Pass | Fail | N/A | Notes |
|----|-----------|------|------|-----|-------|
| SLD-01 | Slide deck có structure rõ ràng (agenda, content, summary) | | | | |
| SLD-02 | Mỗi slide có 1 main message | | | | |
| SLD-03 | Text không quá nhiều (max 6 bullets/slide) | | | | |
| SLD-04 | Visual elements (charts, images) hỗ trợ message | | | | |
| SLD-05 | Consistent template, font, color | | | | |
| SLD-06 | Speaker notes có (if needed) | | | | |
| SLD-07 | Data准确, sourced | | | | |
| SLD-08 | Conclusion + Next steps rõ ràng | | | | |

---

## Scoring Formula

### Weighted Score Calculation

```
Total Score = (Completeness x 0.25) + (Requirements x 0.25) +
              (Presentation x 0.20) + (Error-free x 0.15) +
              (Timeliness x 0.15)
```

### Decision Matrix

| Score Range | Decision | Action |
|-------------|----------|--------|
| 90-100% | Pass — Excellent | Auto-approve |
| 80-89% | Pass — Good | Approve với improvement notes |
| 70-79% | Conditional | Human Owner review required |
| < 70% | Fail | Reject, rework required |

---

## Review Summary

| Field | Value |
|-------|-------|
| **Deliverable** | ___ |
| **Project** | ___ |
| **Reviewer** | QA AI |
| **Review Date** | ___ |
| **Completeness** | ___% |
| **Requirements** | ___% |
| **Presentation** | ___% |
| **Error-free** | ___% |
| **Timeliness** | ___% |
| **Total Score** | ___% |
| **Decision** | [Pass/Conditional/Fail] |
| **Issues Found** | ___ Critical, ___ Major, ___ Minor, ___ Info |
| **Recommended Action** | ___ |

**QA AI Signature:** __________________
**Date:** __________________

# AINS Knowledge System — Second Brain

## Tổng quan

Hệ thống tri thức của AINS (AI Native Solutions) được thiết kế theo kiến trúc **3-tier**, tối ưu cho cả con người lẫn AI Workers. Mọi kiến thức đều được capture, process, và package để AI có thể truy xuất và sử dụng ngay lập tức.

## Kiến trúc 3 tầng

```
┌─────────────────────────────────────────────────┐
│  03-ai-ready/    ← AI-optimized knowledge       │
│  (Company context, product catalog, FAQ,         │
│   decision trees — sẵn sàng inject vào prompt)   │
├─────────────────────────────────────────────────┤
│  02-structured/  ← Processed, organized          │
│  (Playbooks, frameworks, case studies,           │
│   templates — đã xử lý, có cấu trúc)             │
├─────────────────────────────────────────────────┤
│  01-raw/         ← Raw materials, unprocessed    │
│  (Research, interviews, competitor data,          │
│   industry trends — nguyên bản, chưa xử lý)      │
└─────────────────────────────────────────────────┘
```

## Nguyên tắc vận hành

### 1. Luôn Capture → Process → Package
- **Capture**: Mọi thông tin đầu vào ghi vào `01-raw/`
- **Process**: Phân tích, tóm tắt, cấu trúc → chuyển vào `02-structured/`
- **Package**: Tối ưu cho AI consumption → chuyển vào `03-ai-ready/`

### 2. AI-First Design
- Mọi document phải có `metadata header` (YAML frontmatter)
- Nội dung dùng `heading hierarchy` rõ ràng (H1 → H4)
- Tránh jargon không cần thiết, ưu tiên clear và concise
- Mỗi file focus vào 1 topic duy nhất

### 3. Living Documents
- Review và update định kỳ theo SOP
- Version control qua Git
- Changelog ở cuối mỗi document

## Cấu trúc thư mục

| Thư mục | Mục đích | Ai sử dụng |
|---------|----------|------------|
| `01-raw/` | Nguyên liệu thô, chưa xử lý | CEO, AI Researcher |
| `02-structured/` | Đã xử lý, có cấu trúc | Tất cả AI Workers |
| `03-ai-ready/` | Tối ưu cho AI, inject vào prompt | AI Workers, Company GPS |

## Quy trình thêm kiến thức mới

1. Ghi nhận vào `01-raw/` với timestamp và source
2. Trong weekly review, AI Knowledge Manager process → `02-structured/`
3. Nếu cần cho daily operations → package → `03-ai-ready/`
4. Update README nếu có thay đổi cấu trúc

## Maintenance Schedule

| Tần suất | Hoạt động | Owner |
|----------|-----------|-------|
| Daily | Capture raw inputs | CEO |
| Weekly | Process raw → structured | AI Knowledge Manager |
| Monthly | Update AI-ready packages | AI Knowledge Manager |
| Quarterly | Full audit & cleanup | CEO + AI KM |

---
*Last updated: 2026-05-07 | Version: 1.0*

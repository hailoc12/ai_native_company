# Skill Description Rubric

> Reference cho viết description skill. Rút gọn + bổ sung từ `resources/description-anti-patterns.md`.

## Công thức 4 thành phần

```
[WHAT]. [TRIGGER]. [EXCLUSION]. [PUSH].
```

### WHAT (Định nghĩa)
`[Động từ sản xuất] + [Output cụ thể] + [Chuẩn/Domain]`

**Tốt:** "Tạo văn bản hành chính tiếng Việt đúng chuẩn NĐ 30, xuất file .docx"
**Xấu:** "Skill hỗ trợ viết văn chuyên nghiệp"

### TRIGGER (Tín hiệu) — Trộn 4 loại
1. **A — Từ khóa chuyên ngành:** 'công văn', 'tờ trình', 'NĐ 30'
2. **B — Cụm nói tự nhiên:** 'soạn văn bản', 'viết công văn gửi Sở X'
3. **C — Biến thể:** 'mẫu chuẩn', 'format VB'
4. **D — Tình huống:** 'gửi văn bản đi cơ quan nhà nước'

**Cú pháp:** "Kích hoạt khi user đề cập '[A]'; yêu cầu '[B]'; nói '[C]'; trong tình huống [D]"

### EXCLUSION (Khoanh vùng)
**Cú pháp:** "KHÔNG dùng cho: [case loại trừ] (→ [skill thay thế nếu có])"

### PUSH (Chống undertrigger)
**Câu CUỐI description** — vị trí có trọng lượng cao nhất.
**Cú pháp:** "Dùng cho MỌI [domain] — kể cả khi user chỉ nói '[weak signal]'"

## Giới hạn
- **80-250 từ**
- Tránh keyword dump (<40 từ)
- Không quá dài (>300 từ)

## 10 Anti-patterns phổ biến

1. ❌ Description dưới 40 từ (keyword dump) → trigger rate < 30%
2. ❌ TRIGGER chỉ có từ khóa chuyên ngành → miss 70% cách nói tự nhiên
3. ❌ EXCLUSION không chỉ skill thay thế → Claude không biết route đi đâu
4. ❌ Thiếu câu PUSH ở cuối → Claude undertrigger 40-50%
5. ❌ PUSH dùng "có thể" thay vì "Dùng cho MỌI" → Claude skip skill
6. ❌ Description > 300 từ → tốn context, loãng tín hiệu
7. ❌ Description mô tả "bên trong có gì" thay vì "khi nào dùng"
8. ❌ Không test trigger với 3-5 câu user thật → không biết trigger có work
9. ❌ Duplicate keywords với skill khác → ambiguous triggering
10. ❌ Description mơ hồ về output format ("hỗ trợ", "giúp đỡ", "cung cấp")

## Trigger Validation Test

```
Sau khi viết description → test với:

Should Trigger (3-5 câu):
  → User gõ: "[câu lệnh thực tế mà skill phải kích hoạt]"
  → Expected: skill match

Should NOT Trigger (3-5 câu bẫy):
  → User gõ: "[câu gần giống nhưng thuộc skill khác]"
  → Expected: skill NOT match

Nếu test fail → sửa description theo anti-patterns trên → re-test.
```

## Examples tốt

```
"Tạo văn bản hành chính tiếng Việt đúng chuẩn NĐ 30, xuất file .docx
với font Times New Roman 13pt. Kích hoạt khi user đề cập 'công văn',
'tờ trình', 'NĐ 30'; yêu cầu 'soạn văn bản', 'viết công văn gửi Sở X';
nói 'mẫu chuẩn', 'format VB'; trong tình huống gửi văn bản đi cơ quan
nhà nước. KHÔNG dùng cho: hợp đồng thương mại (→ vibe-contract-writer),
email marketing (→ vibe-content-writer). Dùng cho MỌI văn bản hành
chính — kể cả khi user chỉ nói 'viết cái giấy gửi phòng X'."
```

→ 4 thành phần đầy đủ, 180 từ, có skill thay thế rõ ràng, có weak signal example.

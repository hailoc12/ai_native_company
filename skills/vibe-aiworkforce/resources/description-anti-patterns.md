# Anti-patterns khi viết Description

10 lỗi phổ biến nhất khi viết description skill, kèm chẩn đoán và cách chữa.
Dùng trong Phase E khi viết description cho mỗi skill mới.

---

## Lỗi 1 — Description quá ngắn ("keyword dump")

**Triệu chứng:** Description dưới 40 từ, chỉ là cụm danh từ không có động từ.

**Hậu quả:** Trigger rate thường dưới 30%. Claude phải đoán mò.

**Cách chữa:** Áp dụng công thức 4 thành phần (WHAT/TRIGGER/EXCLUSION/PUSH). Tối thiểu 80 từ.

---

## Lỗi 2 — Description như "mô tả nội bộ"

**Triệu chứng:** Mô tả *bên trong có gì* thay vì *khi nào dùng*. "Skill này chứa 5 module con:..."

**Hậu quả:** Claude không biết khi nào trigger vì description không nói "khi user làm X thì dùng skill này".

**Cách chữa:** Viết lại tập trung vào use-case (WHEN) thay vì cấu trúc (WHAT'S INSIDE).

---

## Lỗi 3 — WHAT dùng từ sáo rỗng

**Triệu chứng:** "Hỗ trợ viết nội dung chất lượng cao, chuyên nghiệp, thu hút độc giả."

**Hậu quả:** Không phân biệt được skill này với bất kỳ skill nào khác.

**Cách chữa:**
- Đổi "Hỗ trợ" → "Viết" / "Tạo" / "Soạn"
- Đổi "nội dung" → "bài blog dài" / "bài Facebook 300-800 từ" / "whitepaper"
- Đổi "chất lượng cao" → chuẩn cụ thể: "theo chuẩn xuất bản không dấu vết AI"

---

## Lỗi 4 — TRIGGER chỉ có loại A (thuật ngữ)

**Triệu chứng:** Chỉ liệt kê từ khóa chuyên ngành, thiếu cách nói tự nhiên.

**Hậu quả:** User gõ "giúp tôi viết một bài phản biện" — không chạm trigger nào. Miss 70% case thực tế.

**Cách chữa:** Bổ sung cả 4 loại (A: thuật ngữ, B: nói tự nhiên, C: đồng nghĩa, D: ngữ cảnh).

---

## Lỗi 5 — EXCLUSION không có skill thay thế

**Triệu chứng:** "KHÔNG dùng cho các loại nội dung khác hoặc các task không phù hợp."

**Hậu quả:** Giống biển báo "không đỗ xe" mà không chỉ bãi đỗ thay thế. Claude vẫn cố dùng skill.

**Cách chữa:** Mỗi exclusion phải có skill thay thế: "KHÔNG dùng cho: văn bản hành chính (→ van-ban-hanh-chinh)."

---

## Lỗi 6 — Thiếu PUSH

**Triệu chứng:** Description kết thúc ở EXCLUSION, không có câu "Dùng cho MỌI..."

**Hậu quả:** Claude bias sang "khi nghi ngờ thì đừng dùng". Undertrigger 40-50%.

**Cách chữa:** Thêm câu PUSH ở cuối: "Dùng cho MỌI yêu cầu [domain] — kể cả khi user chỉ nói '[weak signal]'."

---

## Lỗi 7 — PUSH quá yếu

**Triệu chứng:** Dùng "Có thể dùng cho..." thay vì mệnh lệnh mạnh.

**Hậu quả:** "Có thể" = optional. Claude skip skill.

**Cách chữa:** Dùng mệnh lệnh mạnh: "Dùng cho MỌI..." / "Luôn dùng skill này khi..." / "Phải dùng..."

---

## Lỗi 8 — Description quá dài (> 300 từ)

**Hậu quả:** Tốn context vĩnh viễn, loãng tín hiệu trigger, tăng false positive.

**Cách chữa:**
1. Gộp trigger trùng nghĩa → giữ 1 đại diện
2. Chuyển giải thích cách làm xuống body
3. Cắt danh sách output dư thừa
4. Xóa mô tả module nội bộ

---

## Lỗi 9 — Copy description từ README

**Chẩn đoán:** Description viết cho *người đọc* hiểu dự án, không phải cho *Claude* decide khi nào dùng skill. 2 mục đích hoàn toàn khác.

**Cách chữa:** Viết lại theo công thức 4 thành phần. README là nguyên liệu, không phải description.

---

## Lỗi 10 — Không test với "cách nói tự nhiên"

**Cách chẩn đoán:** Sau khi viết xong, tưởng tượng user gõ bằng tiếng Việt thường. Kiểm tra description có match không.

**Cách chữa:** Viết ra 3-5 câu "user thật sự sẽ gõ", kiểm tra từng câu có chạm trigger nào. Trigger nào không bắt được → thêm cách nói đó.

---

## Quy trình review nhanh 60 giây

1. Đếm từ → kiểm lỗi 1 (quá ngắn) và lỗi 8 (quá dài)
2. Đọc câu đầu → kiểm lỗi 2 (mô tả nội bộ) và lỗi 3 (từ sáo rỗng)
3. Đếm loại trigger → kiểm lỗi 4 (chỉ có loại A)
4. Tìm cụm "KHÔNG dùng" → kiểm lỗi 5 (không có skill thay thế)
5. Đọc câu cuối → kiểm lỗi 6 (thiếu PUSH) và lỗi 7 (PUSH yếu)
6. Test 3 câu user tự nhiên → kiểm lỗi 10 (thiếu cách nói tự nhiên)

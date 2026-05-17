# Chương 2: Thiết kế — AI Native Company

> "Nếu bạn muốn xây một tòa nhà, bạn không bắt đầu bằng việc mua gạch. Bạn bắt đầu bằng bản vẽ."
>
> — Nguyên tắc thiết kế OPC

Chương 1 đã trả lời câu hỏi **TẠI SAO** — tại sao OPC khả thi, tại sao AI thay đổi luật chơi, tại sao đây là đúng thời điểm. Chương 2 này trả lời câu hỏi **NHƯ THẾ NÀO** — thiết kế một AI Native Company từ con số 0. Không lý thuyết suông. Bạn sẽ đi qua toàn bộ bản vẽ: từ định nghĩa đến kiến trúc, từ 7 trụ cột đến cấu trúc thư mục, từ SOP state machine đến tuần làm việc thực tế của tổng giám đốc OPC. Mỗi khái niệm đều đi kèm ví dụ từ AI Native Solutions (AINS) — công ty mẫu 1 người + 10 AI Workers mà bạn có thể mở thư mục lên và xem trực tiếp.

---

## 2.1 AI Native Company là gì

### Định nghĩa

**AI Native Company** là công ty được THIẾT KẾ từ đầu cho AI — không phải công ty truyền thống có "thêm AI vào". Sự khác biệt này tưởng nhỏ. Nhưng thực chất là khác biệt căn bản. Giống như sự khác biệt giữa một tòa nhà được thiết kế cho thang máy so với một tòa nhà cũ sau đó "khoét thêm lỗ để lắp thang máy". Cả hai đều có thang máy. Nhưng tòa được thiết kế sẵn tối ưu từ móng — không có hành lang chết, không có góc khuất, mọi tầng đều kết nối mượt mà.

AINS là một AI Native Company. Khi đọc file `opc-ains/README.md`, bạn thấy ngay câu: *"Founder không làm việc — Founder thiết kế cách làm việc."* Không phải slogan. Đó là nguyên tắc thiết kế.

### Ba tiếp cận — So sánh

Để hiểu rõ hơn, hãy so sánh 3 cách doanh nghiệp tiếp cận AI:

**1. Traditional (Truyền thống)**

Công ty vận hành hoàn toàn bằng con người. Mọi quy trình đều chạy qua nhân sự — từ marketing đến kế toán. Không có AI. Quyết định dựa trên kinh nghiệm cá nhân. Tốc độ phụ thuộc vào tốc độ con người.

- Ưu điểm: Kiểm soát tuyệt đối, phù hợp mô hình nhỏ.
- Nhược điểm: Không scale được. Founder là thắt cổ chai.

**2. AI-Enhanced (Truyền thống + AI)**

Công ty truyền thống bắt đầu thêm AI tools vào quy trình. Dùng ChatGPT viết email, dùng AI tạo hình ảnh, dùng Copilot hỗ trợ code. Nhưng cấu trúc công ty không đổi — vẫn phòng ban cũ, workflow cũ, reporting cũ. AI chỉ là "add-on".

- Ưu điểm: Tăng productivity ngay lập tức, ít rủi ro.
- Nhược điểm: Tiềm năng AI bị giới hạn bởi cấu trúc cũ. Giống như gắn động cơ xe máy lên xe đạp — nhanh hơn, nhưng không phải ô tô.

**3. AI-Native (Thiết kế cho AI từ đầu)**

Công ty được thiết kế từ con số 0 với giả định: AI là nhân sự chính, con người là người thiết kế hệ thống. Mọi quy trình đều có SOP (Standard Operating Procedure) trước khi thực hiện. Mỗi "nhân viên" là một AI Worker với role, KPI, và performance review. Con người chỉ xuất hiện ở các cổng quyết định chiến lược.

- Ưu điểm: Cấu trúc chi phí cực thấp, tốc độ cực cao, scale gần như vô hạn.
- Nhược điểm: Yêu cầu tư duy hệ thống mạnh, thời gian thiết kế ban đầu đáng kể.

📊 **Dữ liệu:** AINS vận hành với chi phí AI khoảng $200-400/tháng cho 10 AI Workers, so với chi phí nhân sự tương đương khoảng $8,000-15,000/tháng ở Việt Nam. Tiết kiệm 95-97% chi phí lương.

### Tại sao AI-Native thắng

AI-Native thắng ở 4 dimension:

**Cost Structure (Cấu trúc chi phí):** Không lương. Không bảo hiểm, thưởng, phúc lợi, văn phòng. Chi phí AI tăng theo usage, không tăng theo headcount. AINS thêm AI Worker thứ 11 mà chi phí tăng chỉ $20-50/tháng.

**Speed (Tốc độ):** AI Workers hoạt động 24/7. Không cần nghỉ, không sick leave. Bài blog viết trong 15 phút thay vì 4 giờ. Báo cáo tài chính xuất trong 5 phút thay vì 2 ngày.

**Scalability (Khả năng mở rộng):** Từ 3 khách hàng lên 30, bạn không cần thuê thêm ai. Chỉ mở rộng capacity của AI Workers. Thư mục `opc-ains/03-backoffice/invoicing/output/` cho thấy 3 hóa đơn trong tháng 5, nhưng quy trình tương tự xử lý 30 hóa đơn mà không cần thay đổi SOP.

**Consistency (Tính đồng nhất):** Mọi output tuân thủ SOP. Không có "bad day". Không có "nhân viên mới chưa quen". Quality score của AI Worker ổn định ở 4.0-4.7/5.0, tuần nào cũng vậy.

### 5 đặc điểm của AI Native Company

🔑 **Đặc điểm 1: SOP-first**

Quy tắc đầu tiên và quan trọng nhất: mọi quy trình đều có SOP TRƯỚC khi thực hiện. Không có "làm rồi viết SOP sau". Tại sao? Vì AI Worker cần instruction rõ ràng để thực hiện task. Bạn không thể nói "Marketing AI, viết bài gì hay hay đi" — bạn cần SOP cụ thể: topic gì, keyword gì, tone gì, length bao nhiêu, review ở đâu.

AINS có 30 SOPs vận hành, từ `SOP-GRO-001` (Lead Generation) đến `SOP-BKO-010` (Tool Evaluation). Tất cả được ghi nhận trong file `_company-gps/sop-register.md`.

🔑 **Đặc điểm 2: AI as Staff**

Thay vì xem AI như công cụ, hãy xem AI như nhân viên. Có role, KPI, performance review giống nhân viên thật. Mỗi AI Worker trong AINS có profile riêng (xem `opc-ains/_ai-workforce/workforce-map.md`), bao gồm: role, primary goal, tools, SOPs được assign, quality score, và escalation rules. AI-06 Technical Consultant đạt 4.7/5.0 — cao nhất toàn công ty. AI-03 Content Writer ở 3.8/5.0 — đang được tối ưu prompt.

🔑 **Đặc điểm 3: Human at Gates**

Con người không làm công việc. Con người phê duyệt công việc. Tổng giám đốc chỉ xuất hiện ở các **cổng quyết định**: content publishing, client deliverable, financial transaction, contract signing, strategic decision. Nguyên tắc: **AI làm 80%, người phê duyệt 20% — nhưng 20% đó quyết định 100% chất lượng.**

🔑 **Đặc điểm 4: Knowledge Loop**

Công ty càng vận hành, càng thông minh. Output tạo ra knowledge. Knowledge làm phong phú input tiếp theo. Vòng lặp này chạy liên tục. Thư mục `knowledge/` trong AINS được thiết kế theo kiến trúc 3-tier: Raw → Structured → AI-ready. Mỗi project hoàn thành, mỗi bài viết published đều feed back vào knowledge base.

🔑 **Đặc điểm 5: PDCA Forever**

Plan-Do-Check-Act chạy mỗi tuần. Không ngừng. Không phải "PDCA khi có vấn đề" — mà là PDCA như nhịp tim. Mỗi tuần: tổng giám đốc review performance, AI Workers báo cáo, SOP được cập nhật, AI config được tối ưu. Đây không phải project có start và end. Đây là cách vận hành.

---

## 2.2 Kiến trúc Tổng thể — 3 Tầng

AI Native Company cần kiến trúc rõ ràng. Không thể xây nhà không có bản vẽ. Tại AINS, chúng tôi sử dụng kết hợp Archimate (ngôn ngữ mô hình kiến trúc doanh nghiệp) và Porter Value Chain (chuỗi giá trị) để tạo ra kiến trúc 3 tầng.

### Ba tầng kiến trúc

```
┌═══════════════════════════════════════════════════════════┐
║  LAYER 1 — STRATEGY (Chiến lược)                        ║
║  Vision │ Value Proposition │ Target Market │ Brand      ║
║  Thuộc về: CEO (System Designer)                         ║
╠═══════════════════════════════════════════════════════════╣
║  LAYER 2 — PRIMARY ACTIVITIES (Hoạt động chính)         ║
║                                                          ║
║  ┌──────────┐  ┌───────────┐  ┌──────────┐  ┌─────────┐ ║
║  │ Marketing │  │   Sales   │  │Delivery/ │  │Customer │ ║
║  │ & Brand  │  │ & Revenue │  │Operations│  │ Service │ ║
║  └──────────┘  └───────────┘  └──────────┘  └─────────┘ ║
║  Mapped to: 01-growth + 02-delivery                     ║
╠═══════════════════════════════════════════════════════════╣
║  LAYER 3 — SUPPORT ACTIVITIES (Hoạt động hỗ trợ)        ║
║                                                          ║
║  ┌──────────┐  ┌───────────┐  ┌──────────┐  ┌─────────┐ ║
║  │ Finance  │  │ HR/Admin  │  │ Legal &  │  │Knowledge│ ║
║  │ &Account │  │ & Schedule│  │Compliance│  │ & IT    │ ║
║  └──────────┘  └───────────┘  └──────────┘  └─────────┘ ║
║  Mapped to: 03-backoffice + knowledge + legal            ║
╚═══════════════════════════════════════════════════════════╝
```

**Layer 1 — Strategy:** Đây là nơi CEO (bạn) làm việc. Không phải ngày nào cũng làm. Nhưng mọi quyết định ở tầng này ảnh hưởng toàn bộ công ty — tầm nhìn, thị trường mục tiêu, giá trị cốt lõi, brand positioning. Tại AINS, layer này được ghi chép trong `charter/vision-mission-values.md` và `charter/business-strategy.md`.

**Layer 2 — Hoạt động chính:** Bốn hoạt động chính theo Porter Value Chain: Marketing, Sales, Operations, Customer Service. Trong OPC, 4 hoạt động này gom thành 2 phòng ban — **Growth** (Marketing + Sales) và **Delivery** (Operations + CS). AI Workers thực hiện 100% công việc ở tầng này.

**Layer 3 — Hoạt động hỗ trợ:** Finance, HR, Legal, Knowledge/IT — 4 hoạt động hỗ trợ gom vào phòng ban **Backoffice**. Tầng này cũng hoàn toàn do AI vận hành, tổng giám đốc chỉ approve ở financial gate.

### RACI Matrix — Toàn công ty

RACI (Responsible, Accountable, Consulted, Informed) giúp rõ ai làm gì:

| Hoạt động | CEO | Company GPS | Growth AI | Delivery AI | Backoffice AI |
|-----------|:---:|:-----------:|:---------:|:-----------:|:-------------:|
| Chiến lược kinh doanh | **A** | I | C | C | I |
| Content marketing | A | R | **R** | I | I |
| Lead generation | A | R | **R** | I | I |
| Proposal tạo | A | R | **R** | C | I |
| Project delivery | A | R | I | **R** | I |
| Quality review | A | **R** | I | R | I |
| Báo cáo tài chính | **A** | R | I | I | **R** |
| Hợp đồng ký kết | **A** | I | I | I | R |
| Knowledge update | I | **R** | C | C | R |

**A** = Accountable (Chịu trách nhiệm), **R** = Responsible (Thực hiện), **C** = Consulted (Được tham khảo), **I** = Informed (Được thông báo)

💡 **Mẹo:** Company GPS (AI Chief of Staff) xuất hiện ở rất nhiều ô R — đó là design. GPS điều phối mọi task, route đến đúng AI Worker, monitor execution, enforce SOP. Tổng giám đốc chỉ xuất hiện ở ô A — chịu trách nhiệm phê duyệt, không trực tiếp làm.

---

## 2.3 7 Trụ cột OPC

Bảy trụ cột sau đây là nền móng của AI Native Company. Thiếu một trụ cột, công ty vẫn chạy. Nhưng không ổn định. Không scale. Không bền vững.

### Trụ cột 1: Thiết kế hệ thống (System Design)

**Mọi task thành system. Không làm thủ công lần thứ 2.**

Nếu bạn làm một việc 2 lần, lần thứ 2 phải tự động hóa hoặc có SOP. Nguyên tắc này đảm bảo công ty không phụ thuộc vào "hiệu suất cá nhân" mà dựa vào "hiệu suất hệ thống". Trong AINS, ngay cả việc tạo hóa đơn — một task tưởng chừng đơn giản — cũng có SOP (`SOP-BACK-003` trong `opc-ains/03-backoffice/invoicing/template/`).

Thiết kế hệ thống không chỉ là "viết SOP". Đó là tư duy: mỗi task có input rõ ràng, process rõ ràng, output rõ ràng. Mỗi process có thể được giao cho AI Worker mới mà không cần "train" — vì SOP đã chứa mọi instruction cần thiết.

Lần đầu triển khai AINS, tôi bỏ qua bước này — viết SOP sau khi làm xong. Kết quả: Marketing AI tạo content sai tone 3 lần liên tiếp. Mỗi lần sửa tốn 30 phút. Sau khi ép mình viết SOP trước khi bắt bất kỳ task nào, tỷ lệ đúng ở lần đầu tăng từ 40% lên 85%. Bài học đắt giá: SOP trước, thực hiện sau.

### Trụ cột 2: AI Workforce

**Mỗi role = 1 AI skill. Orchestrator điều phối.**

AINS có 10 AI Workers chia làm 3 phòng ban. Mỗi Worker được xây dựng bằng 1 trong 3 methods: TEMPLATED (dùng template phổ thông), EXPERT-CLONE (copy phong cách chuyên gia), hoặc GPS-ENHANCED (kết hợp với Company GPS để điều phối). Xem chi tiết trong `opc-ains/_ai-workforce/build-plan.md`.

AI Workforce không phải "1 ChatGPT làm mọi việc". Đó là đội ngũ chuyên biệt — AI Sales Rep chỉ làm sales, AI Finance Manager chỉ làm tài chính, AI Quality Reviewer chỉ review chất lượng. Sự chuyên biệt tạo ra chất lượng.

Khi mới bắt đầu, tôi chọn một model duy nhất cho mọi role. Ai làm marketing cũng model đó, ai làm finance cũng model đó. Thảm họa. Model giỏi viết creative nhưng tệ tính số liệu — Financial AI báo cáo sai công thức 2 lần. Phải chuyển sang model phù hợp cho từng role, chi phí chỉ tăng thêm $30/tháng nhưng accuracy tăng vọt. Từ đó tôi học: chọn tool theo task, không chọn 1 tool cho mọi task.

### Trụ cột 3: Second Brain

**3-tier knowledge: Raw → Structured → AI-ready.**

Knowledge là tài sản quý nhất của công ty tri thức. Nhưng knowledge nằm rác trong email, chat, file Word — thì vô dụng. AINS thiết kế Second Brain theo kiến trúc 3 tầng, nằm trong thư mục `knowledge/`:

- **01-raw/:** Nguyên liệu thô — research, interview notes, competitor data, industry trends. Chưa xử lý, chỉ thu thập.
- **02-structured/:** Đã xử lý — playbooks, frameworks, case studies, templates. Có cấu trúc, con người đọc được.
- **03-ai-ready/:** Tối ưu cho AI — company context, product catalog, FAQ, decision trees. Sẵn sàng inject vào AI prompt.

Nguyên tắc vận hành: **Thu thập → Xử lý → Đóng gói.** Mọi thông tin mới vào `01-raw/`, AI Knowledge Manager xử lý đưa lên `02-structured/`, nếu cần cho daily operations thì đóng gói thành `03-ai-ready/`.

Có lần tôi chuyển từ một AI model sang model khác — tưởng chỉ việc copy prompt qua. Sai lầm. Toàn bộ prompt tinh chỉnh trong 2 tháng biến mất vì lưu trong chat history của model cũ, không nằm trong knowledge base. Phải xây dựng lại từ đầu, mất cả tuần. Từ đó, mọi prompt, mọi insight, mọi quy tắc đều được thu thập vào Second Brain ngay lập tức. Không ngoại lệ.

⚠️ **Lưu ý:** Nhiều người bỏ qua Second Brain vì "lúc đầu chưa có nhiều knowledge". Sai lầm. Chính lúc đầu, thói quen thu thập quan trọng nhất. Khi công ty phát triển, knowledge phát triển theo — và AI Workers trở nên thông minh hơn vì có context phong phú hơn.

### Trụ cột 4: Cỗ máy doanh thu (Revenue Engine)

**Multiple automated, measurable revenue streams.**

AINS có 3 revenue streams: Tư vấn (Consulting), Đào tạo (Training), Sản phẩm số (Digital Products). Mỗi stream có SOP riêng, KPI riêng, tracking riêng. Thư mục `opc-ains/03-backoffice/accounting/output/revenue-log_2026-05-partial.md` theo dõi doanh thu theo từng nguồn.

Cỗ máy doanh thu trong OPC khác truyền thống ở 3 điểm:

1. **Automated lead generation:** AI Sales Rep tìm lead, qualify, draft proposal — không cần cold call.
2. **Đo lường mọi thứ:** Mỗi đồng revenue đều trace được về lead source, conversion rate, cost per acquisition.
3. **Multiple streams:** Không phụ thuộc 1 nguồn. Nếu consulting giảm, training và digital products vẫn chạy.

Tháng đầu tiên, tôi chỉ chạy consulting — 1 khách hàng, 1 nguồn thu. Khi khách đó delay project 2 tuần, doanh thu tháng đó gần như bằng 0. Cảm giác rất bất an. Tháng sau, tôi set up thêm stream training và bắt tay vào làm digital product template. Kết quả: tháng 3 đã có doanh thu từ cả 3 nguồn. Khi consulting chậm, training bù. Đa dạng hóa revenue streams không phải xa xỉ — nó là mạng lưới an toàn.

### Trụ cột 5: Tấm khiên pháp lý (Legal Shield)

**Cấu trúc OPC bảo vệ tài sản cá nhân.**

AINS là Công ty Trách nhiệm hữu hạn Một thành viên (Công ty MTV) theo Điều 46-53 Luật Doanh nghiệp 2020. Điều này có nghĩa: trách nhiệm tài chính giới hạn trong số vốn đã góp. Nếu công ty nợ, chủ nợ không thể "vào nhà bạn lấy TV".

Thư mục `opc-ains/legal/` chứa tất cả tài liệu pháp lý cần thiết: hợp đồng dịch vụ (`legal/contracts-templates/contract-service.md`), hợp đồng đào tạo (`contract-training.md`), NDA (`nda-template.md`), lịch tuân thủ (`legal/compliance-calendar.md`), và chính sách bảo vệ dữ liệu (`legal/policies/data-protection-policy.md`).

🔑 **Điểm chính:** Tấm khiên pháp lý không phải "làm cho đẹp". Đó là tấm khiên bảo vệ bạn khi rủi ro xảy ra. Và trong kinh doanh, rủi ro luôn xảy ra — câu hỏi là khi nào.

Một người quen kinh doanh freelance không đăng ký công ty. Khi khách kiện đòi bồi thường 50 triệu vì "thiếu sót trong tư vấn", tài khoản cá nhân bị đóng. Tiền tiết kiệm cho con học, tiền mua xe — tất cả bị đóng băng. Nếu vận hành dưới cấu trúc OPC, trách nhiệm tài sản chỉ giới hạn trong số vốn góp. Tài sản cá nhân — nhà, xe, tiết kiệm — an toàn. Cấu trúc pháp lý không phải bước cuối cùng. Nó nên là một trong những bước đầu tiên.

### Trụ cột 6: Vòng lặp cải tiến liên tục (PDCA)

**Plan, Build, Test, Check — lặp mãi mãi.**

AINS không coi bất kỳ quy trình nào là "hoàn thành". Mọi SOP đều có phiên bản — có version 1.0, 1.1, 2.0... Mỗi tháng, AI Knowledge Manager review SOPs và đề xuất update. Xem `opc-ains/_company-gps/sop-register.md`: riêng trong tháng 4/2026, 5 SOPs đã được cập nhật.

PDCA trong OPC chạy theo chu kỳ:

- **Weekly:** Tổng giám đốc review tuần, update priority, ghi nhận improvement areas.
- **Monthly:** KPI review, P&L analysis, SOP update, AI performance review.
- **Quarterly:** Strategic review, tax filing, compliance check, major SOP overhaul.

Chu kỳ PDCA được mô tả chi tiết trong Điều 14-15 của file `opc-ains/charter/company-charter.md`.

Tuần thứ 3 vận hành AINS, tôi suýt bỏ qua weekly review vì "tuần này bận". May mà vẫn làm. Phát hiện ra Quality Score của Content AI giảm từ 4.2 xuống 3.6 — blog post tuần đó reader complain gián tiếp qua email. Nguyên nhân: tôi update prompt tuần trước nhưng quên test kỹ. Nếu không có weekly review, lỗi đó kéo dài đến cuối tháng. Chi phí sửa chữa tăng gấp 4 lần so với sửa ngay. PDCA mỗi tuần không phải ritual vô nghĩa — nó là radar phát hiện sớm.

### Trụ cột 7: Con người tối thiểu (Minimal Human)

**Con người chỉ ở các cổng quyết định.**

Đây là trụ cột định nghĩa nhất của OPC. Mục tiêu không phải "thay thế con người" — mà là "giải phóng con người khỏi công việc lặp lại để tập trung vào chiến lược và sáng tạo".

AINS xác định 7 Cổng chất lượng nơi tổng giám đốc bắt buộc tham gia (xem `opc-ains/charter/company-charter.md`, Điều 12): Content Publishing, Client Deliverable, Financial Transaction, Contract Signing, Strategic Decision, Monthly Review, Compliance Check. Ngoài 7 gates này, toàn bộ vận hành do AI xử lý.

Ban đầu tôi cố review hết — đọc mọi draft, check mọi invoice, duyệt mọi email marketing. Sau 2 tuần, tôi kiệt sức. Làm việc 25 giờ/tuần cho một công ty "1 người". Phản tác dụng hoàn toàn. Sau khi xác định rõ 7 gates và chỉ can thiệp ở những điểm đó, thời gian làm việc giảm xuống 10 giờ/tuần — mà chất lượng output còn tốt hơn vì tôi tập trung hơn ở mỗi lần review. Ít hơn nhưng sâu hơn. Đó là nguyên tắc.

✏️ **Bài tập:** Liệt kê 7 cổng quyết định cho công ty của bạn. Bạn có thể không cần cả 7 — nhưng hãy suy nghĩ: task nào BẮT BUỘC cần con người quyết định? Task nào AI có thể tự làm?

---

## 2.4 Thiết kế phòng ban — Từ chuỗi giá trị đến đội ngũ

### Logic gom nhóm

Porter Value Chain có 5 hoạt động chính: Inbound Logistics, Operations, Outbound Logistics, Marketing & Sales, Service. Nhưng OPC không cần 5 phòng ban — 1 người quản lý nổi sao? Thay vào đó, AINS gom thành 3 phòng ban dựa trên function:

```
Porter Value Chain          Phòng ban AINS
─────────────────           ──────────────────
Marketing & Sales     ──→   01-growth (4 AI Workers)
Operations            ──┐
Service               ──┤→   02-delivery (3 AI Workers)
Inbound Logistics     ──┘
Finance & Accounting ──┐
Human Resources       ──┤→   03-backoffice (3 AI Workers)
Legal & Compliance    ──┤
IT & Knowledge        ──┘
```

Tại sao 3, không phải 5 hoặc 7? Con số 3 là ngưỡng tối đa 1 người context-switch trong 1 tuần làm việc 10-15 giờ. Mỗi phòng ban bạn dành 2-3 giờ review. Vừa đủ nắm tình hình. Không quá tải.

### Mỗi phòng ban có gì

Mỗi phòng ban trong AINS có cấu trúc đồng nhất:

| Thành phần | Mô tả | File tham khảo |
|-----------|-------|---------------|
| **README.md** | Tổng quan phòng ban, vai trò, AI Workers | `opc-ains/01-growth/README.md` |
| **charter/** | Department charter — mission, scope, authority | `opc-ains/01-growth/charter/growth-charter.md` |
| **ai-workers/** | Profile từng AI Worker trong phòng ban | `opc-ains/01-growth/ai-workers/` |
| **kpi/** | KPI definitions cho phòng ban | `opc-ains/01-growth/kpi/growth-kpi-definitions.md` |
| **policies/** | Department-specific policies | `opc-ains/01-growth/policies/brand-policy.md` |
| **SOP folders/** | Từng SOP có state machine riêng | `opc-ains/01-growth/marketing/create-content/` |
| **reports/** | Weekly và monthly reports | `opc-ains/01-growth/reports/` |

### Mô hình phân tích IPO

Mỗi phòng ban (và mỗi SOP trong phòng ban) được phân tích theo mô hình **IPO — Input → Process → Output**:

**Phòng ban Growth:**
- **Input:** Market data, competitor info, brand guidelines, product updates
- **Process:** Content creation, SEO optimization, lead generation, proposal drafting, social media management
- **Output:** Blog posts, social posts, proposals, leads pipeline, content calendar, marketing reports

**Phòng ban Delivery:**
- **Input:** Signed contracts, project briefs, client requirements, feedback
- **Process:** Project planning, technical delivery, quality assurance, client communication
- **Output:** Project deliverables, status reports, QA reports, onboarding kits, retrospective docs

**Phòng ban Backoffice:**
- **Input:** Financial transactions, invoices, receipts, legal requirements, compliance deadlines
- **Process:** Bookkeeping, invoicing, financial reporting, contract management, knowledge curation
- **Output:** Financial reports, invoices, compliance documents, budget plans, knowledge base updates

Phân tích IPO đảm bảo bạn biết chính xác: phòng ban cần gì để hoạt động (Input), làm gì (Process), và tạo ra gì (Output). Mọi thứ rõ ràng. Mọi thứ kiểm tra được.

💡 **Mẹo:** Khi thiết kế phòng ban cho ngành khác, bắt đầu bằng phân tích IPO trước khi tạo bất kỳ file nào. Nếu bạn không mô tả được Input, Process, Output — bạn chưa hiểu đủ để giao cho AI.

---

## 2.4a KWSR Framework — 4 Lớp Tổ Chức AI Workforce

### Vấn đề: AI Worker "biết" gì khi bước vào phòng ban?

Hãy tưởng tượng bạn thuê một nhân viên mới cho phòng Marketing. Ngày đầu tiên, bạn sẽ làm gì? Đưa họ đọc:

1. **Mục tiêu phòng ban** — phòng này làm gì, KPI thế nào
2. **Quy trình làm việc** — có những SOP nào, chạy theo thứ tự gì
3. **Công cụ và kỹ năng** — họ có skill gì, dùng tool nào
4. **Quy tắc và giới hạn** — được phép quyết định gì, khi nào phải hỏi sếp

Đúng? AI Worker cũng cần 4 thứ đó. Nhưng khác con người — AI không thể "hỏi đồng nghiệp" hay "tự tìm hiểu dần". AI cần tất cả sẵn sàng trước khi bắt đầu task đầu tiên.

Đó là lý do KWSR ra đời.

### KWSR là gì?

**KWSR** là viết tắt của 4 lớp tổ chức: **Knowledge → Workflow → Skill → Rule**. Mỗi phòng ban trong OPC phải có đủ 4 lớp này, mỗi lớp nằm trong một thư mục riêng:

| Lớp | Câu hỏi | Tương đương con người | Thư mục |
|-----|---------|----------------------|---------|
| **K**nowledge | AI cần **BIẾT** gì? | Nhân viên mới đọc tài liệu phòng ban | `_knowledge/` |
| **W**orkflow | Công việc **CHẠY** thế nào? | Nhân viên học quy trình, SOP | `_workflow/` |
| **S**kill | AI **LÀM ĐƯỢC** gì? | Nhân viên đã thành thạo, tự execute | `_skills-agents/` |
| **R**ule | AI **KHÔNG ĐƯỢC** làm gì? | Nhân viên senior hiểu giới hạn, authority | `_rules/` |

Mỗi thư mục chứa một file `README.md` — đóng vai trò "bản tóm tắt" cho lớp đó. AI Worker đọc 4 README này trước khi bắt đầu bất kỳ task nào trong phòng ban.

### 4 thư mục KWSR trong thực tế

Hãy xem KWSR hoạt động trong phòng Growth của AINS:

**`_knowledge/README.md`** — AI cần BIẾT:

```
# K — Knowledge: 01-Growth Department

## Department Charter
| Document | Path | Summary |
|----------|------|---------|
| Growth Charter | charter/growth-charter.md | Mission, vision, budget ($600-1,000/mo) |

## Metrics & Targets
| Metric | Target |
|--------|--------|
| Content output | 20+ pieces/month |
| New leads | 50-100/month |
| Monthly revenue | $3,000-8,000 |
| MQL threshold | Lead score >= 40 |
```

AI Worker mới vào Growth đọc file này và biết ngay: phòng này mục tiêu doanh thu $3K-8K/tháng, phải tạo 20+ nội dung, lead score >= 40 mới tính MQL.

**`_workflow/README.md`** — Công việc CHẠY thế nào:

```
# W — Workflow: 01-Growth Department

## SOP Workflow Index
| SOP Code | Process | AI Worker | Frequency |
|----------|---------|-----------|-----------|
| SOP-GRO-001 | Content Creation | AI-02, AI-03 | Weekly |
| SOP-GRO-004 | Lead Generation | AI-01 | Daily |
| SOP-GRO-008 | Proposal Creation | AI-01 | Per opportunity |

## SOP Dependencies
SOP-GRO-004 (Lead Gen) → SOP-GRO-005 (Sales) → SOP-GRO-008 (Proposal)
SOP-GRO-001 (Content) → SOP-GRO-003 (Social) → SOP-GRO-006 (Reporting)
```

AI Worker biết: Lead Gen → Sales → Proposal là chuỗi chính. Content → Social → Reporting là chuỗi marketing.

**`_skills-agents/README.md`** — AI LÀM ĐƯỢC gì:

```
# S — Skills & Agents: 01-Growth Department

## AI Workforce Roster
| Worker | Role | Installed Skill |
|--------|------|----------------|
| AI-01 | Sales Rep | vibe-opc_sample-growth-sales |
| AI-02 | Content Manager | vibe-opc_sample-growth-content-mgr |
| AI-03 | SEO Writer | vibe-opc_sample-growth-writer |
| AI-04 | Analytics | vibe-opc_sample-growth-social |

## SOP-to-Skill Coverage
| SOP | Assigned | Status |
|-----|----------|--------|
| SOP-GRO-001 | AI-02 + AI-03 | Covered |
| SOP-GRO-004 | AI-01 | Covered |
... Coverage: 10/10 = 100%
```

AI Worker biết: phòng này có 4 AI Workers, mỗi SOP đã được cover.

**`_rules/README.md`** — AI KHÔNG ĐƯỢC làm gì:

```
# R — Rules: 01-Growth Department

## Decision Authority Matrix
| Decision | Limit | Auto? | Authority |
|----------|-------|-------|-----------|
| Post social content | Routine | Yes | AI-04 self-review |
| Post blog article | All | No | Founder approval |
| Create proposal | All | No | AI-01 drafts, Founder reviews |
| Discount offer | >= 10% | No | Founder approval |

## Escalation Rules
| Situation | Timeline | Route To |
|-----------|----------|----------|
| Negative client feedback | < 1h | CEO directly |
| Revenue at risk | < 1h | CEO directly |
```

AI Worker biết: đăng social thì tự quyết, đăng blog thì chờ sếp. Proposal thì viết draft, sếp duyệt. Giảm giá >= 10% — phải hỏi sếp.

### Tại sao KWSR quan trọng?

**Không có KWSR**, kiến thức phòng ban nằm rải rác: charter ở một folder, KPI ở folder khác, SOP ở folder khác nữa, policies ở đâu không biết. AI Worker mới phải "tìm" thông tin — và thường tìm không hết.

**Có KWSR**, AI Worker đọc đúng 4 file README và có đủ context để làm việc. Không cần hỏi, không cần tìm. Mọi thứ ở đúng nơi AI cần.

3 use case chính của KWSR:

**1. Onboarding AI Worker mới:**

```
Đọc K (knowledge) → Hiểu bối cảnh phòng ban
Đọc W (workflow)   → Biết quy trình và dependencies
Đọc S (skills)     → Biết mình ở đâu trong đội, cover SOP nào
Đọc R (rules)      → Biết giới hạn quyền quyết định
→ Sẵn sàng nhận task đầu tiên
```

**2. Audit phòng ban:**

```
K complete? → Charter, KPIs, domain references tồn tại
W complete? → Tất cả SOP được index, dependencies được map
S complete? → 100% SOP-to-Skill coverage
R complete? → Policies, decision authority, escalation documented
→ 4/4 = phòng ban tổ chức tốt
```

**3. Thêm SOP mới:**

```
1. Thêm vào _workflow/ → Update SOP index
2. Gán vào _skills-agents/ → Update coverage matrix
3. Extract knowledge → Update _knowledge/
4. Thêm constraints → Update _rules/
→ SOP mới được tổ chức đầy đủ 4 lớp
```

### KWSR Map — AINS Company

Ba phòng ban, mỗi phòng 4 lớp KWSR. Tổng cộng **32/32 SOPs, 10 AI Workers, 100% coverage:**

| Phòng ban | Knowledge | Workflow | Skills | Rules | SOP Coverage |
|-----------|-----------|----------|--------|-------|-------------|
| 01-Growth | Charter, KPIs, Market | 10/10 SOPs | 4 workers | Brand, Authority | 100% |
| 02-Delivery | Charter, KPIs | 10/10 SOPs | 3 workers | Data Security, Authority | 100% |
| 03-Backoffice | Charter, KPIs, Regulatory | 12/12 SOPs | 3 workers | Legal, Security, Finance | 100% |
| **Tổng** | | **32/32** | **10 workers** | | **100%** |

Chi tiết đầy đủ nằm tại `opc-ains/KWSR-OVERVIEW.md`.

🔑 **Điểm chính:** KWSR không phải "thêm bước". KWSR là cách bạn đảm bảo AI Worker luôn có đủ thông tin để vận hành đúng. Thiếu KWSR = AI Worker "mù" — biết làm task nhưng không hiểu bối cảnh, không biết giới hạn, không biết phụ thuộc. Có KWSR = AI Worker "sáng" — tự vận hành, tự quyết định đúng, tự biết khi nào cần hỏi.

⚠️ **Anti-pattern:** Đừng tạo phòng ban mà không có đủ 4 thư mục KWSR. Tôi từng làm điều này — tạo 5 SOP folders mà quên tạo `_knowledge/` và `_rules/`. Kết quả: Marketing AI tạo content đúng SOP nhưng sai tone (không biết brand policy), và tự ý đăng bài nhạy cảm (không biết cần sếp duyệt). Phải quay lại tạo KWSR sau. Tốn thời gian gấp 3 lần so với tạo đúng ngay từ đầu.

💡 **Mẹo:** Khi tạo phòng ban mới, tạo KWSR TRƯỚC khi tạo SOP folders. 4 thư mục KWSR chỉ tốn 15 phút nhưng tiết kiệm hàng giờ debug sau này.

---

## 2.5 SOP State Machine — Tim đập của OPC

### SOP thông thường vs SOP State Machine

SOP thông thường là 1 file .md mô tả quy trình. Viết xong, để đó, hy vọng ai đó làm theo. Trong công ty truyền thống, điều này "chấp nhận được" — con người có thể hỏi nhau "bước này làm thế nào?".

Trong OPC, AI Worker không "hỏi nhau". AI cần instruction chính xác, context rõ ràng, và mechanism theo dõi trạng thái. Vì thế, AINS không dùng SOP thông thường — mà dùng **SOP State Machine**.

SOP State Machine là hệ thống thư mục cấu trúc theo trạng thái của quy trình:

```
sop-folder/
├── template/        ← SOP document + templates (bản gốc)
├── input/           ← Dữ liệu đầu vào cho lần chạy này
├── processing/      ← Đang xử lý
│   ├── ai-draft/    ← AI đang làm draft
│   └── human-review/← Chờ tổng giám đốc review
├── output/          ← Output hoàn thành
└── archive/         ← Lưu trữ (sau 7-30 ngày)
```

### Tại sao cần State Machine

**1. Theo dõi trạng thái mỗi quy trình.** Nhìn vào cấu trúc thư mục, bạn biết ngay SOP nào đang ở bước nào. File nằm trong `ai-draft/` — AI đang xử lý. File nằm trong `human-review/` — chờ bạn. Không cần mở file, không cần hỏi.

**2. AI tự chuyển file qua các trạng thái.** Company GPS theo dõi thư mục và tự động chuyển file khi bước hoàn thành. AI viết xong draft? Chuyển từ `input/` sang `processing/ai-draft/`. Tổng giám đốc approve? Chuyển sang `output/`. Không cần quản lý file thủ công.

**3. Human review ở đúng điểm.** File chỉ vào `human-review/` khi thực sự cần con người. Không review mọi thứ — chỉ review ở Cổng chất lượng. Giảm 80% thời gian review so với "review tất cả".

**4. Archive tự động.** Sau 7-30 ngày, file trong `output/` tự chuyển sang `archive/`. Workspace luôn sạch. Nhưng archive không xóa — vẫn trace được nếu cần tra cứu.

### Ví dụ thực tế: SOP "Tạo nội dung marketing"

AINS có SOP-GROW-001 "Tạo nội dung marketing", nằm tại `opc-ains/01-growth/marketing/create-content/`. Hãy đi theo lifecycle của 1 bài blog:

**Bước 1 — Template:** SOP document nằm tại `template/sop_create-content_v1.0.md`. File này xác định toàn bộ quy trình: ai làm gì, bao lâu, KPI gì, checklist gì.

**Bước 2 — Input:** Content brief được tạo và đặt vào `input/`. Brief gồm: title, target keyword, content type, audience, key message, CTA, publish date, channel. Marketing AI lấy brief từ content calendar.

**Bước 3 — Processing/ai-draft:** Marketing AI đọc brief, viết bài theo SOP, áp dụng brand voice, tối ưu SEO. Draft hoàn thành được chuyển vào `processing/ai-draft/`. Ví dụ: file `blog_post_ai-chuyen-doi-so-sme_2026-05-05.md` được tạo ở đây.

**Bước 4 — Processing/human-review:** Tổng giám đốc nhận notification, mở file, review trong 15 phút. Kiểm tra accuracy, brand voice, strategic messaging. Approve hoặc yêu cầu chỉnh sửa.

**Bước 5 — Output:** Nếu approved, bài được format cho channel (WordPress cho blog, native format cho LinkedIn) và chuyển sang `output/`. Ví dụ: `output/content-calendar_2026-05.md` và `output/social_post_linkedin_2026-05-06.md`.

**Bước 6 — Archive:** Cuối tháng, published content chuyển từ `output/` sang `archive/` với naming convention: `{type}_{topic-slug}_{YYYY-MM-DD}.md`.

Mọi SOP trong AINS — 30 SOPs, 3 phòng ban — đều tuân theo state machine pattern này. Nhìn vào bất kỳ SOP thư mục nào, bạn cũng thấy cùng cấu trúc: `template/`, `input/`, `processing/ai-draft/`, `processing/human-review/`, `output/`, `archive/`.

⚠️ **Lưu ý:** Ban đầu, tạo cấu trúc thư mục cho 30 SOPs có vẻ tốn thời gian. Đây là đầu tư 1 lần. Sau khi set up, AI Workers tự vận hành trong structure này mà không cần bạn quản lý file.

---

## 2.6 Cấu trúc thư mục — Xây nhà cho AI

### Tại sao cấu trúc thư mục quan trọng

AI Worker không có "cảm giác" — nó không thể "nhớ là file để ở đâu hôm qua". Nó cần cấu trúc rõ ràng. Dễ dự đoán. Nhất quán. Cấu trúc thư mục chính là "ngôn ngữ không gian" mà AI và con người giao tiếp với nhau.

Thư mục lộn xộn, AI Worker sẽ không tìm được input, save output sai chỗ, miss context quan trọng. Kết quả: garbage in, garbage out. Cấu trúc thư mục tốt là điều kiện tiên quyết cho AI workforce hiệu quả.

### Cấu trúc thư mục AINS

```
opc-ains/
├── README.md              ← "Trang chủ" — tổng quan toàn công ty
├── charter/               ← Điều lệ, tầm nhìn, chiến lược
│   ├── company-charter.md
│   ├── vision-mission-values.md
│   └── business-strategy.md
├── legal/                 ← Pháp lý, hợp đồng, compliance
│   ├── compliance-calendar.md
│   ├── policies/
│   │   ├── code-of-conduct.md
│   │   └── data-protection-policy.md
│   └── contracts-templates/
│       ├── contract-service.md
│       ├── contract-training.md
│       └── nda-template.md
├── 01-growth/             ← Phòng Tăng trưởng (Marketing + Sales)
│   ├── README.md
│   ├── _knowledge/        ← K: charter, KPIs, market intelligence
│   ├── _workflow/         ← W: 10 SOP templates indexed
│   ├── _skills-agents/    ← S: 4 AI workers (AI-01 to AI-04)
│   ├── _rules/            ← R: brand policy, decision authority, quality gates
│   ├── charter/
│   ├── ai-workers/
│   ├── kpi/
│   ├── policies/
│   ├── marketing/
│   │   ├── create-content/
│   │   ├── email-marketing/
│   │   └── manage-social-media/
│   ├── sales/
│   │   ├── lead-generation/
│   │   ├── sales-process/
│   │   ├── proposal-creation/
│   │   ├── client-management/
│   │   └── crm-management/
│   ├── analytics/
│   └── reports/
├── 02-delivery/           ← Phòng Triển khai (Operations + CS)
│   ├── README.md
│   ├── _knowledge/        ← K: charter, KPIs
│   ├── _workflow/         ← W: 10 SOP templates indexed
│   ├── _skills-agents/    ← S: 3 AI workers (AI-05 to AI-07)
│   ├── _rules/            ← R: data security, decision authority, breach response
│   ├── charter/
│   ├── ai-workers/
│   ├── kpi/
│   ├── policies/
│   ├── project-management/
│   ├── customer-onboarding/
│   ├── customer-support/
│   ├── quality-assurance/
│   ├── project-evaluation/
│   ├── change-management/
│   ├── complaint-handling/
│   └── reports/
├── 03-backoffice/         ← Phòng Hỗ trợ (Finance + HR + Admin)
│   ├── README.md
│   ├── _knowledge/        ← K: charter, KPIs, regulatory knowledge
│   ├── _workflow/         ← W: 12 SOP templates indexed
│   ├── _skills-agents/    ← S: 3 AI workers (AI-08 to AI-10)
│   ├── _rules/            ← R: legal compliance, security, financial constraints
│   ├── charter/
│   ├── ai-workers/
│   ├── kpi/
│   ├── policies/
│   ├── accounting/
│   ├── invoicing/
│   ├── budgeting/
│   ├── financial-reporting/
│   ├── contract-management/
│   ├── ai-workforce-management/
│   ├── ai-performance-review/
│   ├── document-management/
│   ├── procurement/
│   ├── backup-disaster-recovery/
│   └── reports/
├── knowledge/             ← Second Brain (3-tier)
│   ├── 01-raw/
│   ├── 02-structured/
│   └── 03-ai-ready/
├── templates/             ← Shared templates toàn công ty
├── reports/               ← Company-level reports
├── _ai-workforce/         ← AI worker profiles & workforce docs
│   ├── README.md
│   ├── workforce-map.md
│   ├── build-plan.md
│   ├── skills-matrix.md
│   └── cost-analysis.md
└── _company-gps/          ← AI Chief of Staff
    ├── README.md
    ├── routing-rules.md
    ├── sop-register.md
    └── quality-gates.md
```

### Nguyên tắc đặt tên

3 nguyên tắc đơn giản nhưng bắt buộc:

**1. Thư mục: lowercase, hyphen-separated.**
- Đúng: `lead-generation/`, `customer-support/`, `ai-workforce/`
- Sai: `Lead Generation/`, `lead_generation/`, `LeadGen/`

**2. SOP thư mục: verb-noun-context.**
- Đúng: `create-content/`, `manage-social-media/`, `financial-reporting/`
- Sai: `content/`, `social/`, `finance/`

Verb-noun-context giúp AI Worker và con người lập tức biết thư mục này LÀM GÌ, không chỉ chứa GÌ.

**3. File naming: `[type]_[name]_[version]_[date].md`**

Các loại file trong AINS:

| Pattern | Ví dụ | Ý nghĩa |
|---------|-------|----------|
| `sop_[name]_v[X.X].md` | `sop_create-content_v1.0.md` | SOP document |
| `[type]_[topic]_[date].md` | `blog_post_ai-chuyen-doi-so-sme_2026-05-05.md` | Output file |
| `[report]-[period]_[date].md` | `growth-weekly-report_2026-W18.md` | Report file |
| `[doc-type]_[client]_[date].md` | `proposal_techcorp_ai-consulting_2026-05-05.md` | Client document |
| `invoice_INV-[number]_[client].md` | `invoice_INV-2026-001_techcorp.md` | Invoice |

💡 **Mẹo:** Naming convention có vẻ pedantic. Nhưng khi bạn có 200+ files chạy qua 30 SOPs mỗi tháng, naming structure là cách duy nhất để tìm lại file — đặc biệt khi AI cần tự động locate và process file.

### Thư mục đặc biệt: `_ai-workforce/` và `_company-gps/`

Hai thư mục bắt đầu bằng `_` (underscore) có vai trò đặc biệt:

**`_ai-workforce/`** là "phòng nhân sự" của AI. Chứa workforce map (`workforce-map.md`), build plan (`build-plan.md`), skills matrix (`skills-matrix.md`), và cost analysis (`cost-analysis.md`). Mỗi AI Worker có profile riêng trong thư mục phòng ban (`01-growth/ai-workers/marketing-ai-profile.md`), nhưng workforce-level docs nằm ở đây.

**`_company-gps/`** là "hệ điều hành" của công ty — AI Chief of Staff. Chứa routing rules (`routing-rules.md` — cách task được phân đến đúng AI Worker), SOP register (`sop-register.md` — master list 30 SOPs), và quality gates (`quality-gates.md` — khi nào tổng giám đốc phải review). Company GPS là "1" trong mô hình 1+1+N: 1 tổng giám đốc, 1 GPS, N AI Workers.

---

## 2.7 Vận hành — Tuần làm việc của CEO OPC

### Tuần chuẩn — 10-15 giờ

Không phải lý thuyết. Đây là weekly schedule thực tế khi AINS đã ở giai đoạn Stability (sau 3-6 tháng set up):

**Thứ 2 — Ngày Lập kế hoạch (2 giờ)**

Mở laptop. Uống cà phê. Bắt đầu tuần.
- Review weekly reports từ 3 phòng ban (AI auto-generate mỗi tối Chủ nhật)
- Set priorities cho tuần: tập trung vào 3 việc quan trọng nhất
- Approve content calendar: xem nhanh content planned cho tuần, approve hoặc adjust
- Kiểm tra lead pipeline: review `01-growth/sales/lead-generation/output/leads-pipeline_2026-05-07.csv`
- Ước tính thời gian: 2 giờ, có thể làm ở quán cà phê sáng Thứ 2

**Thứ 3 — Ngày Marketing (1 giờ)**

- Review marketing output từ Thứ 2: blog drafts trong `processing/human-review/`
- Quick feedback: approve 80%, yêu cầu chỉnh sửa nhỏ cho 20%
- Kiểm tra social media performance: xem `01-growth/analytics/marketing-reporting/output/`
- Ước tính thời gian: 1 giờ, thường vào buổi sáng

**Thứ 4 — Ngày Delivery (1 giờ)**

- Review project dashboards: tiến độ các project đang chạy
- Client check-ins: nếu có meeting thì tham gia (thường 1-2 meeting/tuần)
- Quality spot-check: random review 1 output từ phòng ban Delivery
- Kiểm tra project status: xem `02-delivery/project-management/output/`

**Thứ 5 — Ngày Tài chính & Chiến lược (2 giờ)**

- Financial review: xem báo cáo tài chính tuần/monthly tùy giai đoạn
- Approve payments: kiểm tra và approve hóa đơn > 500.000 VNĐ
- Quyết định chiến lược: nếu có quyết định chiến lược cần ra, làm ở đây
- Kiểm tra cash flow: review `03-backoffice/accounting/output/revenue-log_2026-05-partial.md`
- Budget review: check `03-backoffice/budgeting/output/expense-tracking_2026-05.md`

**Thứ 6 — Ngày Review & PDCA (1 giờ)**

- Review tuần: What went well? What didn't? What to improve?
- Prepare tuần tới: quick planning, flag issues
- Ghi nhận PDCA: improvement ideas, cập nhật SOPs nếu cần
- AI performance snapshot: quick check workforce quality scores

**Tổng: ~7 giờ/tuần ở giai đoạn Stability.** Trong giai đoạn Growth (3-6 tháng đầu), có thể lên 15-20 giờ. Trong giai đoạn Scale (sau 1 năm), có thể giảm xuống 5 giờ.

### Phần còn lại — AI tự vận hành

Tổng giám đốc không online? Không sao. AINS vẫn chạy. Content được tạo theo content calendar đã approved. Leads qualify theo SOP-GRO-002. Invoices generate theo SOP-BACK-003. Customer support tickets xử lý theo SOP-DEL-003. Tất cả theo SOP, tất cả được ghi chép trong cấu trúc thư mục.

Company GPS điều phối mọi thứ: nhận task → classify → route đến đúng AI Worker → monitor execution → kiểm tra cổng chất lượng → deliver hoặc escalate.

### Cổng quyết định — Khi nào tổng giám đốc phải can thiệp

Tổng giám đốc không cần review mọi thứ. Nhưng có những tình huống BẮT BUỘC can thiệp:

| Tình huống | Priority | Hành động của tổng giám đốc | Ví dụ |
|-----------|----------|-----------|-------|
| Khách hàng phàn nàn | P1 — Ngay lập tức | Gọi điện/zoom khách hàng, review complaint | Xem `02-delivery/complaint-handling/` |
| Revenue at risk (> $500) | P1 — Ngay lập tức | Đánh giá, quyết định action | Lead sắp churn, payment quá hạn |
| Scope change request | P2 — Trong ngày | Review, approve/reject, adjust contract | Khách hàng muốn thêm scope |
| AI Worker quality < 3.5 | P2 — Trong ngày | Review prompt, retrain, hoặc thay thế | Xem `03-backoffice/ai-performance-review/` |
| Deadline < 24h chưa bắt đầu | P2 — Trong ngày | Giao lại, negotiate deadline, hoặc làm tay | Project plan quá tải |
| Chi phí > budget 20% | P3 — Trong tuần | Review, approve hoặc cắt giảm | Tool subscription tăng giá |
| Đề xuất chiến lược mới | P4 — Trong tháng | Đánh giá, PDCA, quyết định | Thị trường mới, sản phẩm mới |

⚠️ **Lưu ý:** "Tổng giám đốc phải can thiệp" không nghĩa "tổng giám đốc làm thay". Tổng giám đốc quyết định direction. AI Workers thực hiện. Ví dụ: khách hàng phàn nàn → tổng giám đốc gọi điện nghe phàn nàn (human touch), sau đó giao AI Workers xử lý complaint theo SOP.

---

## 2.8 Tóm tắt chương

🔑 **6 Key Takeaways:**

**1. AI Native Company = THIẾT KẾ cho AI, không phải thêm AI vào công ty cũ.** Sự khác biệt này quyết định trần tăng trưởng — AI-Enhanced có trần thấp, AI-Native có trần cao.

**2. Kiến trúc 3 tầng (Strategy → Hoạt động chính → Hoạt động hỗ trợ) gom thành 3 phòng ban (Growth, Delivery, Backoffice).** 3 là con số vàng cho OPC — đủ bao phủ, đủ manage cho 1 người.

**3. 7 Trụ cột OPC là nền móng: Thiết kế hệ thống, AI Workforce, Second Brain, Cỗ máy doanh thu, Tấm khiên pháp lý, Vòng lặp cải tiến liên tục, Con người tối thiểu.** Thiếu 1 trụ cột, công ty vẫn chạy nhưng không ổn định.

**4. KWSR Framework tổ chức mỗi phòng ban theo 4 lớp: Knowledge, Workflow, Skill, Rule.** 4 thư mục `_knowledge/`, `_workflow/`, `_skills-agents/`, `_rules/` đảm bảo AI Worker luôn có đủ context để vận hành đúng — không mù thông tin, không vượt giới hạn.

**5. SOP State Machine là tim đập của OPC.** Không phải file .md tĩnh, mà là hệ thống thư mục sống — theo dõi trạng thái, AI tự chuyển file, human review ở đúng điểm, archive tự động.

**6. Tổng giám đốc OPC làm 7-15 giờ/tuần, phần còn lại AI tự vận hành.** Nhưng 7 giờ đó là 7 giờ chất lượng cao — decision-making, relationship-building, strategy. Không phải 7 giờ làm task lặp lại.

---

**Chương 3 tiếp theo sẽ zoom vào từng phòng ban — từng SOP, từng file.** Bạn sẽ thấy phòng ban Growth vận hành như thế nào với 4 AI Workers, phòng ban Delivery triển khai project ra sao với 3 AI Workers, và phòng ban Backoffice giữ máy chạy thế nào với 3 AI Workers. Mỗi phòng ban sẽ đi kèm phân tích IPO, RACI Matrix, và SOP walkthrough chi tiết.

> "Bản vẽ đã xong. Chương sau, chúng ta xây từng tầng."

---

*Chương 2 — Thiết kế AI Native Company | AINS Sample: opc-ains/ | Next: Chương 3 — Hướng dẫn thiết kế từng phòng ban*

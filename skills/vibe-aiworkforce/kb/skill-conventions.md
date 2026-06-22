# Skill Conventions — 8 Mandatory Components

> Reference cho mọi skill build bởi vibe-aiworkforce. Mỗi skill mới PHẢI tuân thủ 8 components dưới đây.

## 1. Schema-Driven Outputs (Tip 1)

**Mọi artifact trong workflow phải có JSON schema tương ứng.**

```
schema/
├── [artifact-name].schema.json   ← JSON Schema draft-07
└── README.md                     ← Index schemas + examples
```

**Tại sao:** Schema ép output có cấu trúc nhất quán → giảm hallucination. LLM biết chính xác field nào cần có, kiểu gì → không tự bịa.

**Validator đi kèm:**
```bash
python3 script/validator.py --artifact output/foo.json --schema schema/foo.schema.json
```

---

## 2. Evidence + confidence_score + need_review (Tip 2)

**Mỗi output JSON phải có 3 fields:**

```json
{
  "result": "...",
  "evidence": [
    {
      "claim": "Marketing team cần 5 content/week",
      "verbatim_quote": "Hiện tại team tôi xuất 5 bài/tuần",
      "source": "input/brief.md",
      "location": "line 23"
    }
  ],
  "confidence_score": 0.85,
  "need_review": false
}
```

**Rules:**
- `confidence_score < 0.7` → tự động set `need_review = true`
- `evidence` phải là **verbatim quote** (trích nguyên văn), không paraphrase
- Validator chạy `verify_evidence()` để check quote thực sự tồn tại trong source_files

**Tại sao:** Buộc AI phải "trích dẫn" → không bịa số liệu, không bịa quote. Nếu không tìm được evidence → confidence thấp → review.

---

## 3. Human-in-the-Loop Logging (Tip 3)

**Items có `need_review = true` được collect vào:**

```
output/review-queue.md
```

**Format:**
```markdown
## Review Queue — [DATE]

### [TIMESTAMP] — [STEP] — [ARTIFACT]
- Confidence: 0.45
- Reason: Missing evidence for claim "X"
- Action needed: [human decision]
- Source: output/workforce-analysis.json
```

**Auto-run sau mỗi step:**
```bash
python3 script/review_queue.py --collect
```

---

## 4. Execution Log (Tip 4)

**Mọi action (read/write/invoke skill) được log:**

```
output/execution_log.jsonl
```

**Mỗi dòng:**
```json
{
  "timestamp": "2026-06-15T15:30:00Z",
  "step": "analyze",
  "action": "write",
  "target": "output/workforce-analysis.json",
  "actor": "vibe-aiworkforce",
  "status": "success",
  "duration_ms": 1250,
  "schema_validated": true,
  "evidence_verified": true
}
```

**Tại sao:** Audit trail. Nếu output sai → trace lại được step nào, action nào, khi nào. Không "bish bish" AI chạy mù.

---

## 5. Hooks — Prevent Harmful Behavior (Tip 5)

**PreToolUse hook trên Write/Edit:**

```json
{
  "PreToolUse": [{
    "matcher": "Write|Edit",
    "hooks": [{"type": "command", "command": "python3 script/validator.py --preflight"}]
  }]
}
```

**Hook prevents:**
- Write vào `template/` folder (state machine integrity)
- Write file khi confidence_score < 0.7 mà chưa qua review
- Edit file ngoài allowlist (chỉ cho phép edit trong `output/`, `processing/`)
- Xóa file trong `archive/` (immutable history)

**Install:**
```bash
bash script/install_hooks.sh
```

---

## 6. Anonymizer + Anti-Prompt-Injection (Tip 6)

**Preflight trước khi process input:**

```bash
python3 script/anonymizer.py --input input/brief.md --output processing/anonymized.md
```

**Strip patterns:**
- Email → `[EMAIL_REDACTED]`
- Phone (VN/US) → `[PHONE_REDACTED]`
- API keys (`sk-`, `ghp_`, `xoxb-`, `AKIA`, `eyJ`) → `[SECRET_REDACTED]`
- User paths `/Users/[name]/...` → `/Users/[REDACTED]/...`
- Credit card numbers → `[CC_REDACTED]`

**Anti-injection detection:**
- `Ignore previous instructions` → `[INJECTION_BLOCKED]`
- `System:` prefix → `[INJECTION_BLOCKED]`
- `<|im_start|>`, `</skill>` → escape + flag for review

---

## 7. SKILL.md + skill.json (Tip 7)

**Mỗi skill có 2 file metadata:**

```
[skill-name]/
├── SKILL.md      ← Human-readable (existing convention)
└── skill.json    ← Machine-readable (NEW)
```

**skill.json schema:** xem `schema/skill-meta.schema.json`

**Tại sao:** Tools/orchestrators có thể parse skill.json để biết dependencies, schemas, scripts mà không cần parse markdown.

---

## 8. Unified Folder Structure (Tip 8)

**MỖI skill phải có 6 folders:**

```
[skill-name]/
├── SKILL.md
├── skill.json
├── kb/                ← Knowledge base, rubrics, references
├── script/            ← validator.py, anonymizer.py, hooks
├── prompt/            ← Reusable prompt templates
├── schema/            ← JSON Schemas cho mọi artifact
├── test/              ← Test cases (smoke, trigger, schema)
└── synthetic-data/    ← Sample inputs để test
```

**Folder purposes:**
- `kb/` — Domain knowledge, rubrics đánh giá, references (Markdown)
- `script/` — Python/Bash scripts (validator, anonymizer, hooks)
- `prompt/` — Reusable prompt templates (lấy từ SKILL.md ra file riêng)
- `schema/` — JSON Schema draft-07 cho mọi output
- `test/` — Test cases: smoke, trigger-validation, schema-validation
- `synthetic-data/` — Sample inputs để test pipeline mà không dùng data thật

---

## Quick Checklist (dùng khi build skill mới)

```
□ skill.json tồn tại + pass schema/skill-meta.schema.json
□ schema/ có ít nhất 1 schema cho output chính
□ script/validator.py tồn tại + `python3 script/validator.py --help` chạy được
□ script/anonymizer.py tồn tại + test patterns
□ Output JSON có evidence[] + confidence_score + need_review
□ script/install_hooks.sh tồn tại + execute được
□ kb/ có ít nhất 1 file knowledge
□ prompt/ có ít nhất 1 reusable prompt
□ test/ có smoke-test.md + trigger-validation.md
□ synthetic-data/ có sample input để test
```

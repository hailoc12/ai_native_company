# Example: LinkedIn Content Marketing Pipeline

**Input nhận được:**
> "Tôi cần quy trình tạo content LinkedIn từ ý tưởng đến publish, hiện tại tôi tự làm thủ công mất 4-5 tiếng mỗi bài"

---

## OUTPUT 1: Folder Structure

```
linkedin-content-pipeline/
├── 00-overview/
│   ├── README.md                    ← Mô tả pipeline, goals, 6 AI actors
│   ├── workforce-map.md             ← Danh sách 6 skills + responsibilities
│   └── architecture.md             ← Flow diagram + integration points
│
├── 01-inputs/
│   ├── topic-briefs/                ← Input: topic ideas từ user
│   │   └── brief-template.md       ← Template điền vào khi có idea mới
│   └── brand-guidelines/
│       └── tone-voice.md           ← Rules về giọng văn, tránh từ gì
│
├── 02-processing/
│   ├── 01-research/
│   │   ├── input.md                ← Brief từ 01-inputs
│   │   ├── research-output.md      ← 3 competitors + 5 data points
│   │   └── skill-prompt.md         ← Prompt cho vibe-linkedin-researcher
│   ├── 02-hook-writing/
│   │   ├── input.md
│   │   ├── hooks-v1.md             ← 5 hook options
│   │   └── skill-prompt.md
│   ├── 03-drafting/
│   │   ├── input.md
│   │   ├── draft-v1.md
│   │   ├── draft-v2.md             ← After revision
│   │   └── skill-prompt.md
│   ├── 04-review/
│   │   ├── review-checklist.md
│   │   ├── review-output.md        ← Score + feedback
│   │   └── skill-prompt.md
│   └── 05-scheduling/
│       ├── schedule-plan.md        ← Best time to post
│       └── skill-prompt.md
│
├── 03-outputs/
│   ├── published-posts/            ← Final posts (with publish date)
│   ├── reports/
│   │   └── pipeline-metrics.md    ← Time saved, quality scores, engagement
│   └── logs/
│       └── run-2026-04-24.md      ← Execution log
│
├── 04-skills/
│   ├── vibe-linkedin-orchestrator/SKILL.md
│   ├── vibe-linkedin-ideator/SKILL.md
│   ├── vibe-linkedin-researcher/SKILL.md
│   ├── vibe-linkedin-writer/SKILL.md
│   ├── vibe-linkedin-reviewer/SKILL.md
│   └── vibe-linkedin-scheduler/SKILL.md
│
├── 05-rules/
│   ├── business-rules.md
│   ├── quality-standards.md
│   └── brand-compliance.md
│
└── 06-tests/
    ├── automated/
    │   ├── smoke-test.md
    │   └── regression-suite.md
    └── manual/
        ├── qa-checklist.md
        └── uat-scenarios.md
```

---

## OUTPUT 2: Workflow

```
[START: User submits topic brief]
      ↓
[STEP 1: Research] — vibe-linkedin-researcher
  Input:  topic-brief.md
  Action: Research 3 competitor posts + gather 5 data points + find hook angles
  Output: research-output.md (saved to 02-processing/01-research/)
  Time:   15 min
      ↓
[STEP 2: Hook Selection] — vibe-linkedin-writer
  Input:  research-output.md
  Action: Generate 5 hook options, user selects 1
  Output: chosen-hook.md
  Time:   5 min
      ↓
[ESCALATE: User picks hook]
  → User selects hook → STEP 3
  → User dislikes all → LOOP back to STEP 2 with feedback
      ↓
[STEP 3: Draft] — vibe-linkedin-writer
  Input:  chosen-hook.md + research-output.md + brand-guidelines
  Action: Write 800-1200 word draft, structure: Hook → Story → Insight → CTA
  Output: draft-v1.md
  Time:   20 min
      ↓
[DECISION: Auto-review score ≥ 7/10?]
  vibe-linkedin-reviewer runs quality check
      ↓ YES                         ↓ NO (score < 7)
      ↓                        [LOOP: Send feedback to writer]
      ↓                        [STEP 3b: vibe-linkedin-writer revises]
      ↓                        [Max 3 iterations → if still < 7, ESCALATE]
[STEP 4: Final Review]
  vibe-linkedin-reviewer
  Checks: Grammar, Tone match, CTA present, No false claims, Length OK
  Output: review-output.md with score breakdown
      ↓
[ESCALATE: Human final approval]
  → APPROVED ↓
  → REVISIONS NEEDED → back to STEP 3
  → REJECTED → Archive, start new brief
      ↓
[STEP 5: Schedule] — vibe-linkedin-scheduler
  Input:  approved draft + brand posting calendar
  Action: Suggest best time (Tue/Thu 8-10am or 5-7pm VN time)
  Output: schedule-plan.md
      ↓
[END: Post queued in Notion/Buffer + run-log entry created]
  → OmniFocus task: "Review LinkedIn post — [topic]" created for publish day
```

---

## OUTPUT 3: Claude Skills cần xây dựng

| # | Skill | Role | Priority | Build Week |
|---|-------|------|---------|-----------|
| 0 | `vibe-linkedin-orchestrator` | Điều phối toàn pipeline | P0 | Week 1 |
| 1 | `vibe-linkedin-researcher` | Research competitor + data | P1 | Week 1 |
| 2 | `vibe-linkedin-writer` | Drafting + revision | P1 | Week 1 |
| 3 | `vibe-linkedin-reviewer` | Quality control | P2 | Week 2 |
| 4 | `vibe-linkedin-scheduler` | Schedule optimization | P2 | Week 2 |
| 5 | `vibe-linkedin-ideator` | Generate topic ideas from trends | P3 | Week 3 |

**Reuse check:** `deep-research` có thể thay vibe-linkedin-researcher cho 70% cases → Build researcher skill chỉ nếu cần LinkedIn-specific research patterns.

### Build order with dependencies:

```
Week 1: vibe-linkedin-orchestrator
         ↓ depends on
        vibe-linkedin-researcher + vibe-linkedin-writer
         
Week 2: vibe-linkedin-reviewer + vibe-linkedin-scheduler
        (test integration with W1 skills)
         
Week 3: vibe-linkedin-ideator (optional, can use vibe-gps instead)
```

---

## OUTPUT 4: Rules & Tests

### Business Rules

| ID | Rule | Severity |
|----|------|---------|
| BR-01 | Post KHÔNG được publish khi chưa có human approval | CRITICAL |
| BR-02 | Nội dung KHÔNG được claim statistics chưa verify source | HIGH |
| BR-03 | Không mention competitor bằng tên nếu không có context rõ ràng | HIGH |
| BR-04 | Mỗi post PHẢI có CTA rõ ràng (comment / follow / message) | MEDIUM |
| BR-05 | Độ dài: 600-1500 characters cho LinkedIn optimal | MEDIUM |
| BR-06 | Không dùng emoji quá 3 cái trong 1 post | LOW |

### Quality Standards

| ID | Standard | Metric | Threshold |
|----|---------|--------|---------|
| QS-01 | Readability | Flesch-Kincaid score | ≥ 60 |
| QS-02 | Hook strength | Does first line create curiosity? | Reviewer score ≥ 4/5 |
| QS-03 | Brand voice match | Tone consistent with guidelines? | ≥ 80% match |
| QS-04 | Structural completeness | Hook + Body + Insight + CTA all present? | 100% |

### Automated Tests

| ID | Test | Pass Condition |
|----|------|----------------|
| AT-01 | Smoke: orchestrator starts | Returns research-output.md in < 20 min |
| AT-02 | Input validation: empty brief | Returns error "Brief cannot be empty" |
| AT-03 | Quality gate fires at score < 7 | Enters revision loop, does not skip |
| AT-04 | Max loop protection | After 3 revisions, escalates to human |
| AT-05 | Output schema check | draft.md has Hook/Body/Insight/CTA sections |

### Manual Tests

| ID | Scenario | Tester | Pass Condition |
|----|---------|--------|----------------|
| MT-01 | Happy path: topic "AI productivity tips" | QA | Full output in < 45 min, score ≥ 7/10 |
| MT-02 | Domain accuracy | LinkedIn content expert | Advice is accurate, no cringe, sounds human |
| MT-03 | User acceptance | Target audience member | "I would engage with this post" ≥ 4/5 |
| MT-04 | Brand compliance | Client/founder | Matches brand voice guidelines |

---

**Estimated time savings:** 4-5 hours → 45 min (human time: only hook selection + final approval ~15 min)

**Next step:** Invoke `clone-skill-to-vibe-work` to build vibe-linkedin-orchestrator first.

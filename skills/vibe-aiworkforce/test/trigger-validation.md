# Trigger Validation — vibe-aiworkforce

> Test description frontmatter triggers skill correctly.

## Should Trigger (positive cases)

User gõ những câu sau → vibe-aiworkforce phải match:

1. **"Tôi cần xây AI workforce cho team marketing"**
   - Signal: "xây AI workforce"
   - Expected: MATCH

2. **"Tự động hóa quy trình content marketing từ A-Z"**
   - Signal: "tự động hóa quy trình" + "marketing"
   - Expected: MATCH

3. **"Tạo SOP + Skills + Tests cho domain legal review"**
   - Signal: "SOP", "Skills", "Tests" + domain
   - Expected: MATCH

4. **"Chia công việc thành các AI agents chuyên biệt"**
   - Signal: "AI agents chuyên biệt" + "chia công việc"
   - Expected: MATCH

5. **"Mô tả task: tôi cần AI handle customer support email"**
   - Signal: "cần AI handle" + domain task
   - Expected: MATCH

## Should NOT Trigger (negative cases)

User gõ những câu sau → vibe-aiworkforce KHÔNG được match (thuộc skill khác):

1. **"Review chất lượng bài viết này"**
   - Expected: → vibe-review (NOT vibe-aiworkforce)

2. **"Clone skill của Nancy Duarte cho presentations"**
   - Expected: → clone-skill-to-vibe-work

3. **"Tìm root cause của bug này"**
   - Expected: → vibe-gps hoặc debugging skill

4. **"Summarize tài liệu này"**
   - Expected: → vibe-overview hoặc deep-research

5. **"Sửa bug trong skill vibe-content-writer"**
   - Expected: → vibe-improve-orchestrator (NOT vibe-aiworkforce, vì đây là improve existing)

## How to run

```
1. Đọc description của vibe-aiworkforce
2. Imagine user gõ từng câu trên
3. For each: Would the description cause skill to trigger?
4. Score: ≥8/10 correct = PASS
```

## Current Description

```
Chuyển hóa bất kỳ task/workflow doanh nghiệp thành nhân sự số hoàn chỉnh — 
bao gồm folder structure, workflow có conditional branching, Claude Skills 
chuyên biệt (vibe-[nhiem-vu]-[sub-skill]), và hệ thống Rules & Tests. 
Use when a business wants to build AI-powered digital workforce for any operational task.
```

## Analysis

| Test Case | Trigger Reason | Result |
|-----------|----------------|--------|
| #1 "xây AI workforce" | "AI workforce" direct match | ✓ Should match |
| #2 "tự động hóa quy trình" | "task/workflow... nhân sự số" semantic match | ✓ Should match |
| #3 "SOP + Skills + Tests" | "Skills chuyên biệt" + "Rules & Tests" match | ✓ Should match |
| #4 "AI agents chuyên biệt" | "Claude Skills chuyên biệt" near-match | ✓ Should match |
| #5 "cần AI handle" | "AI-powered digital workforce" semantic match | ✓ Should match |
| #1 neg "review chất lượng" | No "build/create workforce" signal | ✓ Should NOT match |
| #2 neg "clone skill" | Specific to clone-skill-to-vibe-work | ✓ Should NOT match |
| #3 neg "root cause" | Specific to vibe-gps | ✓ Should NOT match |
| #4 neg "summarize" | Specific to vibe-overview | ✓ Should NOT match |
| #5 neg "sửa bug skill" | Improve existing ≠ build new | ✓ Should NOT match |

**Score: 10/10** — description tốt, không cần sửa.

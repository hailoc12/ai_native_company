# Template: Workflow Design

## Workflow: [Task Name]

**Trigger:** [What starts this workflow]
**Owner:** vibe-[domain]-orchestrator
**Frequency:** [once / daily / triggered by X / real-time]
**Est. Duration:** [total time end-to-end]
**Human Touchpoints:** [list steps requiring human approval]

---

## Workflow Diagram

```
[START: Trigger — describe what fires this]
      ↓
┌─────────────────────────────────┐
│ STEP 1: [Step Name]             │
│ Actor: vibe-[domain]-[role]     │
│ Input:  [what enters]           │
│ Action: [what happens]          │
│ Output: [what exits]            │
│ Time:   [X min]                 │
└─────────────────────────────────┘
      ↓
[DECISION: Condition X is true?]
      ↓ YES                    ↓ NO
┌──────────┐            ┌──────────────┐
│ STEP 2A  │            │ STEP 2B      │
│ Actor:   │            │ Actor:       │
│ Action:  │            │ Action:      │
└──────────┘            └──────────────┘
      ↓                       ↓
      └──────[MERGE]──────────┘
                 ↓
[PARALLEL: Run 3A and 3B simultaneously]
┌──────────────┐    ┌──────────────┐
│ STEP 3A      │    │ STEP 3B      │
│ Actor:       │    │ Actor:       │
└──────────────┘    └──────────────┘
      ↓                   ↓
      └────[MERGE + VALIDATE]────┘
                   ↓
[DECISION: Quality passes (score ≥ threshold)?]
      ↓ YES                    ↓ NO
      ↓                  [LOOP: back to STEP 2 with feedback]
[ESCALATE: Human checkpoint]
→ IF approved:
      ↓
┌─────────────────────────────────┐
│ STEP 4: [Final Step]            │
│ Actor: vibe-[domain]-[role]     │
└─────────────────────────────────┘
      ↓
[END: Task Complete]
→ Log entry created
→ OmniFocus task marked done
```

---

## Step Details

### Step 1: [Name]
| Field | Value |
|-------|-------|
| **Actor** | vibe-[domain]-[role] |
| **Input** | [file/data/format] |
| **Action** | [specific action description] |
| **Output** | [file/data/format saved to 02-processing/step-1/] |
| **Time Est.** | [X minutes] |
| **Error** | IF fails → [retry / escalate / skip with log] |
| **Quality Gate** | [condition to proceed to next step] |

### Step 2A: [Name]
*[same format as above]*

### Decision: [Condition X]
| Condition | Branch | Reason |
|-----------|--------|--------|
| X > threshold | → STEP 2A | [why] |
| X ≤ threshold | → STEP 2B | [why] |
| X = undefined | → ESCALATE | [why] |

---

## Error Handling

| Error Type | Handler | Recovery |
|-----------|---------|----------|
| Input missing | Log + escalate | Request input from user |
| Step timeout | Retry x3 | If still fails → escalate |
| Quality below min | Feedback loop | Max 3 iterations, then escalate |
| External API down | Use cached/fallback | Log degraded mode |

---

## Metrics to Track

| Metric | Target | Alert if |
|--------|--------|----------|
| End-to-end time | [X min] | > [2X min] |
| Quality score avg | [≥ X] | < [X-10%] |
| Human escalations | [≤ X%] | > [2X%] |
| Error rate | [≤ X%] | > [5%] |

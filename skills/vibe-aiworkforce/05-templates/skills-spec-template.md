# Template: Skills Specification

## 🤖 Skills cần xây dựng: [Project Name]

### Skill Map tổng quan

| # | Skill Name | Role | Priority | Depends On |
|---|-----------|------|---------|-----------|
| 0 | vibe-[domain]-orchestrator | Điều phối toàn workflow | P0 | — |
| 1 | vibe-[domain]-[role1] | [Responsibility] | P1 | orchestrator |
| 2 | vibe-[domain]-[role2] | [Responsibility] | P1 | [role1] |
| 3 | vibe-[domain]-[role3] | [Responsibility] | P2 | [role1], [role2] |

### Build Order (sequential by dependency)

```
Phase 1 (Build first):
  → vibe-[domain]-orchestrator    ← P0, coordinates all

Phase 2 (Core workers):
  → vibe-[domain]-[role1]         ← P1, first in chain
  → vibe-[domain]-[role2]         ← P1, second in chain

Phase 3 (Specialists):
  → vibe-[domain]-[role3]         ← P2, optional enhancement

Phase 4 (Integration test):
  → Run smoke tests end-to-end
  → Fix integration issues
```

---

## Per-Skill Specifications

### Skill 0: vibe-[domain]-orchestrator

```
Purpose:    Nhận task brief, điều phối toàn workflow, tổng hợp output cuối
Persona:    Senior Project Manager — calm, decisive, escalates when stuck
Input:      Task brief (text), working folder path
Output:     Completed workflow artifacts + summary report
Tools:      Read, Write, Bash (for file ops), Agent (spawn sub-agents)
Quality:    All steps completed, all artifacts present, log entry written
Escalate:   - Any step fails > 3 retries
            - Quality gate fails after 3 loops
            - Output will affect external stakeholders
```

**Orchestrator Prompt Skeleton:**
```markdown
You are vibe-[domain]-orchestrator.

Your job: Take a task brief and coordinate the [domain] workflow end-to-end.

Workflow steps to execute:
1. Invoke vibe-[domain]-[role1] with [input]
2. Check output quality: [quality condition]
3. IF quality OK → invoke vibe-[domain]-[role2]
   ELSE → request revision from vibe-[domain]-[role1]
4. [Continue...]
5. Compile final output in 03-outputs/

Always:
- Log each step to 03-outputs/logs/run-[timestamp].md
- Escalate to human if stuck after 3 attempts
- Never skip quality checks
```

---

### Skill 1: vibe-[domain]-[role1]

```
Purpose:    [Single clear responsibility — 1 sentence]
Persona:    [Expert title] — [key trait that affects output quality]
Input:      [Format: file / text / data structure]
            [Source: where it comes from in the workflow]
            [Example: "A topic brief with 3-5 bullet points"]
Output:     [Format: file / text / data structure]
            [Destination: where it goes in the folder]
            [Example: "A 800-word draft saved to 02-processing/03-drafting/draft-v1.md"]
Tools:      [List only tools actually needed]
            □ Read (read input files)
            □ Write (save output)
            □ WebSearch (if research needed)
            □ Bash (if file manipulation needed)
Quality:    [Measurable minimum bar]
            - Length: [min-max characters/words]
            - Format: [structure requirements]
            - Content: [what must be present]
Escalate:   [Specific conditions requiring human input]
```

**Trigger phrases:**
- "Run vibe-[domain]-[role1]"
- "[Task description that maps to this role]"

---

### Skill 2: vibe-[domain]-[role2]

*[Same format as Skill 1]*

---

### Skill 3: vibe-[domain]-[role3]

*[Same format as Skill 1]*

---

## Inter-Skill Communication Protocol

```
How skills pass data to each other:

Method 1 — File handoff (recommended):
  Skill A writes: 02-processing/[step-name]/output.md
  Skill B reads:  02-processing/[step-name]/output.md
  
Method 2 — Context injection:
  Orchestrator reads Skill A output
  Includes relevant section in Skill B prompt

Method 3 — Structured JSON:
  For machine-readable data exchange:
  02-processing/[step-name]/output.json
```

## Skill Reuse Check

Before building a new skill, verify existing skills can't cover it:

| Function needed | Check existing skill |
|----------------|---------------------|
| Web research | `deep-research` |
| Summarization/synthesis | `vibe-overview` |
| Problem solving | `vibe-gps` |
| Document writing | `ai-humanizer` |
| User feedback | `vibe-user-review` |

Only build new skill if existing coverage < 70% of needed function.

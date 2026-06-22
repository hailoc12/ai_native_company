# Skill Build Prompt — Template

> Prompt template cho việc build skill mới theo 8 tips. Reusable cho mọi skill build bởi vibe-aiworkforce.

## Context Variables

```
{SKILL_NAME}        = vibe-[domain]-[role]
{PURPOSE}           = Single-sentence responsibility
{PERSONA}           = Expert title + key trait
{INPUT_FORMAT}      = Format + source
{OUTPUT_FORMAT}     = Format + destination
{TOOLS}             = List of tools
{QUALITY_TIER}      = TEMPLATED / EXPERT-CLONE / GPS-ENHANCED / DUAL
{COMPANY_ROOT}      = Path to company folder
{DEPARTMENT}        = Department folder name
```

## Prompt

```markdown
You are building {SKILL_NAME} as part of vibe-aiworkforce Phase E.

## Skill Specification
- **Purpose:** {PURPOSE}
- **Persona:** {PERSONA}
- **Input:** {INPUT_FORMAT}
- **Output:** {OUTPUT_FORMAT}
- **Tools:** {TOOLS}
- **Quality Tier:** {QUALITY_TIER}

## Build Steps (MANDATORY — follow all 8)

### E.0 Build core SKILL.md
Write SKILL.md at: {COMPANY_ROOT}/{DEPARTMENT}/ai_workforce/{SKILL_NAME}/SKILL.md

SKILL.md must include:
- Frontmatter with name + description (4-component formula: WHAT.TRIGGER.EXCLUSION.PUSH)
- Persona section
- When to Use section with trigger phrases
- Workflow steps
- Output format with evidence/confidence_score/need_review
- Anti-patterns

### E.1 Schema Layer
Create folder: {SKILL_NAME}/schema/

For each output artifact this skill produces, create:
- schema/[artifact-name].schema.json (JSON Schema draft-07)

Required fields in EVERY output schema:
- evidence[] (array of {claim, verbatim_quote, source})
- confidence_score (number 0-1)
- need_review (boolean)

### E.2 Validator Layer
Create: {SKILL_NAME}/script/validator.py

Validator must:
- Validate artifacts against schemas
- Verify evidence verbatim_quote exists in source files
- Check confidence_score threshold (default 0.7)
- Auto-set need_review=true when confidence < threshold
- Log to execution_log.jsonl

Reference: ~/.claude/skills/vibe-aiworkforce/script/validator.py

### E.3 skill.json
Create: {SKILL_NAME}/skill.json (parallel to SKILL.md)

Must follow schema: ~/.claude/skills/vibe-aiworkforce/schema/skill-meta.schema.json

### E.4 Anonymizer Preflight
Create: {SKILL_NAME}/script/anonymizer.py

Strip patterns:
- Email, phone, API keys, JWT, credit cards
- User paths (/Users/[name]/)
- Prompt injection patterns ("Ignore previous instructions", "System:", etc.)

Reference: ~/.claude/skills/vibe-aiworkforce/script/anonymizer.py

### E.5 Hooks
Create: {SKILL_NAME}/hooks.json

PreToolUse hook on Write|Edit:
- Block writes to template/ folder
- Block writes to archive/ folder
- Block writes outside allowlist (output/, processing/, input/)

Reference: ~/.claude/skills/vibe-aiworkforce/script/install_hooks.sh

### E.6 Execution Log
Convention: every action appends to {SKILL_NAME}/output/execution_log.jsonl

Each entry: {timestamp, step, action, target, actor, status, schema_validated, evidence_verified}

Use: python3 script/log_helper.py STEP ACTION TARGET STATUS

### E.7 Evidence Validation
After EVERY step output, run:
  python3 script/validator.py --run-all --artifact output/[step-output].json

If confidence < 0.7 or evidence missing → need_review=true → review_queue.py collects

## Folder Structure (final)

{SKILL_NAME}/
├── SKILL.md
├── skill.json
├── kb/                    (knowledge base — rubrics, references)
├── script/                (validator.py, anonymizer.py, log_helper.py)
├── prompt/                (reusable prompts)
├── schema/                (JSON schemas for outputs)
├── test/                  (smoke-test.md, trigger-validation.md)
├── synthetic-data/        (sample inputs)
└── hooks.json             (PreToolUse/PostToolUse config)

## Verification

Before declaring skill build complete, run:
1. python3 script/validator.py --artifact skill.json --schema [...]/skill-meta.schema.json
2. python3 script/anonymizer.py --test
3. ls -la {SKILL_NAME}/ → all 6 folders + skill.json + SKILL.md present

If any step fails → fix → re-verify.

## Style

- Vietnamese primary, English technical terms OK
- "Explain the WHY" — explain reasons, not just rules
- Concrete examples > abstract rules
- 80-250 word description with 4-component formula
```

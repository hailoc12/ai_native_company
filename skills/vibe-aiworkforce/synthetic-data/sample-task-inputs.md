# Synthetic Data — Sample Task Inputs

> Sample inputs để test vibe-aiworkforce pipeline mà không cần data thật.

## Sample 1: Content Marketing Pipeline

```markdown
# Task Brief: LinkedIn Content Pipeline

**Context:** Tôi là Marketing Manager tại tech startup. Hiện tại team tôi xuất 
5 bài LinkedIn/tuần, mất khoảng 4 tiếng mỗi bài (research + draft + review + 
schedule).

**Pain point:** Quality inconsistency, không có SOP, depended nhiều vào 1 
writer senior. Nếu writer nghỉ → output dừng.

**Goal:** Build AI workforce để:
- Auto-research trending topics trong industry
- Draft posts theo brand voice
- Quality gate trước khi publish
- Schedule tối ưu theo engagement data

**Constraints:**
- Brand voice: Professional but casual, không salesy
- Compliance: Approved claims only, no unverified statistics
- Output: 800-1200 words/post, 1 post/business day
- Tools: WebSearch, Buffer/Hootsuite API
```

**Expected output from vibe-aiworkforce:**
- Domain: Marketing
- Complexity: MEDIUM (5+ steps, parallel branches)
- Skills: vibe-linkedin-orchestrator + vibe-linkedin-researcher + 
  vibe-linkedin-writer + vibe-linkedin-reviewer + vibe-linkedin-scheduler
- Quality Tier: writer=EXPERT-CLONE, others=TEMPLATED
- Workflow: ~8 nodes với REVIEW + ESCALATE

---

## Sample 2: Customer Support Triage

```markdown
# Task Brief: Customer Support Email Automation

**Context:** Customer support team nhận 50+ emails/ngày, 80% là FAQs. 
Agents spend 4h/ngày reply repetitive emails.

**Goal:** AI handle Level-1 emails end-to-end, escalate Level-2+ to human.

**Requirements:**
- Classify email intent (FAQ, complaint, billing, technical, urgent)
- Draft response using approved templates
- NEVER promise refund > $50 without human auth
- Always respond within 2h SLA (business hours)
- Log every interaction for QA

**Sensitivity:** PII must be anonymized before processing.
```

**Expected output from vibe-aiworkforce:**
- Domain: Customer Support
- Complexity: COMPLEX (8+ steps, multiple conditions, external integrations)
- Skills: vibe-support-classifier + vibe-support-responder + 
  vibe-support-escalator + vibe-support-tracker + vibe-support-orchestrator
- Quality Tier: classifier=GPS-ENHANCED, responder=TEMPLATED with expert prompts
- Workflow: ~12 nodes với DECISION (intent) + ESCALATE (sensitive cases) + INCIDENT (SLA breach)
- Anonymizer required (PII in emails)

---

## Sample 3: Financial Report Generation

```markdown
# Task Brief: Monthly Financial Report Automation

**Context:** CFO office cần generate monthly financial report từ data 
multiple sources (QuickBooks, bank API, payroll system).

**Goal:** AI workforce:
- Pull data from 3 sources
- Reconcile discrepancies
- Generate report theo template
- Quality check (math accuracy, completeness)
- Distribute to stakeholders

**Compliance:**
- SOX compliance required
- Audit trail mandatory
- Output đi to Board of Directors

**Sensitivity:** Financial data — anonymizer + encryption required.
```

**Expected output from vibe-aiworkforce:**
- Domain: Finance
- Complexity: COMPLEX (multi-source integration, compliance, high-stakes output)
- Skills: vibe-fin-report-orchestrator + vibe-fin-data-collector + 
  vibe-fin-reconciler + vibe-fin-report-writer + vibe-fin-reviewer + 
  vibe-fin-distributor
- Quality Tier: reconciler=GPS-ENHANCED, writer=EXPERT-CLONE (CFO voice)
- Workflow: ~15 nodes với REVIEW (mandatory) + ESCALATE (always, before distribute)
- Hooks required: prevent edit template/ (SOX audit)
- Anonymizer required (financial data)

---

## How to use these samples

```bash
# Test Phase A (ANALYZE) với sample 1:
cd ~/.claude/skills/vibe-aiworkforce
python3 script/validator.py --artifact /tmp/test-analysis.json \
  --schema schema/workforce-analysis.schema.json

# Manual test: invoke skill với brief này, verify:
#   - Output workforce-analysis.json PASS schema validation
#   - Has evidence[] with verbatim quotes from brief
#   - confidence_score ≥ 0.7
#   - need_review = false (hoặc true if ambiguous, with reason)
```

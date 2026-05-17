# Template: Rules & Tests

## 📋 Rules & Tests: [Project Name]

---

## SECTION 0: OKR / KRI / KPI Alignment

> Workforce phải biết task contribute vào mục tiêu gì để deliver đúng expectations.

| Indicator | Name | Target | How This Workforce Contributes |
|-----------|------|--------|-------------------------------|
| OKR (Committed) | [Objective] | [Key Result target] | [Which skill/output contributes] |
| OKR (Stretch) | [Objective] | [Key Result target] | [Which skill/output contributes] |
| KRI (Outcome) | [KRI name] | [Target value] | [Output directly impacts this KRI] |
| KPI (Performance) | [KPI name] | [Target value] | [Process efficiency affects this KPI] |

**KPI → KRI → OKR Chain:**
[KPI: process metric] → [KRI: outcome metric] → [OKR: strategic objective]

**Report Schedule:**
| Report | Frequency | Indicators to Include |
|--------|-----------|---------------------|
| Daily dashboard | Daily | KPI only |
| Weekly summary | Weekly | KPI + KRI trend |
| Monthly review | Monthly | KRI + OKR progress + KPI anomalies |
| Quarterly review | Quarterly | OKR full scoring + KRI + lessons learned |
| Ad-hoc | As needed | Depends on situation (incident: SLI/SLO, strategy: OKR) |

---

## SECTION 1: Business Rules (BR)

Rules enforce business logic — violating = invalid output, reject immediately.

### Severity Levels
- **CRITICAL**: Auto-reject output, escalate to human, stop workflow
- **HIGH**: Flag output, require human review before continuing
- **MEDIUM**: Log warning, add note to output, continue
- **LOW**: Log info only

### Business Rules Table

| ID | Rule | Severity | Check Method |
|----|------|----------|-------------|
| BR-01 | [Rule: cannot do X without Y condition] | CRITICAL | Automated: check if Y present in input |
| BR-02 | [Rule: output must contain Z] | HIGH | Automated: scan output for Z |
| BR-03 | [Rule: must not exceed limit N] | HIGH | Automated: count/measure N |
| BR-04 | [Rule: must follow format F] | MEDIUM | Automated: regex check |
| BR-05 | [Rule: should include disclaimer D] | LOW | Automated: keyword check |

**Domain-specific additions:**
- [Add rules specific to this business domain]

---

## SECTION 2: Quality Standards (QS)

Standards define "good enough" output — below threshold = request revision.

### SLI / SLO / SLA Table

| ID | Standard | SLI (Metric) | SLO (Target) | SLA (if external) | Measurement Method |
|----|---------|-------------|-------------|-------------------|-------------------|
| QS-01 | Output completeness | % sections present | 100% | — | Auto: schema check |
| QS-02 | Output accuracy | [Domain-specific metric] | [≥ X] | [Promise if external] | [Auto/Manual] |
| QS-03 | Format compliance | Schema match rate | 100% | — | Auto: regex/schema |
| QS-04 | [Domain quality] | [How measured] | [Threshold] | [Promise] | [Method] |
| QS-05 | Response time | Minutes from input to output | ≤ [N] min | ≤ [N*2] min | Auto: timer |

### Error Budget

| SLI | SLO | Error Budget (100% - SLO) | Status | Action when < 25% remaining |
|-----|-----|--------------------------|--------|----------------------------|
| [Metric 1] | [Target] | [%] | [Current %] | Review + reduce risky changes |
| [Metric 2] | [Target] | [%] | [Current %] | Review + reduce risky changes |

### Prevention Measures

| Workflow Step | Risk | Prevention (Error-proof) | Priority |
|--------------|------|-------------------------|----------|
| [Step N: create output] | [What could go wrong] | [How to prevent — Eliminate/Substitute/Detect] | [1-4] |

### Incident Management

| Trigger | Action | RCA Required | SOP Update Rule |
|---------|--------|-------------|----------------|
| Quality gate fail 3+ loops | Create Incident Report | YES — 5 Whys or Fishbone | Same error ≥ 3x → update SOP |
| SLA breach | Create Incident Report | YES | Same error ≥ 3x → update SOP |
| SLO miss 2 periods | Create Incident Report | YES | Always review |
| Stakeholder reject | Create Incident Report | YES | Same error ≥ 3x → update SOP |

**Blameless Principle:** Root cause traces to SYSTEM (process gap, missing rule, tool limitation). Never individual blame.

---

## SECTION 3: Automated Tests (AT)

Claude tự chạy — không cần human. Each test is a prompt Claude can execute.

### Test Suite Structure

```
AT-SMOKE:     Quick sanity check — runs in < 2 min, always first
AT-CORE:      Core functionality — happy path
AT-EDGE:      Edge cases and boundary conditions
AT-REGRESSION: Run after any skill change to catch regressions
```

### Automated Test Cases

| ID | Category | Test Name | Test Prompt | Pass Condition |
|----|---------|-----------|-------------|----------------|
| AT-01 | SMOKE | Workflow starts | "Run orchestrator with input: [minimal valid input]" | Returns Step 1 output within 5 min |
| AT-02 | SMOKE | Input validation | "Run orchestrator with input: [empty input]" | Returns error message, not crash |
| AT-03 | CORE | Happy path | "Run full workflow with: [standard test case]" | All 4 deliverables present in output folders |
| AT-04 | CORE | Output format | "Check output schema: [expected schema]" | Output matches schema 100% |
| AT-05 | EDGE | Missing field | "Run with input missing field X" | Escalates to human, logs missing field |
| AT-06 | EDGE | Quality failure | "Run with intentionally bad input to trigger quality gate" | Quality gate fires, enters revision loop |
| AT-07 | EDGE | Max loops | "Simulate 3 failed quality checks" | After 3 loops, escalates to human |
| AT-08 | REGRESSION | [Key function] | [Test prompt] | [Expected output unchanged] |

### How to Run Automated Tests

```bash
# Run all tests (Claude executes these in sequence)
# Prompt template:
"Run automated test suite for [project]:
1. Start with AT-01 (smoke test)
2. If smoke fails → stop, report failure
3. If smoke passes → run AT-02 through AT-07
4. Report: [pass count]/[total] with details on any failures"
```

---

## SECTION 4: Manual Tests (MT)

Con người phải review — cannot automate judgment, creativity, or domain expertise.

### Test Scenarios

| ID | Scenario | Tester Role | Pre-conditions | Test Steps | Pass Condition |
|----|---------|------------|----------------|-----------|----------------|
| MT-01 | Happy path: typical use case | QA / PM | Skill deployed, test data ready | 1. Input [standard case] → 2. Run workflow → 3. Review all 4 outputs | All outputs present + quality score ≥ 7/10 |
| MT-02 | Domain accuracy check | Domain Expert | MT-01 completed | 1. Review content output → 2. Check factual accuracy → 3. Check domain appropriateness | Expert rates ≥ 4/5 stars |
| MT-03 | End-user experience | Real User (target persona) | Clean environment | 1. User given task brief → 2. Run workflow → 3. User reviews final output | User satisfied ≥ 4/5, would use again |
| MT-04 | Edge case: unusual input | QA | — | 1. Input [unusual but valid case] → 2. Run → 3. Check graceful handling | No crash, sensible output or clear error |
| MT-05 | Stress test: volume | PM / Tech | — | Run 5 items back-to-back | No quality degradation, consistent output |
| MT-06 | Security/compliance | Compliance Officer | — | 1. Input sensitive data → 2. Check output → 3. Verify no data leak | Sensitive data handled per policy |

### Manual Test Checklist (per run)

```
Pre-run:
  □ Test environment is fresh (no cached state)
  □ Test data prepared and documented
  □ Tester briefed on what to check

During run:
  □ Screenshot key outputs
  □ Note any unexpected behavior
  □ Time each major step

Post-run:
  □ Complete test result table
  □ File bug reports if any failures
  □ Update test cases if new edge case discovered
```

### Test Result Documentation

```markdown
## Test Run: [Date] — [Tester Name]

**Version:** [skill version or commit]
**Environment:** [Claude model, context]
**Test data:** [reference to test data used]

| Test ID | Result | Notes |
|---------|--------|-------|
| MT-01 | PASS/FAIL | [observation] |
| MT-02 | PASS/FAIL | [observation] |

**Overall:** [X/Y tests passed]
**Critical issues:** [list or "None"]
**Recommended action:** [Ship / Fix and retest / Major revision needed]
```

---

## SECTION 5: Definition of Done

Workflow/skill version is "done" when:

```
□ All CRITICAL business rules enforced and verified
□ All HIGH rules tested and passing
□ AT-SMOKE and AT-CORE passing 100%
□ AT-EDGE passing ≥ 80%
□ MT-01 (happy path) PASS by QA
□ MT-02 (domain accuracy) PASS by domain expert
□ MT-03 (user experience) ≥ 4/5 from real user
□ All CRITICAL and HIGH bugs fixed
□ Test results documented and archived
□ All SLIs have SLO targets defined and measurable
□ Quality gate pass rate ≥ SLO threshold
□ Error budget tracked and not exhausted
□ Prevention measures defined for high-risk steps
□ Incident reports (if any) have root cause + prevention applied
□ No open incidents without RCA
```

# S — Skills & Agents: 01-Growth Department

> "What AI workers CAN DO — callable skills & agent profiles."

## AI Workforce Roster

| Worker | Role | Profile | Installed Skill | SOP Coverage |
|--------|------|---------|----------------|--------------|
| AI-01 | Sales Rep | [ai-workers/sales-ai-profile.md](../ai-workers/sales-ai-profile.md) | `vibe-opc_sample-growth-sales` | GRO-004, 005, 008, 009, 010 |
| AI-02 | Marketing/Content Manager | [ai-workers/marketing-ai-profile.md](../ai-workers/marketing-ai-profile.md) | `vibe-opc_sample-growth-content-mgr` | GRO-001, 002, 003, 007 |
| AI-03 | SEO & Content Writer | [ai-workers/seo-ai-profile.md](../ai-workers/seo-ai-profile.md) | `vibe-opc_sample-growth-writer` | GRO-001 (consult), GRO-006 (contrib) |
| AI-04 | Analytics & Social Media | [ai-workers/analytics-ai-profile.md](../ai-workers/analytics-ai-profile.md) | `vibe-opc_sample-growth-social` | GRO-006 |

## Skill Files Location

Skills are stored in company folder (PRIMARY) with symlinks to `~/.claude/skills/`:

| Skill | Primary Location | Installed |
|-------|-----------------|-----------|
| `vibe-opc_sample-growth-content-mgr` | [ai_workforce/vibe-opc_sample-growth-content-mgr/SKILL.md](../ai_workforce/vibe-opc_sample-growth-content-mgr/SKILL.md) | Symlink |
| `vibe-opc_sample-growth-writer` | [ai_workforce/vibe-opc_sample-growth-writer/SKILL.md](../ai_workforce/vibe-opc_sample-growth-writer/SKILL.md) | Symlink |
| `vibe-opc_sample-growth-social` | [ai_workforce/vibe-opc_sample-growth-social/SKILL.md](../ai_workforce/vibe-opc_sample-growth-social/SKILL.md) | Symlink |
| `vibe-opc_sample-growth-sales` | [ai_workforce/vibe-opc_sample-growth-sales/SKILL.md](../ai_workforce/vibe-opc_sample-growth-sales/SKILL.md) | Pending build |

## Skill Invocation

Skills are invocable via `/vibe-opc_sample-growth-{role}`.

| Skill Command | Triggers When |
|--------------|---------------|
| `/vibe-opc_sample-growth-sales` | Lead, deal, proposal, client, CRM tasks |
| `/vibe-opc_sample-growth-content-mgr` | Content creation, email marketing, social media management |
| `/vibe-opc_sample-growth-writer` | Blog writing, SEO content, keyword research, technical SEO |
| `/vibe-opc_sample-growth-social` | Analytics, reporting, social media metrics, dashboards |

## Capability Matrix

| Capability | AI-01 | AI-02 | AI-03 | AI-04 |
|-----------|-------|-------|-------|-------|
| Lead scoring | OWN | - | - | ANALYZE |
| Content creation | REVIEW | OWN | EXECUTE | - |
| Email campaigns | - | OWN | CONTRIBUTE | - |
| Social media | - | REVIEW | - | OWN |
| Analytics/Reporting | - | - | - | OWN |
| Proposal writing | OWN | REVIEW | COPY | - |
| Client communication | OWN | SUPPORT | - | - |
| CRM management | OWN | - | - | DATA |

## SOP-to-Skill Coverage

| SOP | Assigned Skill | Status |
|-----|---------------|--------|
| SOP-GRO-001 | AI-02 + AI-03 | Covered |
| SOP-GRO-002 | AI-02 | Covered |
| SOP-GRO-003 | AI-02 + AI-04 | Covered |
| SOP-GRO-004 | AI-01 | Covered |
| SOP-GRO-005 | AI-01 | Covered |
| SOP-GRO-006 | AI-04 | Covered |
| SOP-GRO-007 | AI-02 | Covered |
| SOP-GRO-008 | AI-01 | Covered |
| SOP-GRO-009 | AI-01 | Covered |
| SOP-GRO-010 | AI-01 | Covered |

**Coverage: 10/10 SOPs = 100%**

---

*KWSR Layer: S (Skills & Agents) | Department: 01-Growth | Version: 1.2 | Updated: 2026-05-12*

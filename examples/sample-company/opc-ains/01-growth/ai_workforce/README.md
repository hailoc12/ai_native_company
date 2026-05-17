# AI Workforce — Growth Department (Marketing)

> **"AI skills luu TRONG company folder — 1 folder = toan bo company + skills."**

## Overview

Day la thu muc chua tat ca callable AI skills cho Growth Department. Moi skill la mot SKILL.md file hoan chinh co the duoc invoked boi Claude.

**NOTA:** Skills o day la PRIMARY copies. Symlinks tu `~/.claude/skills/` → day.

---

## Marketing Skills (4 skills)

| Skill | Role | SOP Coverage | Quality Tier |
|-------|------|-------------|--------------|
| [vibe-opc_sample-growth-mkt-orchestrator](vibe-opc_sample-growth-mkt-orchestrator/SKILL.md) | Marketing Orchestrator (coordinator) | Cross-SOP coordination | TEMPLATED |
| [vibe-opc_sample-growth-content-mgr](vibe-opc_sample-growth-content-mgr/SKILL.md) | Marketing Content Manager | SOP-GROW-001, 002, 003, 007 | TEMPLATED |
| [vibe-opc_sample-growth-writer](vibe-opc_sample-growth-writer/SKILL.md) | SEO & Content Writer | SOP-GROW-001 (consult), SOP-GROW-006 (contrib) | TEMPLATED |
| [vibe-opc_sample-growth-social](vibe-opc_sample-growth-social/SKILL.md) | Analytics & Social Media | SOP-GROW-006 | TEMPLATED |

## Sales Skills (pending build)

| Skill | Role | SOP Coverage | Status |
|-------|------|-------------|--------|
| vibe-opc_sample-growth-sales | Sales Agent | SOP-GROW-004, 005, 008, 009, 010 | Pending |

---

## SOP-to-Skill Coverage (Marketing)

| SOP Code | Ten SOP | AI Skill | Status |
|----------|---------|----------|--------|
| SOP-GROW-001 | Tao noi dung marketing | content-mgr (Owner) + writer (Consult) | Covered |
| SOP-GROW-002 | Quan ly social media | content-mgr (Owner) | Covered |
| SOP-GROW-003 | Email marketing automation | content-mgr (Owner) | Covered |
| SOP-GROW-006 | Bao cao hieu suat marketing | social (Owner) + writer (Contrib) | Covered |

**Marketing Coverage: 4/4 SOPs = 100%**

---

## Install Instructions

### Option 1: Symlink (Recommended)
```bash
# Cho moi skill:
ln -s "/path/to/OPC_sample_company_v1.2/opc-ains/01-growth/ai_workforce/vibe-opc_sample-growth-content-mgr" ~/.claude/skills/vibe-opc_sample-growth-content-mgr

ln -s "/path/to/OPC_sample_company_v1.2/opc-ains/01-growth/ai_workforce/vibe-opc_sample-growth-writer" ~/.claude/skills/vibe-opc_sample-growth-writer

ln -s "/path/to/OPC_sample_company_v1.2/opc-ains/01-growth/ai_workforce/vibe-opc_sample-growth-social" ~/.claude/skills/vibe-opc_sample-growth-social
```

### Option 2: Copy
```bash
# Copy moi skill vao Claude skills directory:
cp -r vibe-opc_sample-growth-content-mgr/ ~/.claude/skills/
cp -r vibe-opc_sample-growth-writer/ ~/.claude/skills/
cp -r vibe-opc_sample-growth-social/ ~/.claude/skills/
```

### Verify Installation
```bash
ls ~/.claude/skills/vibe-opc_sample-growth-*
```

---

*AI Workforce README v1.0 | Updated: 2026-05-12 | Growth Department — Marketing Function*

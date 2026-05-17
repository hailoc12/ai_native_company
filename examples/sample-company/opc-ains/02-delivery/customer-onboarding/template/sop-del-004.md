# SOP-DEL-004: Onboarding khách hàng mới

**Version:** 1.0 | **Ngày tạo:** 2026-05-07 | **Owner:** CS AI

---

## 1. Mục đích

Quy trình này định nghĩa cách AINS onboard khách hàng mới — từ lúc ký hợp đồng đến khi khách hàng sẵn sàng bắt đầu dự án. Onboarding hiệu quả đảm bảo khách hàng hiểu rõ cách làm việc với AINS và dự án khởi đầu suôn sẻ.

## 2. Phạm vi

- Áp dụng cho tất cả khách hàng mới sau khi ký hợp đồng
- Từ lúc signed contract đến khi kickoff complete
- Bao gồm setup, communication, training và documentation

## 3. Vai trò (RACI)

| Hoạt động | CS AI | Project AI | QA AI | Human Owner |
|-----------|-------|-----------|-------|-------------|
| Tạo onboarding plan | **R** | C | I | A |
| Gửi welcome kit | **R** | I | I | I |
| Setup communication channels | **R** | C | I | I |
| Tạo project workspace | **R** | **R** | I | I |
| Schedule kickoff | **R** | C | I | A |
| Thu thập client info/docs | **R** | I | I | I |
| Kickoff meeting | C | C | I | **R** |
| Onboarding sign-off | **R** | C | I | A |

## 4. IPO Analysis

### Input
- Signed contract / Confirmed engagement
- Client contact information
- Project scope document (SoW)
- Client existing materials (nếu có)

### Process
1. Trigger onboarding → Tạo checklist
2. Gửi welcome kit
3. Setup channels & workspace
4. Collect client information & materials
5. Schedule kickoff meeting
6. Kickoff meeting
7. Sign-off onboarding

### Output
- Completed onboarding checklist
- Welcome kit (delivered)
- Project workspace (setup)
- Kickoff meeting notes
- Client info profile (complete)

## 5. Quy trình chi tiết

### Bước 1: Trigger Onboarding (Day 0)

**Trigger:** Signed contract hoặc engagement confirmation

1.1. CS AI nhận notification từ Sales/Commercial
1.2. Tạo Onboarding Checklist → `customer-onboarding/input/`
1.3. Assign tasks:
   - CS AI: Welcome kit, communication setup, info collection
   - Project AI: Workspace setup, initial project plan draft
   - Human Owner: Review & kickoff attendance

### Bước 2: Welcome Kit (Day 1)

2.1. CS AI gửi Welcome Kit bao gồm:
   - **Welcome Letter:** Giới thiệu AINS, team, cách làm việc
   - **Working Agreement:** Communication channels, SLA, escalation
   - **FAQ Sheet:** Câu hỏi thường gặp cho khách hàng mới
   - **Contact Sheet:** Địa chỉ liên lạc theo trường hợp
   - **Project Timeline Preview:** Overview dự án sắp tới

2.2. Gửi qua email + attachment PDF
2.3. Lưu tại `customer-onboarding/output/welcome-kit-[client].md`

### Bước 3: Setup Channels & Workspace (Day 1-2)

3.1. **Communication Channels:**
   - Tạo shared Slack channel (hoặc preferred channel của client)
   - Setup notification rules
   - Add client contacts

3.2. **Project Workspace:**
   - Tạo shared Google Drive folder structure
   - Tạo Notion project page
   - Setup access permissions

3.3. **Calendar:**
   - Block kickoff meeting slot
   - Schedule recurring check-ins (nếu applicable)

### Bước 4: Collect Client Information (Day 1-3)

4.1. CS AI gửi Client Information Form:
   - **Company info:** Tên, địa chỉ, mã số thuế, website
   - **Contact persons:** Primary, secondary, emergency
   - **Brand guidelines:** Logo, color palette, font, tone of voice
   - **Existing materials:** Related documents, data, reports
   - **Technical info:** Systems, platforms, access cần thiết
   - **Preferences:** Communication style, reporting format, language

4.2. Follow-up nếu không nhận được trong 24h
4.3. Lưu tất cả tại project workspace

### Bước 5: Kickoff Meeting (Day 3-5)

5.1. CS AI prepare kickoff agenda:
   ```
   1. Giới thiệu AINS team (5 min)
   2. Review project scope & objectives (15 min)
   3. Walkthrough working agreement (10 min)
   4. Confirm timeline & milestones (10 min)
   5. Q&A (10 min)
   6. Next steps & action items (5 min)
   ```

5.2. Human Owner chủ trì kickoff meeting

5.3. CS AI take notes → `customer-onboarding/output/kickoff-notes-[client].md`

### Bước 6: Onboarding Sign-off (Day 5)

6.1. CS AI verify tất cả onboarding items completed:
   - [ ] Welcome kit sent
   - [ ] Channels setup
   - [ ] Workspace setup
   - [ ] Client info collected
   - [ ] Kickoff meeting done
   - [ ] All access granted
   - [ ] Client confirmed satisfaction

6.2. Gửi Onboarding Completion Summary cho client
6.3. Archive onboarding docs → `customer-onboarding/archive/`
6.4. Handoff to Project AI cho project execution

## 6. Template & Checklist

### Onboarding Checklist

```markdown
# Onboarding Checklist: [Client Name]
**Start Date:** ___ | **Target Completion:** ___ (5 ngày làm việc)

## Phase 1: Welcome (Day 1)
- [ ] Welcome email sent
- [ ] Welcome kit delivered
- [ ] Working agreement sent
- [ ] Contact sheet shared

## Phase 2: Setup (Day 1-2)
- [ ] Slack channel created
- [ ] Google Drive folder created
- [ ] Notion project page created
- [ ] Permissions configured
- [ ] Calendar invites sent

## Phase 3: Information Collection (Day 1-3)
- [ ] Client info form sent
- [ ] Client info form received
- [ ] Brand guidelines received
- [ ] Existing materials received
- [ ] Technical requirements confirmed

## Phase 4: Kickoff (Day 3-5)
- [ ] Kickoff meeting scheduled
- [ ] Agenda sent to client
- [ ] Kickoff meeting completed
- [ ] Meeting notes shared
- [ ] Action items assigned

## Phase 5: Sign-off (Day 5)
- [ ] All items verified
- [ ] Client confirmation received
- [ ] Onboarding report sent
- [ ] Archive documents
- [ ] Handoff to Project AI

**Status:** [In Progress / Completed]
**Completion Date:** ___
```

## 7. KPIs & Metrics

| KPI | Mục tiêu | Tần suất | Owner |
|-----|----------|----------|-------|
| Onboarding Completion Time | < 5 ngày làm việc | Per client | CS AI |
| Client Satisfaction (Onboarding) | >= 4.5/5 | Per client | CS AI |
| Checklist Completion Rate | 100% | Per client | CS AI |
| Time to Kickoff | < 3 ngày | Per client | CS AI |

## 8. AI Integration Points

| Bước | AI Worker | Task | Automation |
|------|-----------|------|-----------|
| Welcome kit | CS AI | Tạo & gửi welcome kit | 90% |
| Channel setup | CS AI | Tạo channels, permissions | 85% |
| Info collection | CS AI | Gửi form, follow-up | 90% |
| Kickoff prep | CS AI | Agenda, reminder | 95% |
| Workspace setup | Project AI | Folder structure, Notion | 85% |
| Checklist tracking | CS AI | Auto-track, alert overdue | 100% |

## 9. Upstream/Downstream SOPs

### Upstream:
- **Sales/Commercial SOP** — Signed contract, client info
- **SOP-DEL-003** (Customer Support) — Pre-sales inquiries context

### Downstream:
- **SOP-DEL-001** (Project Management) — Handoff sau onboarding
- **SOP-DEL-003** (Customer Support) — Support channel ready
- **SOP-DEL-005** (Change Management) — Change request channel established

## 10. Version History

| Version | Ngày | Thay đổi | Author |
|---------|------|----------|--------|
| 1.0 | 2026-05-07 | Tạo mới | CS AI |

---

**Approved by:** Shimazu — Human Owner
**Ngày approve:** 2026-05-07

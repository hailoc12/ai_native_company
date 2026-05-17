# Scripts va Cong cu

---

## create-sop-folder.sh

Tao cau truc folder chuan cho SOP moi.

```bash
# Su dung:
bash src/create-sop-folder.sh [org-root] [department] [sop-name]

# Vi du:
bash src/create-sop-folder.sh /path/to/company marketing create-linkedin-content
```

---

## archive-sop-run.sh

Archive output/ sang archive/[YYYY-MM]/ sau khi SOP run hoan thanh.

```bash
# Su dung:
bash src/archive-sop-run.sh [sop-path]

# Vi du:
bash src/archive-sop-run.sh /path/to/company/marketing/create-linkedin-content
```

---

## install-skills.sh

Cai dat tat ca skills tu folder skills/ vao ~/.claude/skills/.

```bash
# Su dung:
bash src/install-skills.sh

# Hoac chi dinh duong dan repo:
bash src/install-skills.sh /path/to/community_version
```

---

## migrate-existing-sop.sh

Chuyen doi SOP folder cu sang cau truc State Machine moi.

```bash
# Su dung:
bash src/migrate-existing-sop.sh [sop-path]

# Hoac migrate toan bo department:
for sop in /path/to/company/marketing/*/; do
  bash src/migrate-existing-sop.sh "$sop"
done
```

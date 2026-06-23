# Hướng dẫn cài đặt AI Native Company Community Edition

Hướng dẫn cài đặt skills trên **macOS** và **Windows**, cho 5 ứng dụng phổ biến: Claude Code, Antigravity, OpenClaw, Codex, Hermes.

---

## Yêu cầu chung

| Yêu cầu | Chi tiết |
|---------|----------|
| Hệ điều hành | macOS 12+ hoặc Windows 10/11 (WSL2) |
| Git | [cài đặt git](https://git-scm.com/downloads) |
| Ứng dụng AI | Claude Code, Antigravity, OpenClaw, Codex, hoặc Hermes |

---

## Cài đặt nhanh (tự động)

### macOS / Linux

```bash
# Clone repo
git clone https://github.com/hailoc12/ai_native_company.git
cd ai_native_company/community_version

# Chạy script cài đặt tự động
bash src/install.sh
```

Script sẽ hỏi bạn chọn ứng dụng cần cài, rồi tự động copy skills vào đúng thư mục.

### Windows (PowerShell)

```powershell
# Clone repo
git clone https://github.com/hailoc12/ai_native_company.git
cd ai_native_company\community_version

# Chạy script cài đặt tự động
powershell -ExecutionPolicy Bypass -File src\install.ps1
```

---

## Cài đặt thủ công theo ứng dụng

### 1. Claude Code

**macOS / Linux:**
```bash
# Clone repo
git clone https://github.com/hailoc12/ai_native_company.git
cd ai_native_company/community_version

# Copy skills
mkdir -p ~/.claude/skills
cp -r skills/vibe-aiworkforce ~/.claude/skills/
cp -r skills/vibe-company-orchestrator ~/.claude/skills/

# Xác minh
ls ~/.claude/skills/vibe-*/SKILL.md
```

**Windows (WSL2 hoặc Git Bash):**
```bash
# Clone repo
git clone https://github.com/hailoc12/ai_native_company.git
cd ai_native_company/community_version

# Copy skills
mkdir -p ~/.claude/skills
cp -r skills/vibe-aiworkforce ~/.claude/skills/
cp -r skills/vibe-company-orchestrator ~/.claude/skills/

# Xác minh
ls ~/.claude/skills/vibe-*/SKILL.md
```

**Windows (PowerShell):**
```powershell
# Clone repo
git clone https://github.com/hailoc12/ai_native_company.git
cd ai_native_company\community_version

# Copy skills
$skillsDir = "$env:USERPROFILE\.claude\skills"
New-Item -ItemType Directory -Force -Path $skillsDir
Copy-Item -Recurse -Force "skills\vibe-aiworkforce" $skillsDir
Copy-Item -Recurse -Force "skills\vibe-company-orchestrator" $skillsDir

# Xác minh
Get-ChildItem "$skillsDir\vibe-*\SKILL.md"
```

---

### 2. Antigravity

Antigravity sử dụng thư mục skills tương tự Claude Code.

**macOS / Linux:**
```bash
# Copy vào thư mục skills của Antigravity
mkdir -p ~/.antigravity/skills
cp -r skills/vibe-aiworkforce ~/.antigravity/skills/
cp -r skills/vibe-company-orchestrator ~/.antigravity/skills/
```

**Windows (PowerShell):**
```powershell
$skillsDir = "$env:USERPROFILE\.antigravity\skills"
New-Item -ItemType Directory -Force -Path $skillsDir
Copy-Item -Recurse -Force "skills\vibe-aiworkforce" $skillsDir
Copy-Item -Recurse -Force "skills\vibe-company-orchestrator" $skillsDir
```

> **Lưu ý:** Đường dẫn thư mục skills có thể thay đổi theo phiên bản Antigravity. Kiểm tra tài liệu chính thức tại [antigravity.com](https://antigravity.com) nếu script không hoạt động.

---

### 3. OpenClaw

OpenClaw lưu skills tại `~/.openclaw/skills/` (macOS/Linux) hoặc `%USERPROFILE%\.openclaw\skills\` (Windows).

**macOS / Linux:**
```bash
mkdir -p ~/.openclaw/skills
cp -r skills/vibe-aiworkforce ~/.openclaw/skills/
cp -r skills/vibe-company-orchestrator ~/.openclaw/skills/
```

**Windows (PowerShell):**
```powershell
$skillsDir = "$env:USERPROFILE\.openclaw\skills"
New-Item -ItemType Directory -Force -Path $skillsDir
Copy-Item -Recurse -Force "skills\vibe-aiworkforce" $skillsDir
Copy-Item -Recurse -Force "skills\vibe-company-orchestrator" $skillsDir
```

---

### 4. Codex (OpenAI)

Codex sử dụng thư mục agents tại `~/.codex/agents/` (macOS/Linux) hoặc `%USERPROFILE%\.codex\agents\` (Windows).

**macOS / Linux:**
```bash
mkdir -p ~/.codex/agents
cp -r skills/vibe-aiworkforce ~/.codex/agents/
cp -r skills/vibe-company-orchestrator ~/.codex/agents/
```

**Windows (PowerShell):**
```powershell
$agentsDir = "$env:USERPROFILE\.codex\agents"
New-Item -ItemType Directory -Force -Path $agentsDir
Copy-Item -Recurse -Force "skills\vibe-aiworkforce" $agentsDir
Copy-Item -Recurse -Force "skills\vibe-company-orchestrator" $agentsDir
```

---

### 5. Hermes

Hermes lưu skills tại `~/.hermes/skills/` (macOS/Linux) hoặc `%USERPROFILE%\.hermes\skills\` (Windows).

**macOS / Linux:**
```bash
mkdir -p ~/.hermes/skills
cp -r skills/vibe-aiworkforce ~/.hermes/skills/
cp -r skills/vibe-company-orchestrator ~/.hermes/skills/
```

**Windows (PowerShell):**
```powershell
$skillsDir = "$env:USERPROFILE\.hermes\skills"
New-Item -ItemType Directory -Force -Path $skillsDir
Copy-Item -Recurse -Force "skills\vibe-aiworkforce" $skillsDir
Copy-Item -Recurse -Force "skills\vibe-company-orchestrator" $skillsDir
```

> **Lưu ý:** Đường dẫn thư mục skills có thể thay đổi theo phiên bản Hermes. Kiểm tra tài liệu chính thức của Hermes nếu script không hoạt động.

---

## Xác minh cài đặt

Sau khi cài, mở ứng dụng AI và gõ:

```
/vibe-company-orchestrator
```

Nếu skill phản hồi → cài đặt thành công.

---

## Gỡ cài đặt

```bash
# macOS / Linux — Claude Code
rm -rf ~/.claude/skills/vibe-aiworkforce
rm -rf ~/.claude/skills/vibe-company-orchestrator

# Windows PowerShell — Claude Code
Remove-Item -Recurse -Force "$env:USERPROFILE\.claude\skills\vibe-aiworkforce"
Remove-Item -Recurse -Force "$env:USERPROFILE\.claude\skills\vibe-company-orchestrator"
```

---

## Khắc phục sự cố

### Skill không xuất hiện

1. Kiểm tra đường dẫn thư mục skills có đúng không
2. Đảm bảo file `SKILL.md` tồn tại trong mỗi thư mục skill
3. Khởi động lại ứng dụng AI

### Permission denied (macOS/Linux)

```bash
chmod -R 755 ~/.claude/skills/vibe-*/
```

### Windows — Execution Policy

```powershell
# Cho phép chạy PowerShell scripts
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
```

# install.ps1 — Cài đặt tự động AI Native Company skills trên Windows
# Hỗ trợ: Claude Code, Antigravity, OpenClaw, Codex, Hermes
# Sử dụng: powershell -ExecutionPolicy Bypass -File src\install.ps1 [-App <tên-ứng-dụng>]

param(
    [string]$App = ""
)

$ErrorActionPreference = "Stop"

$RepoPath = Split-Path -Parent (Split-Path -Parent $MyInvocation.MyCommand.Path)
$SkillsSrc = Join-Path $RepoPath "skills"

$Skills = @("vibe-aiworkforce", "vibe-company-orchestrator")

# App → skills directory mapping
$AppDirs = @{
    "claude-code" = "$env:USERPROFILE\.claude\skills"
    "antigravity" = "$env:USERPROFILE\.antigravity\skills"
    "openclaw"    = "$env:USERPROFILE\.openclaw\skills"
    "codex"       = "$env:USERPROFILE\.codex\agents"
    "hermes"      = "$env:USERPROFILE\.hermes\skills"
}

Write-Host ""
Write-Host "===================================================" -ForegroundColor Blue
Write-Host "  AI Native Company — Community Edition Installer  " -ForegroundColor Blue
Write-Host "===================================================" -ForegroundColor Blue
Write-Host ""

# Validate skills source
if (-not (Test-Path $SkillsSrc)) {
    Write-Host "Lỗi: Không tìm thấy thư mục skills\ tại: $SkillsSrc" -ForegroundColor Red
    exit 1
}

# Check available skills
$FoundSkills = @()
foreach ($skill in $Skills) {
    $skillPath = Join-Path $SkillsSrc $skill
    if (Test-Path $skillPath) {
        $FoundSkills += $skill
    } else {
        Write-Host "Cảnh báo: Không tìm thấy $skill" -ForegroundColor Yellow
    }
}

if ($FoundSkills.Count -eq 0) {
    Write-Host "Lỗi: Không tìm thấy skill nào để cài đặt." -ForegroundColor Red
    exit 1
}

Write-Host "Tìm thấy $($FoundSkills.Count) skills:"
foreach ($skill in $FoundSkills) {
    Write-Host "  OK: $skill" -ForegroundColor Green
}
Write-Host ""

# If no app specified, ask user
if ([string]::IsNullOrEmpty($App)) {
    Write-Host "Chọn ứng dụng cần cài đặt:"
    Write-Host ""
    Write-Host "  1) Claude Code"
    Write-Host "  2) Antigravity"
    Write-Host "  3) OpenClaw"
    Write-Host "  4) Codex (OpenAI)"
    Write-Host "  5) Hermes"
    Write-Host "  6) Tất cả"
    Write-Host ""
    $choice = Read-Host "Nhập lựa chọn [1-6]"

    switch ($choice) {
        "1" { $App = "claude-code" }
        "2" { $App = "antigravity" }
        "3" { $App = "openclaw" }
        "4" { $App = "codex" }
        "5" { $App = "hermes" }
        "6" { $App = "all" }
        default {
            Write-Host "Lựa chọn không hợp lệ." -ForegroundColor Red
            exit 1
        }
    }
}

# Install function
function Install-Skills {
    param(
        [string]$AppName,
        [string]$DestDir
    )

    Write-Host ""
    Write-Host "→ Cài đặt cho $AppName..." -ForegroundColor Blue
    Write-Host "  Thư mục đích: $DestDir"

    New-Item -ItemType Directory -Force -Path $DestDir | Out-Null

    foreach ($skill in $FoundSkills) {
        $destSkillPath = Join-Path $DestDir $skill
        if (Test-Path $destSkillPath) {
            Remove-Item -Recurse -Force $destSkillPath
        }
        $srcSkillPath = Join-Path $SkillsSrc $skill
        Copy-Item -Recurse -Force $srcSkillPath $DestDir
        Write-Host "  OK: $skill" -ForegroundColor Green
    }

    Write-Host "→ $AppName: Hoàn tất" -ForegroundColor Green
}

# Execute installation
if ($App -eq "all") {
    foreach ($key in $AppDirs.Keys) {
        Install-Skills -AppName $key -DestDir $AppDirs[$key]
    }
} else {
    if (-not $AppDirs.ContainsKey($App)) {
        Write-Host "Lỗi: Ứng dụng '$App' không được hỗ trợ." -ForegroundColor Red
        Write-Host "Các ứng dụng hỗ trợ: claude-code, antigravity, openclaw, codex, hermes"
        exit 1
    }
    Install-Skills -AppName $App -DestDir $AppDirs[$App]
}

# Verify
Write-Host ""
Write-Host "===================================================" -ForegroundColor Blue
Write-Host "  Xác minh cài đặt" -ForegroundColor Blue
Write-Host "===================================================" -ForegroundColor Blue

if ($App -eq "all") {
    $VerifyApps = @("claude-code", "antigravity", "openclaw", "codex", "hermes")
} else {
    $VerifyApps = @($App)
}

$AllOk = $true
foreach ($appName in $VerifyApps) {
    $destDir = $AppDirs[$appName]
    Write-Host ""
    Write-Host "  $appName:"
    foreach ($skill in $FoundSkills) {
        $skillMd = Join-Path $destDir "$skill\SKILL.md"
        if (Test-Path $skillMd) {
            Write-Host "    OK: $skill — SKILL.md OK" -ForegroundColor Green
        } else {
            Write-Host "    LỖI: $skill — Thiếu SKILL.md!" -ForegroundColor Red
            $AllOk = $false
        }
    }
}

Write-Host ""
if ($AllOk) {
    Write-Host "Hoàn tất! Mở ứng dụng và gõ /vibe-company-orchestrator để bắt đầu." -ForegroundColor Green
} else {
    Write-Host "Một số skill chưa được cài đúng. Kiểm tra lại đường dẫn." -ForegroundColor Yellow
}

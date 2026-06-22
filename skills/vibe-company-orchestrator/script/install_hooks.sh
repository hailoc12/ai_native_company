#!/usr/bin/env bash
# vibe-company-orchestrator install_hooks.sh
#
# Installs PreToolUse/PostToolUse hooks to guard SOP state machine folders
# (template/, archive/) inside generated company workspaces.
# Two modes:
#   1. Skill-local: writes .claude/skills/[name]/hooks.json (preferred)
#   2. Global: appends to ~/.claude/settings.json (use --global)
#   3. Company-workspace: writes [COMPANY_ROOT]/.claude/hooks.json (use --workspace PATH)

set -euo pipefail

SKILL_DIR="${1:-$(cd "$(dirname "$0")/.." && pwd)}"
MODE="${2:-}"

SKILL_NAME="$(basename "$SKILL_DIR")"

HOOK_CONFIG=$(cat <<'EOF'
{
  "hooks": {
    "PreToolUse": [
      {
        "matcher": "Write|Edit",
        "hooks": [
          {
            "type": "command",
            "command": "python3 \"${CLAUDE_PROJECT_DIR}/script/validator.py\" --preflight-target \"${CLAUDE_TOOL_INPUT_FILE_PATH:-$TOOL_INPUT}\""
          }
        ]
      }
    ],
    "PostToolUse": [
      {
        "matcher": "Write",
        "hooks": [
          {
            "type": "command",
            "command": "python3 \"${CLAUDE_PROJECT_DIR}/script/validator.py\" --log write \"${CLAUDE_TOOL_INPUT_FILE_PATH:-$TOOL_INPUT}\" success"
          }
        ]
      }
    ]
  }
}
EOF
)

if [[ "$MODE" == "--global" ]]; then
    TARGET="$HOME/.claude/settings.json"
    echo "Installing hooks globally → $TARGET"
    if [[ -f "$TARGET" ]]; then
        cp "$TARGET" "$TARGET.backup-$(date +%Y%m%d-%H%M%S)"
        python3 -c "
import json
with open('$TARGET') as f:
    settings = json.load(f)
new_hooks = json.loads('''$HOOK_CONFIG''')['hooks']
for event, hooks in new_hooks.items():
    settings.setdefault('hooks', {}).setdefault(event, []).extend(hooks)
with open('$TARGET', 'w') as f:
    json.dump(settings, f, indent=2, ensure_ascii=False)
print('Merged hooks into', '$TARGET')
"
    else
        echo "{}" > "$TARGET"
        python3 -c "
import json
hooks = json.loads('''$HOOK_CONFIG''')
with open('$TARGET', 'w') as f:
    json.dump(hooks, f, indent=2, ensure_ascii=False)
"
        echo "Created $TARGET"
    fi
elif [[ "$MODE" == "--workspace" ]]; then
    COMPANY_ROOT="${3:-$PWD}"
    TARGET="$COMPANY_ROOT/.claude/hooks.json"
    mkdir -p "$COMPANY_ROOT/.claude" "$COMPANY_ROOT/script"
    # Copy validator into workspace so hooks resolve
    cp "$SKILL_DIR/script/validator.py" "$COMPANY_ROOT/script/validator.py"
    echo "$HOOK_CONFIG" > "$TARGET"
    chmod +r "$TARGET"
    echo "Installed workspace hooks → $TARGET (+ copied validator.py → $COMPANY_ROOT/script/)"
else
    TARGET="$SKILL_DIR/hooks.json"
    echo "Installing hooks for skill '$SKILL_NAME' → $TARGET"
    echo "$HOOK_CONFIG" > "$TARGET"
    chmod +r "$TARGET"
    echo "Wrote skill-local hooks to $TARGET"
fi

echo ""
echo "Hooks prevent:"
echo "  - Writes to template/ folder (SOP state machine integrity)"
echo "  - Writes to archive/ folder (immutable history)"
echo ""
echo "Hooks log:"
echo "  - Every Write to execution_log.jsonl (audit trail)"
echo ""
echo "✓ Hooks installed."

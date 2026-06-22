#!/usr/bin/env bash
# vibe-aiworkforce install_hooks.sh
#
# Installs PreToolUse/PostToolUse hooks to prevent harmful file operations.
# Two modes:
#   1. Skill-local: writes .claude/skills/[name]/hooks.json (preferred)
#   2. Global: appends to ~/.claude/settings.json (use --global)

set -euo pipefail

SKILL_DIR="${1:-$(cd "$(dirname "$0")/.." && pwd)}"
GLOBAL_MODE="${2:-}"

SKILL_NAME="$(basename "$SKILL_DIR")"

if [[ "$GLOBAL_MODE" == "--global" ]]; then
    TARGET="$HOME/.claude/settings.json"
    echo "Installing hooks globally → $TARGET"
else
    TARGET="$SKILL_DIR/hooks.json"
    echo "Installing hooks for skill '$SKILL_NAME' → $TARGET"
fi

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

if [[ "$GLOBAL_MODE" == "--global" ]]; then
    if [[ -f "$TARGET" ]]; then
        cp "$TARGET" "$TARGET.backup-$(date +%Y%m%d-%H%M%S)"
        python3 -c "
import json, sys
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
else
    echo "$HOOK_CONFIG" > "$TARGET"
    chmod +r "$TARGET"
    echo "Wrote skill-local hooks to $TARGET"
fi

echo ""
echo "Hooks prevent:"
echo "  - Writes to template/ folder (SOP state machine integrity)"
echo "  - Writes to archive/ folder (immutable history)"
echo "  - Edits outside allowlist (output/, processing/, input/)"
echo ""
echo "Hooks log:"
echo "  - Every Write to execution_log.jsonl"
echo ""
echo "✓ Hooks installed."

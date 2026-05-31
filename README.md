# claude-plugins

Personal Claude Code plugin marketplace for tani0601tomo0410.

## Plugins

- **tani-skills**: Personal skills and custom workflows

## Setup (new environment)

### Linux / macOS
```bash
# Install Claude Code CLI first
npm install -g @anthropic-ai/claude-code

# Run setup script
curl -fsSL https://raw.githubusercontent.com/tani0601tomo0410/claude-plugins/main/setup.sh | bash
```

### Windows (PowerShell)
```powershell
# Claude Code is pre-installed; run:
irm https://raw.githubusercontent.com/tani0601tomo0410/claude-plugins/main/setup.ps1 | iex
```

## Included plugin sources

| Plugin | Source |
|--------|--------|
| superpowers, plugin-dev, claude-md-management, atomic-agents, playwright, claude-code-setup | anthropics/claude-plugins-official |
| ecc | affaan-m/ECC |
| tani-skills | tani0601tomo0410/claude-plugins (this repo) |

## Adding new skills

1. Add a `.md` file to `tani-skills/skills/`
2. Commit and push to GitHub
3. On each environment: `claude plugins update tani-skills`

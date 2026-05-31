#!/bin/bash
# Claude Code plugins setup script
# Run this on any new environment to install all configured plugins

set -e

CLAUDE_CMD=${CLAUDE_CMD:-claude}

echo "Setting up Claude Code plugins..."

# Add marketplaces
echo "Adding marketplaces..."
$CLAUDE_CMD plugins marketplace add affaan-m/ECC 2>/dev/null || echo "ECC marketplace already added"
$CLAUDE_CMD plugins marketplace add tani0601tomo0410/claude-plugins 2>/dev/null || echo "tani-plugins marketplace already added"

# Install plugins from official marketplace
echo "Installing official plugins..."
$CLAUDE_CMD plugins install superpowers@claude-plugins-official 2>/dev/null || echo "superpowers already installed"
$CLAUDE_CMD plugins install plugin-dev@claude-plugins-official 2>/dev/null || echo "plugin-dev already installed"
$CLAUDE_CMD plugins install claude-md-management@claude-plugins-official 2>/dev/null || echo "claude-md-management already installed"
$CLAUDE_CMD plugins install atomic-agents@claude-plugins-official 2>/dev/null || echo "atomic-agents already installed"
$CLAUDE_CMD plugins install playwright@claude-plugins-official 2>/dev/null || echo "playwright already installed"
$CLAUDE_CMD plugins install claude-code-setup@claude-plugins-official 2>/dev/null || echo "claude-code-setup already installed"

# Install ECC
echo "Installing ECC..."
$CLAUDE_CMD plugins install ecc@ecc 2>/dev/null || echo "ECC already installed"

# Install personal skills
echo "Installing personal skills..."
$CLAUDE_CMD plugins install tani-skills@tani-claude-plugins 2>/dev/null || echo "tani-skills already installed"

echo ""
echo "Done! All plugins installed."
echo "Run 'claude plugins list' to verify."

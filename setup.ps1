# Claude Code plugins setup script (Windows PowerShell)
# Run this on any new Windows environment to install all configured plugins

Write-Host "Setting up Claude Code plugins..."

# Add marketplaces
Write-Host "Adding marketplaces..."
claude plugins marketplace add affaan-m/ECC 2>$null
claude plugins marketplace add tani0601tomo0410/claude-plugins 2>$null

# Install plugins from official marketplace
Write-Host "Installing official plugins..."
$plugins = @(
    "superpowers@claude-plugins-official",
    "plugin-dev@claude-plugins-official",
    "claude-md-management@claude-plugins-official",
    "atomic-agents@claude-plugins-official",
    "playwright@claude-plugins-official",
    "claude-code-setup@claude-plugins-official"
)
foreach ($plugin in $plugins) {
    claude plugins install $plugin 2>$null
    Write-Host "  installed: $plugin"
}

# Install ECC
Write-Host "Installing ECC..."
claude plugins install ecc@ecc 2>$null

# Install personal skills
Write-Host "Installing personal skills..."
claude plugins install tani-skills@tani-claude-plugins 2>$null

Write-Host ""
Write-Host "Done! All plugins installed."
Write-Host "Run 'claude plugins list' to verify."

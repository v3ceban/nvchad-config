# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Repository Overview

This is a personal Neovim configuration built on top of NvChad v2.5. It transforms Neovim into a full-featured IDE with LSP, AI integration, and numerous productivity enhancements.

## Architecture

- **Base**: NvChad v2.5 framework
- **Plugin Manager**: Lazy.nvim
- **Structure**:
  - `init.lua` - Main entry point that bootstraps Lazy.nvim and loads NvChad
  - `lua/plugins.lua` - Custom plugin specifications and overrides
  - `lua/configs/` - Plugin-specific configuration files
  - `lua/mappings.lua` - Custom keybindings (extends NvChad defaults)
  - `lua/options.lua` - Editor options and autocommands
  - `lua/chadrc.lua` - NvChad UI configuration

## Key Integrations

### AI Providers

- **Primary**: GitHub Copilot for code completion and chat or actions

### Language Support

Configured with LSP, formatting, and linting for: HTML/CSS, JavaScript/TypeScript, JSON, PHP, Lua, Bash, C/C++, Python, Go, Markdown, Docker

### Plugin Categories

- **AI**: Copilot (completion), CopilotChat
- **Navigation**: Flash.nvim (jump labels), Telescope, NvimTree
- **Editing**: Surround, Abolish (substitutions), Sort Motion, TS-Autotag
- **Git**: GitSigns, Git-Conflict resolution
- **UI**: Render-Markdown, Indent-Blankline, Which-Key

## Development Workflow

### Testing Configuration Changes

- Restart Neovim to test changes
- Use `:Lazy reload {plugin}` for plugin updates
- Check `:checkhealth` for diagnostics

### Adding New Plugins

1. Add plugin spec to `lua/plugins.lua`
2. Create config file in `lua/configs/` if needed
3. Add keybindings to `lua/mappings.lua`
4. Update lazy-lock.json via `:Lazy update`

### Language Server Setup

- LSP configs in `lua/configs/lspconfig.lua`
- Formatters in `lua/configs/conform.lua`
- Linters in `lua/configs/lint.lua`
- Treesitter parsers in `lua/configs/treesitter.lua`

## Important Keybindings

- `<M-l>` - Accept Copilot suggestion (insert mode)
- `<leader>ac` - Open CopilotChat
- `<A-c>` - Toggle Claude Code terminal
- `<leader>sr` - Search and replace word
- `<leader>ss` - Search and subvert word (with Abolish)

## Configuration Notes

- Uses Catppuccin theme with custom highlight groups
- Relative line numbers enabled
- Global statusline (laststatus=3)
- Treesitter-based code folding
- Rounded borders for LSP diagnostics and hovers
- Custom autocommands for .env files and docker-compose detection

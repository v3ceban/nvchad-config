# AGENTS.md

## Neovim Configuration Development Guide

This is a personal Neovim configuration built on NvChad v2.5. No traditional build/test/lint commands exist - testing is done by restarting Neovim.

### Commands
- **Test changes**: Restart Neovim or `:Lazy reload {plugin}`
- **Health check**: `:checkhealth`
- **Plugin management**: `:Lazy` interface

### Code Style
- **Language**: Lua
- **Formatting**: Stylua with 2-space indents, 120 char width, double quotes preferred
- **Structure**: Follow NvChad conventions - configs in `lua/configs/`, plugins in `lua/plugins.lua`
- **Imports**: Use `require` statements at file top, prefer relative paths within config
- **Functions**: Use snake_case for local functions, follow vim API naming patterns
- **Comments**: Minimal comments, prefer self-documenting code

### Architecture Rules
1. Plugin configs go in `lua/configs/{plugin}.lua` with `opts` or `config` function returns
2. Keymaps in `lua/mappings.lua` using `vim.keymap.set` with descriptive descriptions
3. LSP servers configured in `lua/configs/lspconfig.lua` with standard NvChad patterns
4. Use NvChad's built-in utilities and UI components when possible
5. Format-on-save enabled via conform.nvim - maintain existing formatter configurations
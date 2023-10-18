# NvChad-Config

My custom config for NeoVim with NvChad and some other plugins

To install:

1. Install NvChad
2. Run: `git clone https://github.com/v3ceban/nvchad-config.git ~/.config/nvim/lua/custom`
3. ??????
4. PROFIT

## Currently Supports

### C/C++

- Requires clang to be installed on the system
- Uncomment mason overrides to install the packages (not avaliable on ARM)

### Lua

- Uncomment mason overrides to install the packages (not avaliable on ARM)

### CSS/SCSS

- Uses [VSCode Langservers](https://github.com/hrsh7th/vscode-langservers-extracted)

### HTML

- Uses [VSCode Langservers](https://github.com/hrsh7th/vscode-langservers-extracted)

### JavaScript/TypeScript

- Uses [VSCode Langservers](https://github.com/hrsh7th/vscode-langservers-extracted)
- To create config run: `npm init @eslint/config` in the root of the project

### PHP

- Uses [intelephense](https://intelephense.com/)
- Requires .git to work
- To enable git run: `git init` in the root of the project
- Requires PHP installed on system for formatter to work

### ChatGPT

- Uses [chatgpt.nvim](https://github.com/jackmort/chatgpt.nvim) plugin
- Requires `$OPENAI_API_KEY` set as a variable in .bashrc
  OR
- Requires `api_key_cmd` configuration option passed as a setup param

### Python

- Uses [python-lsp-server](https://github.com/python-lsp/python-lsp-server)

## Useful Links

[Null-ls builtins](https://github.com/jose-elias-alvarez/null-ls.nvim/blob/main/doc/BUILTINS.md)

[LSPconfig builtins](https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md)

[NvChad example config](https://github.com/NvChad/example_config/tree/v2.0)

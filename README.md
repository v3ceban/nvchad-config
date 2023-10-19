# NvChad-Config

My custom configuration for [NeoVim](https://neovim.io/) uses
[NvChad](https://nvchad.com/) as the base and includes some additional
plugins to enhance its core functionality.

The purpose of this configuration is to retain the default NvChad settings
while adding extra features and language support specific to my personal stack.

The configuration can be used as is and does not require any additional
setup or configuration. Some lines for the Mason table in `configs/overrides.lua`
are commented out because these plugins are not supported by ARM processors.
If this issue does not apply to your case, you may want to uncomment those lines
to run the `:MasonInstallAll` command more easily.

## Installation

1. [Install NvChad](https://nvchad.com/docs/quickstart/install)
2. Run: `git clone https://github.com/v3ceban/nvchad-config.git ~/.config/nvim/lua/custom`
3. ??????
4. PROFIT

## Currently Supports

### HTML

- Uses [vscode-langservers](https://github.com/hrsh7th/vscode-langservers-extracted) as LSP and linter
- Uses [prettier](https://prettier.io) as formatter
- Uses [emmet](https://github.com/olrtg/emmet-language-server) as LSP for snippets

### CSS/SCSS

- Uses [vscode-langservers](https://github.com/hrsh7th/vscode-langservers-extracted) as LSP and linter
- Uses [prettier](https://prettier.io) as formatter

### JavaScript/TypeScript

- Uses [typescript-language-server](https://github.com/typescript-language-server/typescript-language-server) as LSP
- Uses [eslint_d](https://github.com/mantoni/eslint_d.js/) as linter
- Uses [prettier](https://prettier.io) as formatter
- Requires eslint config to run linting server
- To create config run: `npm init @eslint/config` in the root of the project

### PHP

- Uses [intelephense](https://intelephense.com/) as LSP and linter
- Uses [php-cs-fixer](https://github.com/PHP-CS-Fixer/PHP-CS-Fixer) as formatter
- Requires PHP: `sudo dnf install php`
- Requires .git to run linting server
- To create .git run: `git init` in the root of the project

### Lua

- Uses [lua-language-server](https://github.com/LuaLS/lua-language-server) as LSP and linter
- Uses [stylua](https://github.com/JohnnyMorganz/StyLua) as formatter
- Uncomment Mason overrides to install the packages that don't work on ARM

### C/C++

- Uses [clangd](https://clangd.llvm.org) as LSP and linter
- Uses [clang-format](https://pypi.org/project/clang-format/) as formatter
- Requires clang: `sudo dnf install clang`
- Uncomment Mason overrides to install the packages that don't work on ARM

### Python

- Uses [python-lsp-server](https://github.com/python-lsp/python-lsp-server)
- Uses [black](https://pypi.org/project/black/) as formatter

### ChatGPT

- Uses [ChatGPT.nvim](https://github.com/jackmort/chatgpt.nvim) plugin
- Requires `api_key_cmd` configuration option passed as a setup param
- Press `<leader>-C` for the list of quick commands or run `:ChatGPT` to see all avaliable functions

### Markdown

- Uses [markdownlint](https://github.com/igorshubovych/markdownlint-cli) as linter
- Uses [prettier](https://prettier.io) as formatter

## Useful Links

[Null-ls builtins](https://github.com/jose-elias-alvarez/null-ls.nvim/blob/main/doc/BUILTINS.md)

[LSPconfig builtins](https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md)

[NvChad example config](https://github.com/NvChad/example_config/tree/v2.0)

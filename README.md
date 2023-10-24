# NvChad-Config

My custom configuration for [NeoVim](https://neovim.io/) uses
[NvChad](https://nvchad.com/) as the base and includes some additional
plugins to enhance its core functionality.

The purpose of this configuration is to retain the default NvChad settings
while adding extra features and language support specific to my personal stack.

The configuration can be used as is and does not require any additional
setup or setup or settings. Some Mason packages aren't avaliable on ARM
processors. Check `mason.lua` file for more info on how to get those.

## Installation

0. [Install NeoVim](https://github.com/neovim/neovim/wiki/Installing-Neovim)
1. [Install NvChad](https://nvchad.com/docs/quickstart/install)
2. Run: `git clone https://github.com/v3ceban/nvchad-config.git ~/.config/nvim/lua/custom`
3. ??????
4. PROFIT

## Currently Supports

### HTML

- Uses [vscode-langservers](https://github.com/hrsh7th/vscode-langservers-extracted)
  for LSP and linting
- Uses [prettier](https://prettier.io) for formatting
- Uses [emmet](https://github.com/olrtg/emmet-language-server) for LSP snippets

### CSS/SCSS

- Uses [vscode-langservers](https://github.com/hrsh7th/vscode-langservers-extracted)
  for LSP and linting
- Uses [prettier](https://prettier.io) for formatting

### JavaScript/TypeScript

- Uses
  [typescript-language-server](https://github.com/typescript-language-server/typescript-language-server)
  for LSP
- Uses [eslint_d](https://github.com/mantoni/eslint_d.js/) for linting
- Uses [prettier](https://prettier.io) for formatting
- Requires eslint config to run linting server
- To create config run: `npm init @eslint/config` in the root of the project

### PHP

- Uses [intelephense](https://intelephense.com/) as LSP and linter
- Uses [php-cs-fixer](https://github.com/PHP-CS-Fixer/PHP-CS-Fixer) for formatting
- Requires PHP: `sudo dnf install php`
- Requires .git to run linting server
- To create .git run: `git init` in the root of the project

### Lua

- Uses [lua-language-server](https://github.com/LuaLS/lua-language-server) for
  LSP and linting
- Uses [stylua](https://github.com/JohnnyMorganz/StyLua) for formatting
- Uncomment Mason overrides to install the packages that don't work on ARM

### C/C++

- Uses [clangd](https://clangd.llvm.org) for LSP and linting
- Uses [clang-format](https://pypi.org/project/clang-format/) for formatting
- Requires clang: `sudo dnf install clang`
- Uncomment Mason overrides to install the packages that don't work on ARM

### Python

- Uses [python-lsp-server](https://github.com/python-lsp/python-lsp-server) for linting
- Uses [black](https://pypi.org/project/black/) for formatting

### Go

- Uses [gopls](https://pkg.go.dev/golang.org/x/tools/gopls) for LSP and linting
- Uses [gofumpt](https://pkg.go.dev/mvdan.cc/gofumpt),
  [goimports-reviser](https://github.com/incu6us/goimports-reviser),
  and [golines](https://github.com/segmentio/golines) for formatting
- Requires go: `sudo dnf install go`

### ChatGPT

- Uses [ChatGPT.nvim](https://github.com/jackmort/chatgpt.nvim) plugin
- Requires `$OPENAI_API_KEY` variable to be set in .bashrc
- Press `<leader>-C` for the list of quick commands or run `:ChatGPT` to see
  all avaliable functions

### Markdown

- Uses [markdown-preview](https://github.com/iamcco/markdown-preview.nvim) plugin
- Uses [markdownlint](https://github.com/igorshubovych/markdownlint-cli) for linting
- Uses [prettier](https://prettier.io) for formatting
- Press `<leader>-M` for the list of quick commands to run or stop preview server

## Useful Links

[Null-ls builtins](https://github.com/jose-elias-alvarez/null-ls.nvim/blob/main/doc/BUILTINS.md)

[LSPconfig builtins](https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md)

[NvChad example config](https://github.com/NvChad/example_config/tree/v2.0)

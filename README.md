# NvChad-Config

My custom configuration for [NeoVim](https://neovim.io/) uses
[NvChad](https://nvchad.com/) as the base and includes some additional
plugins to enhance its core functionality.

The purpose of this configuration is to retain the default NvChad settings
while adding extra features and language support specific to my personal stack.

The configuration can be used as is and does not require any additional
setup or setup or settings. Some Mason packages aren't avaliable on certain ARM
processors and Android (Termux). Check `mason.lua` file for more info on how to get those.

## Installation

0. [Install NeoVim](https://github.com/neovim/neovim/wiki/Installing-Neovim)
1. [Install NvChad](https://nvchad.com/docs/quickstart/install)
2. Run `rm -rf ~/.config/nvim/lua/custom` to delete pregenerated config
3. Run `git clone https://github.com/v3ceban/nvchad-config.git ~/.config/nvim/lua/custom` to install config
4. ??????
5. PROFIT

## Currently Supported Languages

### HTML

- Uses [vscode-langservers](https://github.com/hrsh7th/vscode-langservers-extracted)
  for LSP and linting
- Uses [prettier](https://prettier.io) for formatting
- Uses [emmet](https://github.com/olrtg/emmet-language-server) for LSP snippets

### CSS

- Uses [vscode-langservers](https://github.com/hrsh7th/vscode-langservers-extracted)
  for LSP and linting
- Uses [prettier](https://prettier.io) for formatting
- Uses [tailwindcss-language-server](https://github.com/tailwindlabs/tailwindcss-intellisense) for Tailwind LSP

### JavaScript/TypeScript

- Uses
  [typescript-language-server](https://github.com/typescript-language-server/typescript-language-server)
  for LSP
- Uses [eslint-lsp](https://github.com/Microsoft/vscode-eslint) for linting
- Uses [prettier](https://prettier.io) for formatting
- Requires eslint config to run linting server
  - Run `npm init` if not already done
  - Run `npm init @eslint/config@latest` in the root of the project

### PHP

- Uses [intelephense](https://intelephense.com/) as LSP and linter
- Uses [php-cs-fixer](https://github.com/PHP-CS-Fixer/PHP-CS-Fixer) for formatting
- Requires .git to run linting server
- To create .git run `git init` in the root of the project

### Lua

- Uses [lua-language-server](https://github.com/LuaLS/lua-language-server) for
  LSP and linting
- Uses [stylua](https://github.com/JohnnyMorganz/StyLua) for formatting
- Uncomment Mason overrides to install the packages that don't work on ARM

### Bash

- Uses [bash-language-server](https://github.com/bash-lsp/bash-language-server)
  for LSP

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

### Ruby

- Uses [solargraph](https://solargraph.org) for LSP and linting

## Extra Plugins/Features

### ChatGPT

Enables ChatGPT integration and quick commands

- Uses [ChatGPT.nvim](https://github.com/jackmort/chatgpt.nvim) plugin
- Requires api key set as an environment variable called `$OPENAI_API_KEY`
- Press `<leader>-C` for the list of quick commands or run `:ChatGPT` to see
  all avaliable functions

### Codeium

Enables Codeium autocompletion

- Uses [Codeium](https://github.com/Exafunction/codeium) plugin
- Run `:Codeium Auth` to authenticate
- Press `<leader>-CD` or `<leader>-CE` to disable or enable plugin
- `<M-l>` to accept susggestion
- `<M-j>` and `<M-k>` to cycle through suggestions

### Nvim-ts-autotag

Automatically closes and renames HTML tags

- Uses [Nvim-ts-autotag](https://github.com/windwp/nvim-ts-autotag) plugin

### Nvim-surround

Great plugin for surrounding text with brackets, quotes, tags, etc

- Uses [Nvim-surround](https://github.com/kylechui/nvim-surround) plugin
- Default keybinds in visual mode changed from `S` to `s`
- See `:h nvim-surround` or `:h nvim-surround.usage` for usage info

### Vim-be-good

Plugin to get better at vim commands and improve coding speed

- Uses [vim-be-good](https://github.com/ThePrimeagen/vim-be-good) plugin
- Mapped to `<leader>gg`

## Useful Links

[Null-ls builtins](https://github.com/jose-elias-alvarez/null-ls.nvim/blob/main/doc/BUILTINS.md)

[LSPconfig builtins](https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md)

[NvChad example config](https://github.com/NvChad/example_config/tree/v2.0)

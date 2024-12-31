# NvChad-Config

My custom configuration for [NeoVim](https://neovim.io/) uses [NvChad](https://nvchad.com/) as the base and includes some
additional plugins to enhance its core functionality.

The purpose of this configuration is to retain the default NvChad settings
while adding extra features and language support specific to my personal stack.

The configuration can be used as is and does not require any additional
setup or setup or settings. Some Mason packages aren't avaliable on certain ARM
processors and Android (Termux). Check `mason.lua` file for more info on how to get those.

## Installation

1. [Install NeoVim](https://github.com/neovim/neovim/wiki/Installing-Neovim)
2. Install and initialize NvChad v2.0 by running the following command:
   ```sh
   git clone -b v2.0 --single-branch https://github.com/NvChad/NvChad.git ~/.config/nvim && nvim
   ```
3. Run the following commands to delete pregenerated config files and install this config:
   ```sh
    rm -rf ~/.config/nvim/lua/custom
    git clone https://github.com/v3ceban/nvchad-config.git ~/.config/nvim/lua/custom
   ```
4. ??????
5. PROFIT

## Currently Supported Languages

### HTML

- Uses [vscode-langservers](https://github.com/hrsh7th/vscode-langservers-extracted) for LSP and linting
- Uses [prettier](https://prettier.io) for formatting
- Uses [emmet](https://github.com/olrtg/emmet-language-server) for LSP snippets

### CSS

- Uses [vscode-langservers](https://github.com/hrsh7th/vscode-langservers-extracted) for LSP and linting
- Uses [prettier](https://prettier.io) for formatting
- Uses [tailwindcss-language-server](https://github.com/tailwindlabs/tailwindcss-intellisense) for Tailwind LSP
- Uses [rustywind](https://github.com/avencera/rustywind) for Tailwind classes organization

### JavaScript/TypeScript

- Uses [typescript-language-server](https://github.com/typescript-language-server/typescript-language-server) for LSP
- Uses [eslint-lsp](https://github.com/Microsoft/vscode-eslint) for linting
- Uses [prettier](https://prettier.io) for formatting
- Requires eslint config to run linting server
  - Run `npm init` if not already done
  - Run `npm init @eslint/config@latest` in the root of the project
- Uses [prisma-language-server](https://github.com/prisma/language-tools) for LSP in Prisma files

### PHP

- Uses [intelephense](https://intelephense.com/) as LSP and linter
- Uses [php-cs-fixer](https://github.com/PHP-CS-Fixer/PHP-CS-Fixer) for formatting
- Requires .git file to run linting server
- To create .git run `git init` in the root of the project

### Lua

- Uses [lua-language-server](https://github.com/LuaLS/lua-language-server) for LSP and linting
- Uses [stylua](https://github.com/JohnnyMorganz/StyLua) for formatting
- Uncomment Mason overrides to install the packages that don't work on ARM

### Bash

- Uses [bash-language-server](https://github.com/bash-lsp/bash-language-server) for LSP

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
- Uses [gofumpt](https://pkg.go.dev/mvdan.cc/gofumpt), [goimports-reviser](https://github.com/incu6us/goimports-reviser), and [golines](https://github.com/segmentio/golines) for formatting

### Ruby

- Uses [solargraph](https://solargraph.org) for LSP and linting

### Markdown

- Uses [Render Markdown](https://github.com/MeanderingProgrammer/render-markdown.nvim) for inline markdown rendering

### Docker

- Uses [Dockerfile Language Server](https://github.com/rcjsuen/dockerfile-language-server-nodejs) for LSP

## Extra Plugins/Features

### Copilot

Enables Copilot integration and quick commands

- Uses the [Copilot](https://github.com/github/copilot.vim) plugin for autocompletion
- Uses the [CopilotChat.nvim](https://github.com/CopilotC-Nvim/CopilotChat.nvim) plugin for chat functionality
- Run `:Copilot auth` to authenticate with GitHub
- Press `<M-l>` in insert mode to accept Copilot autocompletion suggestions
- Press `<leader>-C` in normal or visual mode to see avaliable Copilot Chat commands

### Nvim-ts-autotag

Automatically closes and renames HTML tags

- Uses [Nvim-ts-autotag](https://github.com/windwp/nvim-ts-autotag) plugin

### Nvim-surround

Great plugin for surrounding text with brackets, quotes, and tags

- Uses [Nvim-surround](https://github.com/kylechui/nvim-surround) plugin
- Default keybinds in visual mode changed from `S` to `s`
- See `:h nvim-surround` or `:h nvim-surround.usage` for usage info

### Vim-be-good

Plugin to get better at vim

- Uses [vim-be-good](https://github.com/ThePrimeagen/vim-be-good) plugin
- Mapped to `<leader>gg`

## Useful Links

[None-ls builtins](https://github.com/nvimtools/none-ls.nvim/blob/main/doc/BUILTINS.md)

[LSPconfig builtins](https://github.com/neovim/nvim-lspconfig/blob/master/doc/configs.md)

[NvChad example config](https://github.com/NvChad/example_config/tree/v2.0)

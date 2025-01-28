# NvChad-Config

My custom configuration for [NeoVim](https://neovim.io/) uses [NvChad](https://nvchad.com/) as the base and includes some
additional plugins to enhance its core functionality.

This config transforms NeoVim into a full-fledged IDE with LSP support, linting, formatting,
autocompletion, AI-powered code suggestions, and more. It also includes some quality of life
improvements and additional features to make coding more enjoyable.

The configuration can be used as is and doesn't require any further setup.

> [!NOTE]
> Some Mason packages aren't avaliable on certain ARM processors. Watch out for
> errors and install them manually if needed.

> [!IMPORTANT]
> This configuration is now on version 2.5 and requires a fresh install to work properly.
> The old configuration can be accessed on "v2.0" branch. It will not be maintained or updated any longer.

## Installation

1. [Install NeoVim](https://github.com/neovim/neovim/wiki/Installing-Neovim)
2. Install NvChad v2.5 dependencies (Git, Nerd Font, GCC, Make, Ripgrep)
3. Run the following commands to delete or move out of the way any old
   config files:

   ```sh
    # Backup if you want to keep the old config
    mv ~/.config/nvim{,.bak}
    mv ~/.local/share/nvim{,.bak}
    mv ~/.local/state/nvim{,.bak}

    # Delete if you don't want to keep the old config
    rm -rf ~/.config/nvim
    rm -rf ~/.local/state/nvim
    rm -rf ~/.local/share/nvim
   ```

4. Clone this repository into `~/.config/nvim`:

   ```sh
    # Clone this repo
    git clone https://github.com/v3ceban/nvchad-config.git ~/.config/nvim
   ```

5. ??????
6. PROFIT

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
- Uses [eslint_d](https://github.com/mantoni/eslint_d.js) for linting
- Uses [prettier](https://prettier.io) for formatting
- Requires eslint config to run linting server
  - Run `npm init` if not already done
  - Run `npm init @eslint/config@latest` in the root of the project
- Uses [prisma-language-server](https://github.com/prisma/language-tools) for LSP in Prisma files

### PHP

- Uses [intelephense](https://intelephense.com/) as LSP and linter
- Uses [php-cs-fixer](https://github.com/PHP-CS-Fixer/PHP-CS-Fixer) for formatting
- Requires a git repo to run linting server
- To create .git run `git init` in the root of the project

### Lua

- Uses [lua-language-server](https://github.com/LuaLS/lua-language-server) for LSP and linting
- Uses [stylua](https://github.com/JohnnyMorganz/StyLua) for formatting
- Uncomment Mason overrides to install the packages that don't work on ARM

### Bash

- Uses [bash-language-server](https://github.com/bash-lsp/bash-language-server) for LSP
- Uses [beautysh](https://github.com/lovesegfault/beautysh) for formatting

### C/C++

- Uses [clangd](https://clangd.llvm.org) for LSP and linting
- Uses [clang-format](https://pypi.org/project/clang-format/) for formatting
- Requires clang: `sudo dnf install clang`

### Python

- Uses [python-lsp-server](https://github.com/python-lsp/python-lsp-server) for LSP and linting
- Uses [black](https://pypi.org/project/black/) and [isort](https://pycqa.github.io/isort/) for formatting

### Go

- Uses [gopls](https://pkg.go.dev/golang.org/x/tools/gopls) for LSP and linting
- Uses [gofumpt](https://pkg.go.dev/mvdan.cc/gofumpt), [goimports-reviser](https://github.com/incu6us/goimports-reviser), and [golines](https://github.com/segmentio/golines) for formatting

### Markdown

- Uses [Render Markdown](https://github.com/MeanderingProgrammer/render-markdown.nvim) for inline markdown rendering
- Uses [markdowny.nvim](https://github.com/antonk52/markdowny.nvim) for some markdown features in **Visual** mode
  - `<C-k>` to add a link
  - `<C-b>` to make text bold
  - `<C-i>` to make text italic
  - `<C-e>` to make text inline code or code block in **V-Line** mode

### Docker

- Uses [Dockerfile Language Server](https://github.com/rcjsuen/dockerfile-language-server-nodejs) for LSP in Dockerfiles
- Uses [Docker Compose Language Service](https://github.com/microsoft/compose-language-service) for LSP in Docker Compose files

## Extra Plugins/Features

### Copilot

Enables Copilot integration and quick commands

- Uses the [Copilot](https://github.com/github/copilot.vim) plugin for autocompletion
- Uses the [CopilotChat.nvim](https://github.com/CopilotC-Nvim/CopilotChat.nvim) plugin for chat functionality
- Run `:Copilot auth` to authenticate with GitHub
- Press `<M-l>` in insert mode to accept Copilot autocompletion suggestions
- Press `<leader>-C` in normal or visual mode to see avaliable Copilot Chat commands

### Avante

This is still work in progress, and [Avante](https://github.com/yetone/avante.nvim) can be disabled by commenting
the corresponding lines in `plugins.lua`. As plugin matures it can
potentially replace [CopilotChat](https://github.com/CopilotC-Nvim/CopilotChat.nvim) and, possibly, [Copilot](https://github.com/github/copilot.vim) itself.
To use with anything other than Copilot, API keys need to be set in
environment variables (e.g. `OPENAI_API_KEY="your key"`).

### Nvim-ts-autotag

Automatically closes and renames HTML tags

- Uses [Nvim-ts-autotag](https://github.com/windwp/nvim-ts-autotag) plugin

### Nvim-surround

Great plugin for surrounding text with brackets, quotes, and tags

- Uses [Nvim-surround](https://github.com/kylechui/nvim-surround) plugin
- Default keybinds in visual mode changed from `S` to `s`
- See `:h nvim-surround` for usage info

### Git-conflict

Plugin to resolve git conflicts

- Uses [git-conflict](https://github.com/akinsho/git-conflict.nvim) plugin
- Mapped to `<leader>cX`, where `X` is the conflict resolution option
- See `:h git-conflict` for usage info

### Vim-be-good

Plugin to get better at vim

- Uses [vim-be-good](https://github.com/ThePrimeagen/vim-be-good) plugin
- Mapped to `<leader>gg`

## Useful Links

[NvChad repository](https://github.com/NvChad/NvChad)

[Null-ls builtins](https://github.com/jose-elias-alvarez/null-ls.nvim/blob/main/doc/BUILTINS.md)

[Conform.nvim formatters](https://github.com/stevearc/conform.nvim?tab=readme-ov-file#formatters)

[Nvim-lint linters](https://github.com/mfussenegger/nvim-lint)

[LSPconfig builtins](https://github.com/neovim/nvim-lspconfig/blob/master/doc/configs.md)

# NvChad-Config

My custom configuration for [NeoVim](https://neovim.io/) uses [NvChad](https://nvchad.com/) as the base and includes some
additional plugins to enhance its core functionality.

This config transforms NeoVim into a full-fledged IDE with LSP support, linting, formatting,
autocompletion, AI-powered code suggestions, and more. It also includes some quality of life
improvements and additional features to make coding more enjoyable.

The configuration can be used as is and doesn't require any further setup (aside from
adding your API keys as env variables for AI providers).

> [!NOTE]
> Some Mason packages aren't avaliable on certain ARM processors. Watch out for
> errors and install them manually if needed.

> [!IMPORTANT]
> This is my personal configuration and is not intended to be used as a general-purpose
> neovim distro. Feel free to use it as a base for your own configuration, but be aware that
> my defaults and plugins may not suit your needs. I'm always open to suggestions and PRs,
> but I will not accept them if they don't fit my personal workflow.

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

- Uses [css-lsp](https://github.com/microsoft/vscode-css-languageservice) for LSP and linting
- Uses [prettierd](https://github.com/fsouza/prettierd) for formatting
- Uses [emmet](https://github.com/olrtg/emmet-language-server) for LSP snippets

### CSS

- Uses [html-lsp](https://github.com/microsoft/vscode-html-languageservice) for LSP and linting
- Uses [prettierd](https://github.com/fsouza/prettierd) for formatting
- Uses [tailwindcss-language-server](https://github.com/tailwindlabs/tailwindcss-intellisense) for Tailwind LSP
- Uses [rustywind](https://github.com/avencera/rustywind) for Tailwind classes organization

### JavaScript/TypeScript

- Uses [typescript-language-server](https://github.com/typescript-language-server/typescript-language-server) for LSP
- Uses [eslintd](https://github.com/mantoni/eslint_d.js/) for linting
- Uses [prettierd](https://github.com/fsouza/prettierd) for formatting
- Requires eslint config to run linting server
  - Run `npm init` if not already done
  - Run `npm init @eslint/config@latest` in the root of the project
- Uses [prisma-language-server](https://github.com/prisma/language-tools) for LSP in Prisma files

### JSON

- Uses [json-lsp](https://github.com/microsoft/vscode-json-languageservice) for LSP in JSON files
- Uses [fixjson](https://github.com/rhysd/fixjson) for formatting JSON files

### PHP

- Uses [intelephense](https://intelephense.com/) for LSP and linting
- Uses [php-cs-fixer](https://github.com/PHP-CS-Fixer/PHP-CS-Fixer) for formatting
- Requires a git repo to run linting server
  - To create .git run `git init` in the root of the project

### Lua

- Uses [lua-language-server](https://github.com/LuaLS/lua-language-server) for LSP and linting
- Uses [stylua](https://github.com/JohnnyMorganz/StyLua) for formatting

### Bash

- Uses [bash-language-server](https://github.com/bash-lsp/bash-language-server) for LSP
- Uses [beautysh](https://github.com/lovesegfault/beautysh) for formatting

### C/C++

- Uses [clangd](https://clangd.llvm.org) for LSP and linting
- Uses [clang-format](https://pypi.org/project/clang-format/) for formatting

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

## Extra Plugins/Features (not included in NvChad)

### Abolish.vim

Plugin that helps with abbreviations and substitutions.

- Uses [Abolish.vim](https://github.com/tpope/vim-abolish) plugin
- Mapped to `<leader>sr` to search and replace words or selections with substitutions
  - `:Subvert/child{,ren}/adult{,s}/g` turns `child` into `adult` and `children` into `adults`
  - `:Subvert/di{e,ce}/spinner{,s}/g` turns `die` into `spinner` and `dice` into `spinners`
  - If no `{}` is provided, the plugin works the same as `:s`
- Can do much more, see `:h abolish` for usage info

### Copilot

Enables Copilot integration and quick commands

- Uses the [Copilot](https://github.com/github/copilot.vim) plugin for autocompletion
- Run `:Copilot auth` to authenticate with GitHub
- Press `<M-l>` in insert mode to accept Copilot autocompletion suggestions
- Press `<M-j>` or `<M-k>` in insert mode to cycle through suggestions
- Uses the [CopilotChat.nvim](https://github.com/CopilotC-Nvim/CopilotChat.nvim) plugin for chat and some extra functionality
  - `<leader>ac` to open chat
    - `<leader>h` in chat window to show help in chat window
  - `<leader>ar` to run a command
  - `<leader>agc` to add all changes to git and generate a commit message

### Flash.nvim

Navigation with search labels and treesitter

- Uses the [Flash.nvim](https://github.com/folke/flash.nvim) plugin
- Enabled in search mode by default
- Treesitter nodes mapped to `<leader>st`

### Git-conflict

Plugin that helps resolve git conflicts

- Uses [git-conflict](https://github.com/akinsho/git-conflict.nvim) plugin
- Mapped to `<leader>cX`, where `X` is the conflict resolution option
- See `:h git-conflict` for usage info

### Nvim-surround

Great plugin for surrounding text with brackets, quotes, and html tags

- Uses [Nvim-surround](https://github.com/kylechui/nvim-surround) plugin
- Default keybinds in visual mode changed from `S` to `s`
- See `:h nvim-surround` for usage info

### Nvim-ts-autotag

Automatically closes and renames HTML tags

- Uses [Nvim-ts-autotag](https://github.com/windwp/nvim-ts-autotag) plugin

### Sort Motion.vim

Adds a sorting functionality using text objects and motions

- Uses [Sort Motion.vim](https://github.com/christoomey/vim-sort-motion) plugin
- Provides `gs` motion to sort lines or text objects
  - `gs` in visual mode to sort selection
  - `gsip` in normal mode to sort paragraph
  - `gsi{` to sort inside curly braces
  - etc...

### Vim-matchquote

Extends the built-in `%` command to match quotes and brackets

- Uses [vim-matchquote](https://github.com/airblade/vim-matchquote/tree/master) plugin
- Replaces the built-in `%` command
- Just works

## Useful Links

[Conform.nvim formatters](https://github.com/stevearc/conform.nvim?tab=readme-ov-file#formatters)

[LSPconfig builtins](https://github.com/neovim/nvim-lspconfig/blob/master/doc/configs.md)

[None-ls builtins](https://github.com/nvimtools/none-ls.nvim/blob/main/doc/BUILTINS.md)

[Null-ls builtins](https://github.com/jose-elias-alvarez/null-ls.nvim/blob/main/doc/BUILTINS.md)

[NvChad repository](https://github.com/NvChad/NvChad)

[Nvim-lint linters](https://github.com/mfussenegger/nvim-lint?tab=readme-ov-file#available-linters)

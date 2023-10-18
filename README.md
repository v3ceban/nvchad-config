# nvchad-config

Custom config for NeoVim with NVChad plugin.

## Currently supports

### C/C++

### Lua

### CSS/SCSS

### HTML

### JavaScript/TypeScript

- JavaScript and TypeScript linting requires eslint config
- To create one run: `npm init @eslint/config` in the root of the project

### PHP

- Realized through [intelephense](https://intelephense.com/)
- Requires .git to work
- To enable git run: `git init` in the root of the project
- Requires PHP installed on system for formatter to work

### ChatGPT

- Uses [chatgpt.nvim](https://github.com/jackmort/chatgpt.nvim) plugin
- Requires `$OPENAI_API_KEY` set as a variable in .bashrc
- OR
- Requires `api_key_cmd` configuration option passed as a setup param

### python

## Useful links

[Null-ls builtins](https://github.com/jose-elias-alvarez/null-ls.nvim/blob/main/doc/BUILTINS.md)

[LSPconfig builtins](https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md)

[NvChad example config](https://github.com/NvChad/example_config/tree/v2.0)

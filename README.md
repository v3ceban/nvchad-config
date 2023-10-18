# nvchad-config

Custom config for NeoVim with NVChad plugin

## Currently supports

### c/cpp

### lua

### css/scss

### html

### js/ts

- JavaScript and TypeScript linting requires eslint config
- To create one run: `npm init @eslint/config` in the root of the project

### php

- Realized through [intelephense](https://intelephense.com/)
- Requires .git to work
- To create one run: `git init` in the root of the project
- Requires PHP installed on system for formatter to work

### chat gpt

- Uses [chatgpt.nvim](https://github.com/jackmort/chatgpt.nvim) plugin
- Requires `$OPENAI_API_KEY` set as a variable in .bashrc
- OR `api_key_cmd` needs to be passed as a setup param

### python

## Useful links

[Null-ls builtins](https://github.com/jose-elias-alvarez/null-ls.nvim/blob/main/doc/BUILTINS.md)

[LSPconfig builtins](https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md)

[NvChad example config](https://github.com/NvChad/example_config/tree/v2.0)

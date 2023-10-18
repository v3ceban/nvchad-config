# nvchad-config

Custom config for NeoVim with NVChad plugin

## Currently supports:

- c/cpp
- lua
- css/scss
- html
- <details>
    <summary>js/ts</summary>
    JavaScript and TypeScript linting requires eslint config
    
    To create one run: <code>npm init @eslint/config</code>
  </details>
- <details>
    <summary>php</summary>
    Realized through intelephense. Requires .git to work
    
    To create one run: <code>git init</code>
    
    Requires PHP installed on system for formatter to work
  </details>
- <details>
    <summary>chat gpt</summary>
    Uses chatgpt.nvim plugin.
    
    Requires <code>$OPENAI_API_KEY</code> set as a variable in .bashrc or an input as <code>api_key_cmd</code> setup param.

  For usage and more info visit: https://github.com/jackmort/chatgpt.nvim
  </details>

## Useful links:

https://github.com/jose-elias-alvarez/null-ls.nvim/blob/main/doc/BUILTINS.md

https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md

https://github.com/NvChad/example_config/tree/v2.0

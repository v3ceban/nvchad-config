# nvchad-config

Custom config for NeoVim with NVChad plugin

## Currently supports:

- c/cpp
- lua
- css/scss
- html
- <details>
    <summary>js/ts</summary>
    <p>JavaScript and TypeScript linting requires eslint config</p>
    <p>To create one run: <code>npm init @eslint/config</code> in the root of the project</p>
  </details>
- <details>
    <summary>php</summary>
    <p>Realized through <a href="https://intelephense.com/">intelephense</a>. Requires .git to work</p>
    <p>To create one run: <code>git init</code> in the root of the project</p>
    <p>Requires PHP installed on system for formatter to work</p>
  </details>
- <details>
    <summary>chat gpt</summary>
    <p>Uses <a href="https://github.com/jackmort/chatgpt.nvim">chatgpt.nvim</a> plugin</p>
    <p>Requires <code>$OPENAI_API_KEY</code> set as a variable in .bashrc or an input as <code>api_key_cmd</code> setup param</p>
  </details>
- python

## Useful links:

https://github.com/jose-elias-alvarez/null-ls.nvim/blob/main/doc/BUILTINS.md

https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md

https://github.com/NvChad/example_config/tree/v2.0

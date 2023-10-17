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
    
    Requires PHP installed on system for formatter to work.
  </details>
- <details>
    <summary>chat gpt</summary>
    Uses chatgpt.nvim plugin and supports:

  - <code>:ChatGPT</code>
  - <code>:ChatGPTActAs</code>
  - <code>:ChatGPTEditWithInstructions</code>
  - <code>:ChatGPTRun</code>

    requires $OPENAI_API_KEY set as a variable in .bashrc
    </details>

## Useful links:

https://github.com/jose-elias-alvarez/null-ls.nvim/blob/main/doc/BUILTINS.md

https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md

https://github.com/NvChad/example_config/tree/v2.0

https://github.com/jackmort/chatgpt.nvim

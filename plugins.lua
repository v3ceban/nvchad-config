local overrides = require "custom.configs.overrides"
local whichkey = require "custom.configs.whichkey"

local plugins = {
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
  {
    "jose-elias-alvarez/null-ls.nvim",
    event = "VeryLazy",
    opts = function()
      return require "custom.configs.null-ls"
    end,
  },
  {
    "williamboman/mason.nvim",
    opts = overrides.mason,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = overrides.treesitter,
  },
  {
    "nvim-tree/nvim-tree.lua",
    opts = overrides.nvimtree,
  },
  {
    "folke/which-key.nvim",
    opts = whichkey,
  },
  {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    ft = { "markdown" },
    build = function()
      vim.fn["mkdp#util#install"]()
    end,
  },
  {
    "jackMort/ChatGPT.nvim",
    event = "VeryLazy",
    dependencies = {
      "MunifTanjim/nui.nvim",
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope.nvim",
    },
    config = function()
      require("chatgpt").setup {
        api_key_cmd = "pass show openai-api",
        openai_params = {
          max_tokens = 1500,
        },
        openai_edit_params = {
          max_tokens = 3000,
        },
        edit_with_instructions = {
          keymaps = {
            close = "<C-x>",
          },
        },
        chat = {
          keymaps = {
            close = "<C-x>",
            stop_generating = "<C-c>",
            select_session = "<Enter>",
          },
        },
      }
    end,
  },
}

return plugins

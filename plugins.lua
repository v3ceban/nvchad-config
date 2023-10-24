local plugins = {
  {
    "williamboman/mason.nvim",
    opts = require "custom.configs.mason",
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = require "custom.configs.treesitter",
  },
  {
    "nvim-tree/nvim-tree.lua",
    opts = require "custom.configs.nvimtree",
  },
  {
    "folke/which-key.nvim",
    opts = require "custom.configs.whichkey",
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "plugins.configs.lspconfig" -- default NvChad config
      require "custom.configs.lspconfig" -- custom config
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
      return require "custom.configs.chatgpt"
    end,
  },
  {
    "ThePrimeagen/vim-be-good",
    event = "VeryLazy",
  },
}

return plugins

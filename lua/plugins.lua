return {
  {
    "tpope/vim-abolish",
    event = "BufRead",
  },
  {
    "stevearc/conform.nvim",
    event = "BufWritePre",
    opts = require "configs.conform",
  },
  {
    "github/copilot.vim",
    event = "BufRead",
  },
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    dependencies = {
      "github/copilot.vim",
      "nvim-lua/plenary.nvim",
    },
    event = "VeryLazy",
    opts = require "configs.copilot",
  },
  {
    "folke/flash.nvim",
    event = "VeryLazy",
    opts = require "configs.flash",
  },
  {
    "akinsho/git-conflict.nvim",
    event = "VeryLazy",
    version = "*",
    config = require "configs.git-conflict",
  },
  {
    "mfussenegger/nvim-lint",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      require "configs.lint"
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },
  {
    "airblade/vim-matchquote",
    event = "BufRead",
  },
  {
    "antonk52/markdowny.nvim",
    event = "VeryLazy",
    config = function()
      require("markdowny").setup()
    end,
  },
  {
    "MeanderingProgrammer/render-markdown.nvim",
    dependencies = { "nvim-treesitter/nvim-treesitter" },
    event = "VeryLazy",
    opts = require "configs.render-markdown",
  },
  {
    "christoomey/vim-sort-motion",
    event = "VeryLazy",
  },
  {
    "kylechui/nvim-surround",
    version = "*",
    event = "VeryLazy",
    config = function()
      return require("configs.surround").setup()
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = require "configs.treesitter",
  },
  {
    "windwp/nvim-ts-autotag",
    event = "VeryLazy",
    ft = require("configs.ts-autotag").ft,
    config = function()
      require("configs.ts-autotag").setup()
    end,
  },
  {
    "folke/which-key.nvim",
    opts = require "configs.which-key",
  },
}

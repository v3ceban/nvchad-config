return {
  {
    "yetone/avante.nvim",
    lazy = false,
    version = false,
    opts = require "configs.avante",
    build = "make",
    dependencies = {
      -- "stevearc/dressing.nvim",
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      "hrsh7th/nvim-cmp",
      "nvim-tree/nvim-web-devicons",
    },
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
    "ThePrimeagen/vim-be-good",
    event = "VeryLazy",
  },
  {
    "folke/which-key.nvim",
    opts = require "configs.which-key",
  },
}

return {
  {
    "tpope/vim-abolish",
    cmd = { "Abolish", "Subvert" },
    keys = { "cr" },
  },
  {
    "yetone/avante.nvim",
    event = "User",
    build = "make",
    dependencies = {
      "MunifTanjim/nui.nvim",
    },
    opts = require "configs.avante",
  },
  {
    "hrsh7th/nvim-cmp",
    opts = function()
      return require "configs.cmp"
    end,
  },
  {
    "stevearc/conform.nvim",
    event = "BufWritePre",
    opts = require "configs.conform",
  },
  {
    "github/copilot.vim",
    event = "InsertEnter",
    cmd = { "Copilot" },
  },
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    event = "VeryLazy",
    dependencies = {
      "github/copilot.vim",
    },
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
    keys = { "%" },
  },
  {
    "antonk52/markdowny.nvim",
    ft = { "markdown", "copilot-chat", "Avante" },
    config = function()
      require("markdowny").setup()
    end,
  },
  {
    "MeanderingProgrammer/render-markdown.nvim",
    ft = { "markdown", "copilot-chat", "Avante" },
    dependencies = { "nvim-treesitter/nvim-treesitter" },
    opts = require "configs.render-markdown",
  },
  {
    "christoomey/vim-sort-motion",
    keys = {
      { "gs", mode = { "n", "v", "x" } },
    },
  },
  {
    "kylechui/nvim-surround",
    keys = {
      { "cs", mode = { "n" } },
      { "ds", mode = { "n" } },
      { "ys", mode = { "n" } },
      { "s", mode = { "v", "x" } },
    },
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
    ft = require("configs.ts-autotag").ft,
    config = function()
      require("configs.ts-autotag").setup()
    end,
  },
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = require "configs.which-key",
  },
}

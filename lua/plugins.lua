return {
  {
    "tpope/vim-abolish",
    cmd = { "Abolish", "Subvert" },
    keys = { "cr" },
  },
  {
    "yetone/avante.nvim",
    event = "VeryLazy",
    build = "make",
    version = false,
    dependencies = {
      "MunifTanjim/nui.nvim",
    },
    opts = require("configs.avante").opts,
    keys = require("configs.avante").keys,
    config = function(_, opts)
      require("avante").setup(opts)
      -- disable floating input hint
      local sidebar = require "avante.sidebar"
      if sidebar then
        sidebar.show_input_hint = function() end
        sidebar.close_input_hint = function() end
      end
      -- disable input hint in edit block mode
      local PromptInput = require "avante.ui.prompt_input"
      if PromptInput then
        PromptInput.show_shortcuts_hints = function() end
      end
    end,
  },
  -- experimental nvchad blink integration
  -- { import = "nvchad.blink.lazyspec" },
  -- {
  --   "Saghen/blink.cmp",
  --   opts = require "configs.blink",
  -- },
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
    version = "*",
    config = require "configs.git-conflict",
  },
  {
    "lukas-reineke/indent-blankline.nvim",
    event = "User FilePost",
    opts = require "configs.indent-blankline",
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
    "nvim-tree/nvim-tree.lua",
    opts = require "configs.nvim-tree",
  },
  {
    "airblade/vim-matchquote",
    keys = { "%" },
  },
  {
    "antonk52/markdowny.nvim",
    ft = { "markdown", "copilot-chat" },
    config = function()
      require("markdowny").setup()
    end,
  },
  {
    "MeanderingProgrammer/render-markdown.nvim",
    ft = { "markdown", "copilot-chat", "Avante" },
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
    version = "*",
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
    "nvim-telescope/telescope.nvim",
    opts = require "configs.telescope",
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

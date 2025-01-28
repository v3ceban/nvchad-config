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
      require "custom.configs.lspconfig"  -- custom config
    end,
  },
  {
    "nvimtools/none-ls.nvim",
    lazy = false,
    dependencies = {
      "nvimtools/none-ls-extras.nvim",
    },
    opts = function()
      return require "custom.configs.null-ls"
    end,
  },
  {
    "windwp/nvim-ts-autotag",
    event = "VeryLazy",
    ft = require("custom.configs.nvim-ts-autotag").ft,
    config = function()
      require("custom.configs.nvim-ts-autotag").setup()
    end,
  },
  {
    "kylechui/nvim-surround",
    version = "*",
    event = "VeryLazy",
    config = function()
      return require("custom.configs.nvim-surround").setup()
    end,
  },
  {
    "akinsho/git-conflict.nvim",
    event = "VeryLazy",
    version = "*",
    config = require "custom.configs.git-conflict",
  },
  {
    "folke/flash.nvim",
    event = "VeryLazy",
    opts = require "custom.configs.flash",
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
    opts = require "custom.configs.copilot",
  },
  {
    "yetone/avante.nvim",
    lazy = false,
    version = false,
    opts = require "custom.configs.avante",
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
    "ThePrimeagen/vim-be-good",
    event = "VeryLazy",
  },
  {
    "MeanderingProgrammer/render-markdown.nvim",
    dependencies = { "nvim-treesitter/nvim-treesitter" },
    event = "VeryLazy",
    opts = require "custom.configs.render-markdown",
  },
  {
    "antonk52/markdowny.nvim",
    event = "VeryLazy",
    config = function()
      require("markdowny").setup()
    end,
  },
  {
    "NvChad/nvim-colorizer.lua",
    opts = {
      user_default_options = require "custom.configs.colorizer",
    },
  },
  {
    "luckasRanarison/tailwind-tools.nvim",
    name = "tailwind-tools",
    event = "VeryLazy",
    build = ":UpdateRemotePlugins",
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "nvim-telescope/telescope.nvim",
      "neovim/nvim-lspconfig",
    },
    opts = require "custom.configs.tailwind-tools",
  },
}

return plugins

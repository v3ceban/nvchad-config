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
    event = "VeryLazy",
    opts = function()
      return require "custom.configs.null-ls"
    end,
  },
  {
    "windwp/nvim-ts-autotag",
    ft = {
      "html",
      "javascript",
      "typescript",
      "javascriptreact",
      "typescriptreact",
      "svelte",
      "vue",
      "tsx",
      "jsx",
      "rescript",
      "xml",
      "php",
      "markdown",
      "astro",
      "glimmer",
      "handlebars",
      "hbs",
    },
    config = function()
      require("nvim-ts-autotag").setup()
    end,
  },
  {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
      return require("custom.configs.nvim-surround").setup()
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
    "Exafunction/codeium.vim",
    event = "BufEnter",
    config = function()
      return require("custom.configs.codeium").setup()
    end,
  },
  {
    "ThePrimeagen/vim-be-good",
    event = "VeryLazy",
  },
}

return plugins

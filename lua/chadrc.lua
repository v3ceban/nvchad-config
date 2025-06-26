-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua

---@type ChadrcConfig
local M = {}

M.base46 = {
  theme = "catppuccin",
}

M.ui = {
  statusline = {
    theme = "default",
    separator_style = "arrow",
  },

  tabufline = {
    order = {
      "treeOffset",
      "buffers",
      "tabs",
      -- "btns",
    },
    bufwidth = 21,
  },

  cmp = {
    format_colors = {
      tailwind = true,
    },
  },
}

M.nvdash = {
  load_on_startup = true,
  header = {
    "     ▄▄         ▄ ▄▄▄▄▄▄▄   ",
    "   ▄▀███▄     ▄██ █████▀    ",
    "   ██▄▀███▄   ███           ",
    "   ███  ▀███▄ ███           ",
    "   ███    ▀██ ███           ",
    "   ███      ▀ ███           ",
    "   ▀██ █████▄▀█▀▄██████▄    ",
    "     ▀ ▀▀▀▀▀▀▀ ▀▀▀▀▀▀▀▀▀▀   ",
    "                            ",
    "     Powered By  eovim    ",
    "                            ",
  },

  buttons = {
    { txt = "󰉋  Open Files", keys = "Spc e", cmd = "NvimTreeFocus" },
    { txt = "  Find File", keys = "Spc ff", cmd = "Telescope find_files" },
    { txt = "󰈭  Find Word", keys = "Spc fw", cmd = "Telescope live_grep" },
    { txt = "  Recent Files", keys = "Spc fo", cmd = "Telescope oldfiles" },
    { txt = "󱥚  Themes", keys = "Spc th", cmd = ":lua require('nvchad.themes').open()" },
    { txt = "  Mappings", keys = "Spc ch", cmd = "NvCheatsheet" },
    { txt = "─", hl = "NvDashFooter", no_gap = true, rep = true },
    {
      txt = function()
        local stats = require("lazy").stats()
        local ms = math.floor(stats.startuptime) .. " ms"
        return "  Loaded " .. stats.loaded .. "/" .. stats.count .. " plugins in " .. ms
      end,
      hl = "NvDashFooter",
      no_gap = true,
    },
    { txt = "─", hl = "NvDashFooter", no_gap = true, rep = true },
  },
}

M.cheatsheet = {
  theme = "simple",
  excluded_groups = {
    ":help",
    "Add",
    "Change",
    "Claude (t)",
    "Close (i)",
    "Close (t)",
    "Close (v)",
    "Delete",
    "general (x)",
    "Indent (v)",
    "LSP (v)",
    "Nvim",
    "Opens",
    "Resize (t)",
    "Save (i)",
    "Save (t)",
    "Save (v)",
    "Show",
    "Tabufline",
    "Toggle (x)",
    "autopairs",
    "terminal (t)",
    "toggle (v)",
    "vim.snippet.jump (i)",
    "vim.snippet.jump (s)",
    "which-key-trigger",
  },
}

M.term = {
  float = {
    border = "rounded",
  },
}

return M

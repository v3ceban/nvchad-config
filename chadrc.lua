---@type ChadrcConfig
local M = {}

M.ui = {
  theme = "catppuccin",
  theme_toggle = { "catppuccin", "one_light" },
  statusline = {
    separator_style = "arrow",
  },
  nvdash = {
    load_on_startup = true,
    buttons = {
      { "󰙅  Open Project Tree", "<C-n>", "NvimTreeFocus" },
      { "  VimGetGood", "Spc g g", "VimBeGood" },
      { "  Find File", "Spc f f", "Telescope find_files" },
      { "󰈚  Recent Files", "Spc f o", "Telescope oldfiles" },
      { "󰈭  Find Word", "Spc f w", "Telescope live_grep" },
      { "  Themes", "Spc t h", "Telescope themes" },
      { "  Mappings", "Spc c h", "NvCheatsheet" },
      { "󰩈  Exit", "<C-q>", "qa!" },
    },
  },
}

M.plugins = "custom.plugins"

M.mappings = require "custom.mappings"

return M

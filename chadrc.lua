---@type ChadrcConfig
local M = {}

M.ui = {
  theme = "catppuccin",
  statusline = {
    separator_style = "arrow",
  },
  nvdash = {
    load_on_startup = true,
    buttons = {
      { "󰙅  Open Project Tree", "<C-n>", "NvimTreeFocus" },
      { "  Find File", "Spc f f", "Telescope find_files" },
      { "󰈚  Recent Files", "Spc f o", "Telescope oldfiles" },
      { "󰈭  Find Word", "Spc f w", "Telescope live_grep" },
      { "  Bookmarks", "Spc m a", "Telescope marks" },
      { "  Themes", "Spc t h", "Telescope themes" },
      { "  Mappings", "Spc c h", "NvCheatsheet" },
    },
  },
}

M.plugins = "custom.plugins"

M.mappings = require "custom.mappings"

return M

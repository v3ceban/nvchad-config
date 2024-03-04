---@type ChadrcConfig
local M = {}

M.ui = {
  theme = "catppuccin",
  theme_toggle = { "catppuccin", "github_light" },
  statusline = {
    separator_style = "arrow",
  },
  nvdash = require "custom.configs.nvdash",
}

M.plugins = "custom.plugins"

M.mappings = require "custom.mappings"

return M

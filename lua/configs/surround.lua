local M = {}

M.setup = function()
  require("nvim-surround").setup {
    keymaps = {
      visual = "s",
      visual_line = "S",
    },
    aliases = {
      ["b"] = { "}", "]", ")" }, -- brackets
      ["B"] = { "}", "]", ")", ">" }, -- all brackets
      ["q"] = { '"', "'", "`" }, -- quotes
      ["s"] = { "}", "]", ")", ">", '"', "'", "`" }, -- surroundings
      ["r"] = {}, -- disabled default keymap
      ["a"] = {}, -- disabled default keymap
    },
  }
end

return M

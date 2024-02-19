local M = {}

M.setup = function()
  require("nvim-surround").setup {
    keymaps = {
      visual = "s",
      visual_line = "S",
    },
  }
end

return M

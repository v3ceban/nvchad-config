local M = {}

M.general = {
  i = {
    ["<C-s>"] = { "<cmd> wa <CR>", "Save all files" },
  },
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["'"] = { ":", "enter command mode", opts = { nowait = true } },
    ['"'] = { ":", "enter command mode", opts = { nowait = true } },
    ["<C-s>"] = { "<cmd> wa <CR>", "Save all files" },
    ["<C-q>"] = { "<cmd> qa <CR>", "Quit everything" },
  },
}

return M

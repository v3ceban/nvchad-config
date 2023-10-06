local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["'"] = { ":", "enter command mode", opts = { nowait = true } },
    ['"'] = { ":", "enter command mode", opts = { nowait = true } },
  },
}

return M

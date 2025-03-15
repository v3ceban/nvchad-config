local wk = require "which-key"
wk.add {
  {
    mode = { "n", "v", "o" },
    {
      "gs",
      desc = "Sort",
    },
  },
}

local opts = {
  icons = {
    mappings = false,
  },
}

return opts

local labels = "1234567890"

local opts = {
  labels = labels,
  modes = {
    search = {
      enabled = true,
      search = {
        multi_window = false,
      },
    },
    char = {
      multi_line = false,
      jump_labels = true,
      keys = { "f", "F", "t", "T" },
      highlight = {
        backdrop = false,
      },
    },
    treesitter = {
      labels = labels,
    },
  },
  prompt = {
    prefix = { { "", "" } },
  },
}

return opts

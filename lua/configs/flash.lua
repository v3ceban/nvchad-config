local opts = {
  labels = "1234567890",
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
  },
  prompt = {
    prefix = { { "", "" } },
  },
}

return opts

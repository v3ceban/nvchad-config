local opts = {
  modes = {
    search = {
      enabled = true,
      search = {
        multi_window = false,
        trigger = "`",
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
}

return opts

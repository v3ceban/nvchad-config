local opts = {
  server = {
    override = true,
  },
  document_color = {
    enabled = true,
    kind = "background",
    inline_symbol = "󰝤 ",
    debounce = 100,
  },
  conceal = {
    enabled = false,
  },
  cmp = {
    highlight = "foreground",
  },
}

return opts

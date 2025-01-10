local opts = {
  provider = "copilot", -- "claude" | "openai" | "azure" | "gemini" | "cohere" | "copilot"
  auto_suggestions_provider = "copilot",
  openai = {
    model = "o1-mini",
    temperature = 0,
    max_tokens = 4096,
  },
  copilot = {
    model = "gpt-4o",
    temperature = 0,
    max_tokens = 4096,
  },
  behaviour = {
    auto_suggestions = false,
    auto_set_keymaps = true,
  },
  windows = {
    ask = {
      start_insert = false,
    },
  },
  mappings = {
    diff = {
      ours = "<leader>co",
      theirs = "<leader>ct",
      all_theirs = "<leader>ca",
      both = "<leader>cb",
      cursor = "<leader>ch",
      next = "<leader>cj",
      prev = "<leader>ck",
    },
    suggestion = {
      accept = "<M-l>",
      next = "<M-j>",
      prev = "<M-k>",
      dismiss = "<M-h>",
    },
    jump = {
      next = "<M-j>",
      prev = "<M-k>",
    },
    submit = {
      normal = "<CR>",
      insert = "<C-s>",
    },
    ask = "<leader>aa",
    edit = "<leader>ae",
    refresh = "<leader>ar",
    focus = "<nop>",
    toggle = {
      default = "<M-a>",
      debug = "<leader>ad",
      hint = "<leader>ah",
      suggestion = "<leader>as",
      repomap = "<nop>",
    },
    sidebar = {
      apply_all = "A",
      apply_cursor = "a",
      switch_windows = "<Tab>",
      reverse_switch_windows = "<S-Tab>",
      remove_file = "d",
      add_file = "@",
    },
    files = {
      add_current = "<leader>ac",
    },
  },
  hints = { enabled = false },
  highlights = {
    diff = {
      current = "",
      incoming = "",
    },
  },
}

return opts

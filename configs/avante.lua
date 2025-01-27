local opts = {
  provider = "copilot", -- "claude" | "openai" | "azure" | "gemini" | "cohere" | "copilot"
  auto_suggestions_provider = "copilot",
  openai = {
    endpoint = "https://api.openai.com/v1",
    model = "gpt-4o", -- gpt-4o | gpt-4o-mini | o1 | o1-mini
  },
  copilot = {
    endpoint = "https://api.githubcopilot.com",
    model = "claude-3.5-sonnet", -- claude-3.5-sonnet | gpt-4o | (o1 and o1-mini are too slow)
  },
  vendors = {
    deepseek = {
      __inherited_from = "openai",
      endpoint = "https://api.deepseek.com/v1",
      model = "deepseek-chat", -- deepseek-chat | deepseek-reasoner
      api_key_name = "DEEPSEEK_API_KEY",
    },
  },
  dual_boost = {
    enabled = false,
    first_provider = "copilot",
    second_provider = "openai",
  },
  behaviour = {
    auto_focus_sidebar = true,
    auto_suggestions = false,
    auto_suggestions_respect_ignore = false,
    auto_set_highlight_group = true,
    auto_set_keymaps = true,
    auto_apply_diff_after_generation = false,
    jump_result_buffer_on_finish = false,
    support_paste_from_clipboard = false,
    minimize_diff = true,
  },
  windows = {
    position = "right", -- "right" | "left" | "top" | "bottom" | "smart"
    ask = {
      start_insert = false,
    },
  },
  mappings = {
    diff = {
      ours = "<leader>gco",
      theirs = "<leader>gct",
      all_theirs = "<leader>gca",
      both = "<leader>gcb",
      cursor = "<leader>gch",
      next = "<leader>gcj",
      prev = "<leader>gck",
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
      debug = "<nop>",
      hint = "<nop>",
      suggestion = "<nop>",
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
      add_current = "<leader>af",
    },
  },
  hints = { enabled = false },
  highlights = {
    diff = {
      current = "",
      incoming = "",
    },
  },
  file_selector = {
    provider = "telescope",
  },
}

return opts

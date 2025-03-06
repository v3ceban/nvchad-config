-- higlight groups for avante and git-conflict
vim.api.nvim_set_hl(0, "DiffAddGroup", { bg = "#272a3f" })
vim.api.nvim_set_hl(0, "DiffTextGroup", { bg = "#1e2030" })

local opts = {
  provider = "copilot", -- claude | openai | azure | gemini | cohere | copilot
  auto_suggestions_provider = "copilot",
  openai = {
    endpoint = "https://api.openai.com/v1", -- needs OPENAI_API_KEY env variable
    model = "o3-mini", -- gpt-4o | o1 | o3-mini
  },
  copilot = {
    endpoint = "https://api.githubcopilot.com", -- needs Copilot plugin with authentication
    model = "claude-3.7-sonnet", -- claude-3.7-sonnet | claude-3.5-sonnet | gpt-4o | o3-mini
  },
  vendors = {
    ["copilot-3.5"] = {
      __inherited_from = "copilot",
      model = "claude-3.5-sonnet",
    },
    deepseek = {
      __inherited_from = "openai",
      endpoint = "https://api.deepseek.com/v1",
      model = "deepseek-chat", -- deepseek-chat | deepseek-reasoner
      api_key_name = "DEEPSEEK_API_KEY", -- needs DEEPSEEK_API_KEY env variable
      disable_tools = true,
    },
  },
  dual_boost = {
    enabled = false,
    first_provider = "copilot",
    second_provider = "openai",
  },
  web_search_engine = {
    provider = "tavily", -- needs TAVILY_API_KEY env variable
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
    enable_token_counting = false,
    enable_cursor_planning_mode = false,
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
      prev = "[c",
      next = "]c",
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
    -- <leader>sr map is set in mappings.lua as noremap
    -- setting avante maps to this key will effectively disable it
    -- and hide it from nvchad cheatsheet
    focus = "<leader>sr", -- disabled
    toggle = {
      default = "<M-a>",
      debug = "<leader>sr", -- disabled
      hint = "<leader>sr", -- disabled
      suggestion = "<leader>sr", -- disabled
      repomap = "<leader>sr", -- disabled
    },
    sidebar = {
      apply_all = "A",
      apply_cursor = "a",
      retry_user_request = "r",
      edit_user_request = "e",
      switch_windows = "<Tab>",
      reverse_switch_windows = "<S-Tab>",
      remove_file = "d",
      add_file = "@",
      close = { "<Esc>", "<leader>x" },
    },
    files = {
      add_current = "<leader>af",
    },
    select_model = "<leader>am",
  },
  highlights = {
    diff = {
      current = "DiffTextGroup",
      incoming = "DiffAddGroup",
    },
  },
  diff = {
    autojump = true,
  },
  hints = { enabled = false },
  file_selector = {
    provider = "telescope",
  },
}

return opts

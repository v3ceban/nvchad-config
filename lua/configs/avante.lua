-- higlight groups for avante and git-conflict needs to be set here for some reason
vim.api.nvim_set_hl(0, "DiffAddGroup", { bg = "#272a3f" })
vim.api.nvim_set_hl(0, "DiffTextGroup", { bg = "#1e2030" })

local opts = {
  provider = "copilot:3.7",
  auto_suggestions_provider = "copilot:3.7",
  openai = {
    endpoint = "https://api.openai.com/v1", -- needs OPENAI_API_KEY env variable
    model = "o3-mini",
    max_tokens = 16384,
  },
  ollama = {
    endpoint = "http://127.0.0.1:11434",
    model = "qwen2.5-coder", -- "ollama ls" for available models
    options = {
      num_ctx = 32768,
    },
    stream = true,
  },
  vendors = {
    ["copilot:3.7"] = {
      __inherited_from = "copilot",
      model = "claude-3.7-sonnet",
      disable_tools = true, -- until 3.7 behaves well with tools enabled
      max_tokens = 16384,
    },
    ["copilot:3.7-tools"] = {
      __inherited_from = "copilot",
      model = "claude-3.7-sonnet",
      disable_tools = false,
      max_tokens = 16384,
    },
    ["copilot:3.5"] = {
      __inherited_from = "copilot",
      model = "claude-3.5-sonnet",
      max_tokens = 16384,
    },
    ["copilot:o3"] = {
      __inherited_from = "copilot",
      model = "o3-mini",
      max_tokens = 16384,
    },
    ["deepseek:v3"] = {
      __inherited_from = "openai",
      endpoint = "https://api.deepseek.com/v1",
      model = "deepseek-chat",
      max_tokens = 16384,
      api_key_name = "DEEPSEEK_API_KEY", -- needs DEEPSEEK_API_KEY env variable
      disable_tools = true,
    },
    ["deepseek:r1"] = {
      __inherited_from = "openai",
      endpoint = "https://api.deepseek.com/v1",
      model = "deepseek-reasoner",
      max_tokens = 16384,
      api_key_name = "DEEPSEEK_API_KEY",
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
    -- <leader>sr map is set in mappings.lua as noremap
    -- setting avante maps to this key will effectively disable it
    -- and hide it from nvchad cheatsheet
    ask = "<leader>sr", -- disabled
    edit = "<leader>sr", -- disabled
    refresh = "<leader>sr", -- disabled
    focus = "<leader>sr", -- disabled
    toggle = {
      default = "<leader>sr",
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
      add_current = "<M-f>",
    },
    select_model = "<leader>sr",
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

local hidden_models = {
  "bedrock",
  "claude",
  "claude-haiku",
  "claude-opus",
  "cohere",
  "copilot",
  "gemini",
  "openai-gpt-4o-mini",
  "vertex",
  "vertex_claude",
}

for _, model in ipairs(hidden_models) do
  opts[model] = { hide_in_model_selector = true }
end

return opts

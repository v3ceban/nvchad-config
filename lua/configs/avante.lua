local opts = {
  provider = "copilot:gpt-4.1",
  auto_suggestions_provider = "copilot:gpt-4.1",
  mode = "legacy", -- agentic | legacy
  ollama = {
    endpoint = "http://127.0.0.1:11434",
    model = "qwen2.5-coder", -- "ollama ls" for available models
    options = {
      num_ctx = 32768,
      keep_alive = "20m",
    },
    stream = true,
  },
  vendors = {
    ["openai:o4-mini"] = {
      __inherited_from = "openai",
      model = "o4-mini",
      max_completion_tokens = 100000,
      reasoning_effort = "high",
    },
    ["openai:gpt-4.1"] = {
      __inherited_from = "openai",
      model = "gpt-4.1",
      max_tokens = 32768,
    },
    -- copilot doesn't seem to care about max_tokens values,
    -- be it 8k or over 9000k, max_tokens values below are
    -- pulled from corresponding vendor model specifications
    -- and may or may not do anything
    ["copilot:claude-3.5"] = {
      __inherited_from = "copilot",
      model = "claude-3.5-sonnet",
      max_tokens = 65536,
    },
    ["copilot:claude-3.7"] = {
      __inherited_from = "copilot",
      model = "claude-3.7-sonnet",
      max_tokens = 65536,
    },
    ["copilot:claude-3.7-thought"] = {
      __inherited_from = "copilot",
      model = "claude-3.7-sonnet-thought",
      max_tokens = 65536,
    },
    ["copilot:o4-mini"] = {
      __inherited_from = "copilot",
      model = "o4-mini",
      max_tokens = 100000,
    },
    ["copilot:gpt-4.1"] = {
      __inherited_from = "copilot",
      model = "gpt-4.1",
      max_tokens = 32768,
    },
    ["copilot:gemini-2.0"] = {
      __inherited_from = "copilot",
      model = "gemini-2.0-flash-001",
      max_tokens = 8192,
    },
    ["copilot:gemini-2.5"] = {
      __inherited_from = "copilot",
      model = "gemini-2.5-pro",
      max_tokens = 65536,
    },
    ["deepseek:v3"] = {
      __inherited_from = "openai",
      endpoint = "https://api.deepseek.com/v1",
      model = "deepseek-chat",
      api_key_name = "DEEPSEEK_API_KEY", -- needs DEEPSEEK_API_KEY env variable
      disable_tools = true,
      max_tokens = 8192,
    },
    ["deepseek:r1"] = {
      __inherited_from = "openai",
      endpoint = "https://api.deepseek.com/v1",
      model = "deepseek-reasoner",
      api_key_name = "DEEPSEEK_API_KEY",
      disable_tools = true,
      max_tokens = 8192,
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
    auto_set_keymaps = false,
    auto_apply_diff_after_generation = false,
    jump_result_buffer_on_finish = false,
    support_paste_from_clipboard = false,
    minimize_diff = true,
    enable_token_counting = false,
    -- enable_cursor_planning_mode = false,
    -- enable_claude_text_editor_tool_mode = false,
    use_cwd_as_project_root = false,
  },
  disabled_tools = {
    "python",
  },
  windows = {
    position = "right", -- "right" | "left" | "top" | "bottom" | "smart"
    wrap = true,
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
    cancel = {
      normal = { "<C-c>", "<Esc>" },
      insert = { "<C-c>" },
    },
    ask = false,
    edit = false,
    refresh = false,
    focus = false,
    stop = false,
    toggle = {
      default = "<leader>sr",
      debug = false,
      hint = false,
      suggestion = false,
      repomap = false,
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
      close_from_input = { normal = { "<Esc>", "<leader>x" } },
    },
    files = {
      add_current = "<M-f>",
      add_all_buffers = "<M-F>",
    },
    select_model = false,
    select_history = false,
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
  hints = {
    enabled = false,
    -- submit_hint = false,
  },
  selector = {
    provider = "telescope",
    exclude_auto_select = { "NvimTree" },
  },
  file_selector = {
    provider = "telescope",
  },
}

local hidden_models = {
  "aihubmix",
  "aihubmix-claude",
  "bedrock",
  "bedrock-claude-3.7-sonnet",
  "claude",
  "claude-haiku",
  "claude-opus",
  "cohere",
  "copilot",
  "gemini",
  "openai",
  "openai-gpt-4o-mini",
  "vertex",
  "vertex_claude",
}

for _, model in ipairs(hidden_models) do
  opts[model] = { hide_in_model_selector = true }
end

local no_tools = true

for _, model in ipairs(opts.vendors) do
  opts.vendors[model].disable_tools = no_tools
end

return opts

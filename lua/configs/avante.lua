local M = {}

local opts = {
  provider = "copilot/gpt-4.1",
  auto_suggestions_provider = "copilot/gpt-4.1",
  mode = "legacy", -- agentic | legacy
  providers = {
    -- ollama = {
    --   endpoint = "http://127.0.0.1:11434",
    --   model = "qwen2.5-coder", -- "ollama ls" for available models
    --   stream = true,
    --   disable_tools = true,
    --   extra_request_body = {
    --     options = {
    --       num_ctx = 32768,
    --       keep_alive = "20m",
    --     },
    --   },
    -- },
    ["openai/o4-mini"] = {
      __inherited_from = "openai",
      model = "o4-mini",
      display_name = "openai/o4-mini",
      disable_tools = true,
      extra_request_body = {
        max_completion_tokens = 100000,
        reasoning_effort = "high",
      },
    },
    ["openai/gpt-4.1"] = {
      __inherited_from = "openai",
      model = "gpt-4.1",
      display_name = "openai/gpt-4.1",
      disable_tools = true,
      extra_request_body = {
        max_tokens = 32768,
      },
    },
    -- copilot doesn't seem to care about max_tokens values,
    -- be it 8k or over 9000k, max_tokens values below are
    -- pulled from corresponding vendor model specifications
    -- and may or may not do anything
    ["copilot/claude-4"] = {
      __inherited_from = "copilot",
      model = "claude-sonnet-4",
      display_name = "copilot/claude-4",
      disable_tools = true,
      extra_request_body = {
        max_tokens = 65536,
      },
    },
    ["copilot/claude-3.5"] = {
      __inherited_from = "copilot",
      model = "claude-3.5-sonnet",
      display_name = "copilot/claude-3.5",
      disable_tools = true,
      extra_request_body = {
        max_tokens = 65536,
      },
    },
    ["copilot/claude-3.7"] = {
      __inherited_from = "copilot",
      model = "claude-3.7-sonnet",
      display_name = "copilot/claude-3.7",
      disable_tools = true,
      extra_request_body = {
        max_tokens = 65536,
      },
    },
    ["copilot/claude-3.7-thought"] = {
      __inherited_from = "copilot",
      model = "claude-3.7-sonnet-thought",
      display_name = "copilot/claude-3.7-thought",
      disable_tools = true,
      extra_request_body = {
        max_tokens = 65536,
      },
    },
    ["copilot/o4-mini"] = {
      __inherited_from = "copilot",
      model = "o4-mini",
      display_name = "copilot/o4-mini",
      disable_tools = true,
      extra_request_body = {
        max_tokens = 100000,
      },
    },
    ["copilot/gpt-4.1"] = {
      __inherited_from = "copilot",
      model = "gpt-4.1",
      display_name = "copilot/gpt-4.1",
      disable_tools = true,
      extra_request_body = {
        max_tokens = 32768,
      },
    },
    ["copilot/gemini-2.0"] = {
      __inherited_from = "copilot",
      model = "gemini-2.0-flash-001",
      display_name = "copilot/gemini-2.0-flash",
      disable_tools = true,
      extra_request_body = {
        max_tokens = 8192,
      },
    },
    ["copilot/gemini-2.5"] = {
      __inherited_from = "copilot",
      model = "gemini-2.5-pro",
      display_name = "copilot/gemini-2.5-pro",
      disable_tools = true,
      extra_request_body = {
        max_tokens = 65536,
      },
    },
    ["deepseek/v3"] = {
      __inherited_from = "openai",
      endpoint = "https://api.deepseek.com/v1",
      model = "deepseek-chat",
      display_name = "deepseek/v3",
      api_key_name = "DEEPSEEK_API_KEY", -- needs DEEPSEEK_API_KEY env variable
      disable_tools = true,
      extra_request_body = {
        max_tokens = 8192,
      },
    },
    ["deepseek/r1"] = {
      __inherited_from = "openai",
      endpoint = "https://api.deepseek.com/v1",
      model = "deepseek-reasoner",
      display_name = "deepseek/r1",
      api_key_name = "DEEPSEEK_API_KEY",
      disable_tools = true,
      extra_request_body = {
        max_tokens = 65536,
      },
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
    use_cwd_as_project_root = false,
    auto_focus_on_diff_view = false,
    auto_approve_tool_permissions = false,
  },
  windows = {
    position = "right", -- "right" | "left" | "top" | "bottom" | "smart"
    wrap = true,
    sidebar_header = {
      rounded = false,
    },
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
    new_ask = false,
    edit = false,
    refresh = false,
    focus = false,
    stop = false,
    toggle = {
      default = false,
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
      add_all_buffers = false, -- doesn't work with auto_set_keymaps = false
    },
    select_model = false,
    select_history = false,
  },
  history = {
    storage_path = "/tmp/avante_history",
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
  "copilot",
  "gemini",
  "openai",
  "openai-gpt-4o-mini",
  "vertex",
  "vertex_claude",
  "ollama",
}

for _, provider in pairs(opts.providers) do
  provider.hide_in_model_selector = false
end

for _, model in ipairs(hidden_models) do
  opts.providers[model] = { hide_in_model_selector = true }
end

local keys = {
  {
    "<M-f>",
    function()
      local tree_ext = require "avante.extensions.nvim_tree"
      tree_ext.add_file()
    end,
    ft = "NvimTree",
  },
  {
    "<M-F>",
    function()
      local tree_ext = require "avante.extensions.nvim_tree"
      tree_ext.remove_file()
    end,
    ft = "NvimTree",
  },
}

M.opts = opts
M.keys = keys

return M

-- Ollama API Documentation https://github.com/ollama/ollama/blob/main/docs/api.md#generate-a-completion
local role_map = {
  user = "user",
  assistant = "assistant",
  system = "system",
  tool = "tool",
}

---@diagnostic disable-next-line: unused-local
local parse_messages = function(self, opts)
  local messages = {}
  local msg_list = opts.messages or {}
  for _, msg in ipairs(msg_list) do
    local role = role_map[msg.role] or "assistant"
    local content = msg.content or ""
    table.insert(messages, {
      role = role,
      content = content,
    })
  end
  return messages
end

local function parse_curl_args(self, code_opts)
  local messages = {
    { role = "system", content = code_opts.system_prompt },
  }
  vim.list_extend(messages, self:parse_messages(code_opts))
  local options = {
    num_ctx = (self.options and self.options.num_ctx) or 4096,
    temperature = code_opts.temperature or (self.options and self.options.temperature) or 0,
  }
  local tools = (code_opts.tools and next(code_opts.tools)) and code_opts.tools or nil
  local body = {
    model = self.model,
    messages = messages,
    options = options,
    stream = true,
  }
  if tools and not self.disable_tools then
    body.tools = tools
  end
  return {
    url = self.endpoint .. "/api/chat",
    headers = {
      ["Accept"] = "application/json",
      ["Content-Type"] = "application/json",
    },
    body = body,
  }
end

local function parse_stream_data(data, handler_opts)
  local json_data = vim.fn.json_decode(data)
  if json_data then
    if json_data.done then
      handler_opts.on_stop { reason = json_data.done_reason or "stop" }
      return
    end
    if json_data.message then
      local content = json_data.message.content
      if content and content ~= "" then
        handler_opts.on_chunk(content)
      end
    end
    if json_data.tool_calls then
      for _, tool in ipairs(json_data.tool_calls) do
        handler_opts.on_tool(tool)
      end
    end
  end
end

local opts = {
  provider = "copilot", -- claude | openai | azure | gemini | cohere | copilot
  auto_suggestions_provider = "copilot",
  openai = {
    endpoint = "https://api.openai.com/v1", -- needs OPENAI_API_KEY env variable
    model = "gpt-4o", -- gpt-4o | o1 | o1-mini
  },
  copilot = {
    endpoint = "https://api.githubcopilot.com",
    model = "claude-3.5-sonnet", -- claude-3.5-sonnet | gpt-4o | o3-mini | gemini-2.0-flash-001
  },
  vendors = {
    deepseek = {
      __inherited_from = "openai",
      endpoint = "https://api.deepseek.com/v1",
      model = "deepseek-chat", -- deepseek-chat | deepseek-reasoner
      api_key_name = "DEEPSEEK_API_KEY", -- needs DEEPSEEK_API_KEY env variable
      disable_tools = true,
    },
    ollama = {
      endpoint = "http://127.0.0.1:11434",
      model = "qwen2.5-coder", -- ollama ls for available models
      num_ctx = 32768,
      disable_tools = true,
      parse_messages = parse_messages,
      parse_curl_args = parse_curl_args,
      parse_stream_data = parse_stream_data,
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
      switch_windows = "<Tab>",
      reverse_switch_windows = "<S-Tab>",
      remove_file = "d",
      add_file = "@",
    },
    files = {
      add_current = "<leader>af",
    },
  },
  diff = {
    autojump = false,
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

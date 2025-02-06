-- Copilot Chat configuration
local opts = {
  model = "claude-3.5-sonnet", -- :CopilotChatModels - show available models ($)
  agent = "copilot", -- :CopilotChatAgents for available agents (@)
  context = nil, -- Default context or array of contexts to use (#)
  temperature = 0,

  window = {
    layout = "float", -- 'vertical', 'horizontal', 'float', 'replace'
    width = 0.6,
    height = 0.5,
    -- Options below only apply to floating windows
    relative = "editor", -- 'editor', 'win', 'cursor', 'mouse'
    border = "rounded", -- 'none', single', 'double', 'rounded', 'solid', 'shadow'
    title = "",
  },

  show_help = false,
  show_folds = false,
  highlight_selection = false,
  highlight_headers = false,
  auto_follow_cursor = false,
  auto_insert_mode = false,
  insert_at_end = false,
  clear_chat_on_new_prompt = false,
  chat_autocomplete = false,

  question_header = "> [!USER] User ",
  answer_header = "> [!COPILOT] Copilot ",
  error_header = "> [!ERROR] Error ",
  separator = "",

  prompts = {
    Docs = {
      prompt = "/COPILOT_GENERATE\n\nPlease add documentation comments to the selected code.",
    },
    Explain = {
      prompt = "/COPILOT_EXPLAIN\n\nPlease write an explanation for the selected code as paragraphs of text.",
    },
    Fix = {
      prompt = "/COPILOT_GENERATE\n\nThere may be one or more problems in selected code. Please rewrite the code to show it with all the bugs fixed.",
    },
    Grammar = {
      prompt = "/COPILOT_INSTRUCTIONS\n\nPlease correct the grammar in the selected code, following US English grammar rules. Ensure that no code (such as tags, keywords, or language syntax) is altered. Preserve word choices unless changes are strictly required by grammar rules. Your output should include everything from the selection, retaining the original syntax and content structure, with only the grammar corrected and no line numbers.",
    },
    Optimize = {
      prompt = "/COPILOT_GENERATE\n\nOptimize the selected code to improve performance and readability.",
    },
    Review = {
      prompt = "/COPILOT_REVIEW\n\nPlease review the selected code.",
    },
  },

  mappings = {
    complete = {
      insert = "<Tab>",
    },
    close = {
      normal = "<leader>x",
      insert = "",
    },
    reset = {
      normal = "<leader>r",
      insert = "",
    },
    submit_prompt = {
      normal = "<CR>",
      insert = "",
    },
    toggle_sticky = {
      detail = "Makes line under cursor sticky or deletes sticky line.",
      normal = "<leader>s",
    },
    accept_diff = {
      normal = "<leader>a",
      insert = "",
    },
    jump_to_diff = {
      normal = "<leader>j",
    },
    quickfix_answers = {
      normal = "<leader>qa",
    },
    quickfix_diffs = {
      normal = "<leader>qd",
    },
    yank_diff = {
      normal = "<leader>y",
      register = '"',
    },
    show_diff = {
      normal = "<leader>d",
    },
    show_info = {
      normal = "<leader>i",
    },
    show_context = {
      normal = "<leader>c",
    },
    show_help = {
      normal = "<leader>h",
    },
  },
}

vim.api.nvim_create_autocmd("BufEnter", {
  pattern = "copilot-*",
  callback = function()
    vim.opt.completeopt = vim.opt.completeopt + "noinsert" + "noselect"
  end,
})
vim.api.nvim_create_autocmd("BufLeave", {
  pattern = "copilot-*",
  callback = function()
    vim.opt.completeopt = vim.opt.completeopt - "noinsert" - "noselect"
  end,
})

return opts

-- Copilot configuration
vim.g.copilot_no_tab_map = true --disable tab mapping for copilot

-- Width and centered title for Copilot Chat window
local w = 0.5
local function get_padding(string)
  return math.floor((vim.o.columns * w - #string) / 2)
end
local title = " Copilot Chat "
local centered_title = string.rep("─", get_padding(title)) .. title

-- Copilot Chat configuration
local opts = {
  model = "gpt-4o",  -- ':CopilotChatModels' for available models (can be specified manually in prompt via $).
  agent = "copilot", -- ':CopilotChatAgents' for available agents (can be specified manually in prompt via @).
  context = nil,     -- Default context or array of contexts to use (can be specified manually in prompt via #).
  temperature = 0.1, -- GPT result temperature - higher values will make the AI more creative and less accurate.

  -- default window options
  window = {
    layout = "float",       -- 'vertical', 'horizontal', 'float', 'replace'
    width = w,              -- fractional width of parent, or absolute width in columns when > 1
    height = w,             -- fractional height of parent, or absolute height in rows when > 1
    -- Options below only apply to floating windows
    relative = "editor",    -- 'editor', 'win', 'cursor', 'mouse'
    border = "rounded",     -- 'none', single', 'double', 'rounded', 'solid', 'shadow'
    row = nil,              -- row position of the window, default is centered
    col = nil,              -- column position of the window, default is centered
    title = centered_title, -- title of chat window
    footer = nil,           -- footer of chat window
    zindex = 1,             -- determines if window is on top or below other floating windows
  },

  show_help = false,                       -- Shows help message as virtual lines when waiting for user input
  show_folds = false,                      -- Shows folds for sections in chat
  highlight_selection = false,             -- Highlight selection
  highlight_headers = false,               -- Highlight headers in chat, disable if using markdown renderers (like render-markdown.nvim)
  auto_follow_cursor = false,              -- Auto-follow cursor in chat
  auto_insert_mode = false,                -- Automatically enter insert mode when opening window and on new prompt
  insert_at_end = false,                   -- Move cursor to end of buffer when inserting text
  clear_chat_on_new_prompt = false,        -- Clears chat on every new prompt

  question_header = "> [!USER] User ",     -- Header to use for user questions
  answer_header = "> [!COPILOT] Copilot ", -- Header to use for AI answers
  error_header = "> [!ERROR] Error ",      -- Header to use for errors
  separator = "",                          -- Separator to use in chat

  prompts = {
    Explain = {
      prompt = "> /COPILOT_EXPLAIN\n\nPlease write an explanation for the selected code as paragraphs of text.",
    },
    Review = {
      prompt = "> /COPILOT_REVIEW\n\nPlease review the selected code.",
    },
    Fix = {
      prompt =
      "> /COPILOT_GENERATE\n\nThere may be one or more problems in this code. Please rewrite the code to show it with all the bugs fixed.",
    },
    Optimize = {
      prompt = "> /COPILOT_GENERATE\n\nOptimize the selected code to improve performance and readability.",
    },
    Docs = {
      prompt = "> /COPILOT_GENERATE\n\nPlease add documentation comments to the selected code.",
    },
    Tests = {
      prompt = "> /COPILOT_GENERATE\n\nPlease generate tests for my code.",
    },
    Commit = {
      prompt =
      "> #git:staged\n\nPlease write commit message for the change with commitizen convention. Make sure the title has maximum 50 characters and message is wrapped at 72 characters. Wrap the whole message in code block with language gitcommit.",
    },
    Grammar = {
      prompt =
      "> /COPILOT_INSTRUCTIONS\n\nPlease correct the grammar in the selected code, following US English grammar rules. Ensure that no code (such as tags, keywords, or language syntax) is altered. Preserve word choices unless changes are strictly required by grammar rules. Your output should include everything from the selection, retaining the original syntax and content structure, with only the grammar corrected and no line numbers.",
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
    quickfix_diffs = {
      normal = "<leader>q",
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

return opts

-- Copilot Chat configuration
local opts = {
  model = "claude-3.5-sonnet",
  agent = "copilot",
  temperature = 0,

  window = {
    layout = "float", -- vertical | horizontal | float | replace
    width = 0.6,
    height = 0.5,
    relative = "editor", -- editor | win | cursor | mouse
    border = "rounded", -- none | single | double | rounded | solid | shadow
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
  chat_autocomplete = true,

  question_header = "> [!USER] User ",
  answer_header = "> [!COPILOT] Copilot ",
  error_header = "> [!ERROR] Error ",
  separator = "",

  -- extends default prompts
  prompts = {
    Commit = {
      prompt = "#git:staged\n\nWrite commit message for the change with commitizen convention. Make sure the title has maximum 50 characters and message is wrapped at 72 characters. Wrap the whole message in code block with language gitcommit.",
      context = false,
      selection = false,
      callback = function(response)
        local commit_message = response:match "```gitcommit\n(.-)\n```"
        if commit_message then
          local commit_choice = vim.fn.confirm("Create a commit with this message?\n" .. commit_message, "&Yes\n&No", 2)
          if commit_choice == 1 then
            vim.fn.system { "git", "commit", "-m", commit_message }
            local push_choice = vim.fn.confirm("Push this commit to remote?", "&Yes\n&No", 2)
            if push_choice == 1 then
              vim.fn.system { "git", "push" }
            end
            vim.defer_fn(function()
              vim.cmd "close"
            end, 20)
          end
        end
      end,
    },
    Dockerfile = {
      prompt = "/COPILOT_INSTRUCTIONS\n\nGenerate a Dockerfile for this application.",
      agent = "docker",
      context = "files:full",
      selection = false,
    },
    Fix = {
      prompt = "/COPILOT_GENERATE\n\nAnalyze the code, identify any issues or problems, and provide a corrected version. Focus on code quality, efficiency, and potential bugs.",
    },
    Grammar = {
      prompt = "/COPILOT_INSTRUCTIONS\n\nPlease correct the grammar in the selected code, following US English grammar rules. Ensure that no code (such as tags, keywords, or language syntax) and formatiing (tabs, spaces, line breaks) is altered. Preserve word choices unless changes are strictly required by grammar rules. Your output should include everything from the selection, retaining the original syntax and content structure, with only the grammar corrected and no line numbers.",
    },
    Review = {
      prompt = "/COPILOT_REVIEW\n\nReview the selected code.",
      callback = false,
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
      normal = "",
    },
    quickfix_answers = {
      normal = "",
    },
    quickfix_diffs = {
      normal = "",
    },
    yank_diff = {
      normal = "",
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

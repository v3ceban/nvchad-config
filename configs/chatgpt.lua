local tokenNum = 3500

local config = {
  require("chatgpt").setup {
    openai_params = {
      model = "gpt-4o",
      max_tokens = tokenNum,
    },
    openai_edit_params = {
      model = "gpt-4o",
      max_tokens = tokenNum,
    },
    edit_with_instructions = {
      keymaps = {
        close = "<C-x>",
      },
    },
    chat = {
      keymaps = {
        close = "<C-x>",
        stop_generating = "<C-c>",
        select_session = "<Enter>",
      },
    },
  },
}

return config

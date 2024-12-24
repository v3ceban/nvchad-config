local params = {
  model = "o1-mini",
  max_tokens = 3500,
  temperature = 1,
}

local config = {
  require("chatgpt").setup {
    openai_params = params,
    openai_edit_params = params,
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

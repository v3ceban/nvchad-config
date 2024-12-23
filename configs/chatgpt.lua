local max_tokens = 3500

local config = {
  require("chatgpt").setup {
    openai_params = {
      model = "o1-mini",
      max_tokens = max_tokens,
      temperature = 1,
    },
    openai_edit_params = {
      model = "gpt-4o-mini",
      max_tokens = max_tokens,
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

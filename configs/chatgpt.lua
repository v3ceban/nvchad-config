local config = {
  require("chatgpt").setup {
    api_key_cmd = "pass show openai-api",
    openai_params = {
      model = "gpt-3.5-turbo-1106",
      max_tokens = 4096,
    },
    openai_edit_params = {
      model = "gpt-3.5-turbo-1106",
      max_tokens = 4096,
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

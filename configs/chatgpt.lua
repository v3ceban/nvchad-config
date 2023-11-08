local config = {
  require("chatgpt").setup {
    api_key_cmd = "pass show openai-api",
    openai_params = {
      model = "gpt-3.5-turbo-1106",
      max_tokens = 1500,
    },
    openai_edit_params = {
      model = "gpt-3.5-turbo-1106",
      max_tokens = 3000,
    },
    edit_with_instructions = {
      keymaps = {
        close = "<C-x>",
      },
    },
    chat = {
      loading_test = "Loading. Please wait.",
      keymaps = {
        close = "<C-x>",
        stop_generating = "<C-c>",
        select_session = "<Enter>",
      },
    },
  },
}

return config

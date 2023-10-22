local config = {
  require("chatgpt").setup {
    api_key_cmd = "pass show openai-api",
    openai_params = {
      max_tokens = 1500,
    },
    openai_edit_params = {
      max_tokens = 3000,
    },
    edit_with_instructions = {
      keymaps = {
        close = "<leader>x",
      },
    },
    chat = {
      keymaps = {
        close = "<leader>x",
        select_session = "<Enter>",
      },
    },
  },
}

return config

require "nvchad.options"

vim.opt.relativenumber = true
vim.opt.wrap = false
vim.opt.incsearch = true
vim.opt.shell = "/bin/zsh"
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
vim.opt.foldlevel = 99
vim.g.markdown_recommended_style = 0
vim.g.copilot_no_tab_map = true

-- higlight groups for markdown
vim.api.nvim_set_hl(0, "RenderMarkdownHeader", { fg = "#89b4fa" })
vim.api.nvim_set_hl(0, "RenderMarkdownTodo", { fg = "#f38ba8" })
vim.api.nvim_set_hl(0, "RenderMarkdownCodeInline", { fg = "#fab387" })

-- for better syntax highlighting in .env files
vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
  pattern = {
    ".env.*",
  },
  callback = function()
    vim.bo.filetype = "bash"
  end,
})

-- for docker-compose lsp
vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
  pattern = {
    "docker-compose*.yml",
    "docker-compose*.yaml",
    "*docker-compose.yml",
    "*docker-compose.yaml",
  },
  callback = function()
    vim.bo.filetype = "yaml.docker-compose"
  end,
})

-- for autocompletions in copilot chat
vim.api.nvim_create_autocmd("BufEnter", {
  pattern = "copilot-*",
  callback = function()
    vim.opt.completeopt = vim.opt.completeopt + "noinsert" + "noselect" + "popup"
  end,
})
vim.api.nvim_create_autocmd("BufLeave", {
  pattern = "copilot-*",
  callback = function()
    vim.opt.completeopt = vim.opt.completeopt - "noinsert" - "noselect" - "popup"
  end,
})

-- close quickfix window after pressing enter
vim.api.nvim_create_autocmd("FileType", {
  pattern = "qf",
  callback = function()
    vim.api.nvim_buf_set_keymap(0, "n", "<CR>", "<CR>:cclose<CR>", { noremap = true, silent = true })
  end,
})

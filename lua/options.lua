require "nvchad.options"
local o = vim.opt
local g = vim.g
local a = vim.api
local bo = vim.bo

o.relativenumber = true
o.wrap = false
o.incsearch = true
o.shell = "/bin/zsh"
o.foldmethod = "expr"
o.foldexpr = "nvim_treesitter#foldexpr()"
o.foldlevel = 99
g.copilot_no_tab_map = true
g.markdown_recommended_style = 0 -- disable 4 spaces tabs in markdown

a.nvim_set_hl(0, "RenderMarkdownHeader", { fg = "#89b4fa" })
a.nvim_set_hl(0, "RenderMarkdownTodo", { fg = "#f38ba8" })
a.nvim_set_hl(0, "RenderMarkdownCodeInline", { fg = "#fab387" })

-- for docker-compose lsp
a.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
  pattern = {
    "docker-compose*.yml",
    "docker-compose*.yaml",
    "*docker-compose.yml",
    "*docker-compose.yaml",
  },
  callback = function()
    bo.filetype = "yaml.docker-compose"
  end,
})

-- for better syntax highlighting in .env files
a.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
  pattern = {
    ".env.*",
  },
  callback = function()
    bo.filetype = "bash"
  end,
})
a.nvim_create_autocmd("FileType", {
  pattern = "qf",
  callback = function()
    a.nvim_buf_set_keymap(0, "n", "<CR>", "<CR>:cclose<CR>", { noremap = true, silent = true })
  end,
})

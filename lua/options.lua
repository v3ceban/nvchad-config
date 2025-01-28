require "nvchad.options"
local o = vim.opt
local g = vim.g
local a = vim.api

o.relativenumber = true
o.wrap = false
o.incsearch = true
o.shell = "/bin/zsh"
o.foldmethod = "expr"
o.foldexpr = "nvim_treesitter#foldexpr()"
o.foldlevel = 99
g.copilot_no_tab_map = true
a.nvim_set_hl(0, "RenderMarkdownHeader", { fg = "#89b4fa" })
a.nvim_set_hl(0, "RenderMarkdownTodo", { fg = "#f38ba8" })
a.nvim_set_hl(0, "RenderMarkdownCodeInline", { fg = "#fab387" })
a.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
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

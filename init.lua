vim.opt.relativenumber = true                   --relative numbers
vim.opt.wrap = false                            --don't wrap long lines
vim.opt.incsearch = true                        --allows for tricky searches like "v* = false"
vim.opt.shell = "/bin/zsh"                      --set shell to zsh
vim.opt.foldmethod = "expr"                     --set foldmethod to expr
vim.opt.foldexpr = "nvim_treesitter#foldexpr()" --set foldexpr to nvim_treesitter#foldexpr()
vim.opt.foldlevel = 99                          --set foldlevel to 99
vim.g.copilot_no_tab_map = true                 --disable tab mapping for copilot

-- hl groups
local header_group = {
  "RenderMarkdownH1Bg",
  "RenderMarkdownH2Bg",
  "RenderMarkdownH3Bg",
  "RenderMarkdownH4Bg",
  "RenderMarkdownH5Bg",
  "RenderMarkdownH6Bg",
  "RenderMarkdownH1",
  "RenderMarkdownH2",
  "RenderMarkdownH3",
  "RenderMarkdownH4",
  "RenderMarkdownH5",
  "RenderMarkdownH6",
}

local todo_group = {
  "RenderMarkdownUnchecked",
  "RenderMarkdownChecked",
  "RenderMarkdownTodo",
}

for _, group in ipairs(header_group) do
  vim.api.nvim_set_hl(0, group, { fg = "#89b4fa" })
end

for _, group in ipairs(todo_group) do
  vim.api.nvim_set_hl(0, group, { fg = "#f38ba8" })
end

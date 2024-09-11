vim.opt.relativenumber = true                   --relative numbers
vim.opt.wrap = false                            --don't wrap long lines
vim.opt.incsearch = true                        --allows for tricky searches like "v* = false"
vim.opt.shell = "/bin/zsh"                      --set shell to zsh
vim.opt.foldmethod = "expr"                     --set foldmethod to expr
vim.opt.foldexpr = "nvim_treesitter#foldexpr()" --set foldexpr to nvim_treesitter#foldexpr()
vim.opt.foldlevel = 99                          --set foldlevel to 99
vim.g.copilot_no_tab_map = true                 --disable tab mapping for copilot
vim.api.nvim_set_hl(0, "RenderMarkdownHeader", { fg = "#89b4fa" })
vim.api.nvim_set_hl(0, "RenderMarkdownTodo", { fg = "#f38ba8" })
vim.api.nvim_set_hl(0, "RenderMarkdownCodeInline", { fg = "#fab387" })

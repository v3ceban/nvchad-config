vim.opt.relativenumber = true                   --relative numbers
vim.opt.wrap = false                            --don't wrap long lines
vim.opt.incsearch = true                        --allows for tricky searches like "v* = false"
vim.opt.shell = "/bin/zsh"                      --set shell to zsh
vim.opt.foldmethod = "expr"                     --set foldmethod to expr
vim.opt.foldexpr = "nvim_treesitter#foldexpr()" --set foldexpr to nvim_treesitter#foldexpr()
vim.opt.foldlevel = 99                          --set foldlevel to 99
vim.g.copilot_no_tab_map = true                 --disable tab mapping for copilot

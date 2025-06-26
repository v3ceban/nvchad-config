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
vim.opt.completeopt = "menu,menuone,noselect,popup"
vim.opt.laststatus = 3

-- LSP open diagnostics on jump
vim.diagnostic.config {
  jump = {
    float = true,
  },
  float = {
    border = "rounded",
  },
}

-- higlight groups for markdown
vim.api.nvim_set_hl(0, "RenderMarkdownHeader", { fg = "#89b4fa" })
vim.api.nvim_set_hl(0, "RenderMarkdownTodo", { fg = "#f38ba8" })
vim.api.nvim_set_hl(0, "RenderMarkdownCodeInline", { fg = "#fab387" })
-- higlight groups for git-conflict
vim.api.nvim_set_hl(0, "DiffAddGroup", { bg = "#272a3f" })
vim.api.nvim_set_hl(0, "DiffTextGroup", { bg = "#1e2030" })
-- highlight groups for LSP signature
vim.api.nvim_create_autocmd("LspAttach", {
  callback = function()
    vim.api.nvim_set_hl(0, "LspSignatureActiveParameter", { fg = "", bg = "", bold = true, italic = true })
  end,
})

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

-- close quickfix window after pressing enter, q, or escape, leave open when pressing o
vim.api.nvim_create_autocmd("FileType", {
  pattern = "qf",
  callback = function()
    vim.api.nvim_buf_set_keymap(0, "n", "<CR>", "<CR>:cclose<CR>", { noremap = true, silent = true })
    vim.api.nvim_buf_set_keymap(0, "n", "o", "<CR>", { noremap = true, silent = true })
    vim.api.nvim_buf_set_keymap(0, "n", "<Esc>", ":cclose<CR>", { noremap = true, silent = true })
    vim.api.nvim_buf_set_keymap(0, "n", "q", ":cclose<CR>", { noremap = true, silent = true })
    vim.api.nvim_buf_set_keymap(
      0,
      "n",
      "d",
      ":call setqflist(filter(getqflist(), {idx -> idx != line('.') - 1}))<CR>:redraw!<CR>",
      { noremap = true, silent = true }
    )
  end,
})

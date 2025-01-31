local lint = require "lint"

lint.linters_by_ft = {
  javascript = { "eslint_d" },
  javascriptreact = { "eslint_d" },
  svelte = { "eslint_d" },
  typescript = { "eslint_d" },
  typescriptreact = { "eslint_d" },
  vue = { "eslint_d" },
}

vim.o.updatetime = 200
vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "CursorHold" }, {
  callback = function()
    lint.try_lint()
  end,
})

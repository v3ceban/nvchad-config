local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
local null_ls = require "null-ls"
local f = null_ls.builtins.formatting

local opts = {
  sources = {
    require "none-ls.diagnostics.eslint_d",
    f.clang_format,
    f.stylua,
    f.prettier,
    f.phpcsfixer,
    f.black,
    f.gofumpt,
    f.goimports_reviser,
    f.golines,
  },
  on_attach = function(client, bufnr)
    if client.supports_method "textDocument/formatting" then
      vim.api.nvim_clear_autocmds {
        group = augroup,
        buffer = bufnr,
      }
      vim.api.nvim_create_autocmd("BufWritePre", {
        group = augroup,
        buffer = bufnr,
        callback = function()
          vim.lsp.buf.format { bufnr = bufnr }
        end,
      })
    end
  end,
}

return opts

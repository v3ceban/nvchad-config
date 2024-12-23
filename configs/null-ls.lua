local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
local null_ls = require "null-ls"
local f = null_ls.builtins.formatting

local opts = {
  sources = {
    f.clang_format,      -- c/cpp formatter
    f.stylua,            -- lua formatter
    f.prettier,          -- html/css/js formatter
    f.rustywind,         -- tailwindcss formatter
    f.phpcsfixer,        -- php formatter
    f.black,             -- python formatter
    f.gofumpt,           -- go formatter
    f.goimports_reviser, -- go imports organizer
    f.golines,           -- go line formatter
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

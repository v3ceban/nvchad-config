local base = require "plugins.configs.lspconfig"
local on_attach = base.on_attach
local capabilities = base.capabilities

---@diagnostic disable-next-line: different-requires
local lspconfig = require "lspconfig"

local servers = {
  "bashls",                -- bash linter
  "emmet_language_server", -- emmet
  "html",                  -- html lsp
  "prismals",              -- prisma lsp
}

--basic setup for everything in servers table
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

--customized setup for clangd
lspconfig.clangd.setup {
  --to avoid warning "multiple different client offset_encodings detected"
  capabilities = {
    offsetEncoding = { "utf-16" },
  },
  on_attach = on_attach,
}

-- customized setup for ts_ls
lspconfig.ts_ls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  init_options = {
    preferences = {
      disableSuggestions = true, -- eslint alerts are enough
    },
  },
}

--customized setup for php
lspconfig.intelephense.setup {
  init_options = {
    globalStoragePath = ".intelephense", --creates .intelephense directory inside project folder, without this setting it creates one at ~/intelephense
    -- licenceKey = "LICENSE_KEY", --if you have one
  },
  settings = {
    intelephense = {
      telemerty = {
        enabled = false, --no, thanks
      },
    },
  },
  on_attach = on_attach,
  capabilities = capabilities,
}

--customized setup for go
lspconfig.gopls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  settings = {
    gopls = {
      completeUnimported = true,
      usePlaceholders = true,
      analyses = {
        unusedparams = true,
      },
    },
  },
}

--customized setup for cssls
lspconfig.cssls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  settings = {
    css = {
      lint = {
        unknownAtRules = "ignore",
      },
    },
  },
}

--customized setup for pylsp
lspconfig.pylsp.setup {
  settings = {
    pylsp = {
      plugins = {
        pycodestyle = {
          enabled = true,
          ignore = { "E501", "W503" },
          maxLineLength = 120,
        },
      },
    },
  },
}

--customized setup for tailwindcss
lspconfig.tailwindcss.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = {
    "aspnetcorerazor",
    "astro",
    "astro-markdown",
    "blade",
    "clojure",
    "django-html",
    "htmldjango",
    "edge",
    "eelixir",
    "elixir",
    "ejs",
    "erb",
    "eruby",
    "gohtml",
    "gohtmltmpl",
    "haml",
    "handlebars",
    "hbs",
    "html",
    "htmlangular",
    "html-eex",
    "heex",
    "jade",
    "leaf",
    "liquid",
    "mdx",
    "mustache",
    "njk",
    "nunjucks",
    "php",
    "razor",
    "slim",
    "twig",
    "css",
    "less",
    "postcss",
    "sass",
    "scss",
    "stylus",
    "sugarss",
    "javascript",
    "javascriptreact",
    "reason",
    "rescript",
    "typescript",
    "typescriptreact",
    "vue",
    "svelte",
    "templ",
  },
}

-- disable all lsp highlights
for _, group in ipairs(vim.fn.getcompletion("@lsp", "highlight")) do
  vim.api.nvim_set_hl(0, group, {})
end

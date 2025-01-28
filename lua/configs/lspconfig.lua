require("nvchad.configs.lspconfig").defaults()

local lspconfig = require "lspconfig"
local nvlsp = require "nvchad.configs.lspconfig"
local init = nvlsp.on_init
local attach = nvlsp.on_attach
local capabilities = nvlsp.capabilities

local servers = {
  "bashls",
  "emmet_language_server",
  "html",
  "prismals",
  "dockerls",
  "docker_compose_language_service",
}

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_init = init,
    on_attach = attach,
    capabilities = capabilities,
  }
end

lspconfig.clangd.setup {
  on_init = init,
  on_attach = attach,
  capabilities = {
    offsetEncoding = { "utf-16" },
  },
}

lspconfig.ts_ls.setup {
  on_init = init,
  on_attach = attach,
  capabilities = capabilities,
  init_options = {
    preferences = {
      disableSuggestions = true,
    },
  },
}

lspconfig.intelephense.setup {
  on_init = init,
  on_attach = attach,
  capabilities = capabilities,
  init_options = {
    globalStoragePath = ".intelephense",
  },
  settings = {
    intelephense = {
      telemerty = {
        enabled = false,
      },
    },
  },
}

lspconfig.gopls.setup {
  on_init = init,
  on_attach = attach,
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

lspconfig.cssls.setup {
  on_init = init,
  on_attach = attach,
  capabilities = capabilities,
  settings = {
    css = {
      lint = {
        unknownAtRules = "ignore",
      },
    },
  },
}

lspconfig.pylsp.setup {
  on_init = init,
  on_attach = attach,
  capabilities = capabilities,
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

lspconfig.tailwindcss.setup {
  on_init = init,
  on_attach = attach,
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

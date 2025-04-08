require("nvchad.configs.lspconfig").defaults()

local lspconfig = require "lspconfig"
local nvlsp = require "nvchad.configs.lspconfig"
local init = nvlsp.on_init
local attach = nvlsp.on_attach
local capabilities = nvlsp.capabilities

local servers = {
  "bashls",
  "docker_compose_language_service",
  "dockerls",
  "html",
  "prismals",
  "jsonls",
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

lspconfig.emmet_language_server.setup {
  on_init = init,
  on_attach = attach,
  capabilities = capabilities,
  filetypes = {
    "css",
    "eruby",
    "html",
    "htmlangular",
    "htmldjango",
    "javascriptreact",
    "less",
    "php",
    "pug",
    "sass",
    "scss",
    "typescriptreact",
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
        mccabe = {
          threshold = 50,
        },
        pycodestyle = {
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
    "css",
    "django-html",
    "edge",
    "eelixir",
    "ejs",
    "elixir",
    "erb",
    "eruby",
    "gohtml",
    "gohtmltmpl",
    "haml",
    "handlebars",
    "hbs",
    "heex",
    "html",
    "html-eex",
    "htmlangular",
    "htmldjango",
    "jade",
    "javascript",
    "javascriptreact",
    "leaf",
    "less",
    "liquid",
    "mdx",
    "mustache",
    "njk",
    "nunjucks",
    "php",
    "postcss",
    "razor",
    "reason",
    "rescript",
    "sass",
    "scss",
    "slim",
    "stylus",
    "sugarss",
    "svelte",
    "templ",
    "twig",
    "typescript",
    "typescriptreact",
    "vue",
  },
}

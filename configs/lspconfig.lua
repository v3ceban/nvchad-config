local base = require "plugins.configs.lspconfig"
local on_attach = base.on_attach
local capabilities = base.capabilities

---@diagnostic disable-next-line: different-requires
local lspconfig = require "lspconfig"

local servers = {
  "cssls",
  "html",
  "tsserver",
  "pylsp",
  "bashls",
}

--basic setup for everything in servers table (line 8)
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

--customized setup for emmet to enable it in php
lspconfig.emmet_language_server.setup {
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

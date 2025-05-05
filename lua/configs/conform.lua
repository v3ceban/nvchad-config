local options = {
  formatters_by_ft = {
    astro = { "rustywind", "prettierd" },
    bash = { "beautysh" },
    blade = { "rustywind", "prettierd" },
    c = { "clang-format" },
    cpp = { "clang-format" },
    cs = { "clang-format" },
    csh = { "beautysh" },
    css = { "rustywind", "prettierd" },
    cuda = { "clang-format" },
    django = { "rustywind", "prettierd" },
    erb = { "rustywind", "prettierd" },
    eruby = { "rustywind", "prettierd" },
    fish = { "beautysh" },
    go = { "gofumpt", "goimports-reviser", "golines" },
    graphql = { "prettierd" },
    handlebars = { "rustywind", "prettierd" },
    html = { "rustywind", "prettierd" },
    htmlangular = { "rustywind", "prettierd" },
    java = { "clang-format" },
    javascript = { "rustywind", "prettierd" },
    javascriptreact = { "rustywind", "prettierd" },
    json = { "fixjson" },
    jsonc = { "prettierd" },
    ksh = { "beautysh" },
    less = { "prettierd" },
    lua = { "stylua" },
    markdown = { "prettierd" },
    mdx = { "prettierd" },
    proto = { "clang-format" },
    python = { "isort", "black" },
    scss = { "rustywind", "prettierd" },
    sh = { "beautysh" },
    svelte = { "rustywind", "prettierd" },
    tcsh = { "beautysh" },
    templ = { "rustywind", "prettierd" },
    typescript = { "rustywind", "prettierd" },
    typescriptreact = { "rustywind", "prettierd" },
    vue = { "rustywind", "prettierd" },
    yaml = { "prettierd" },
    zsh = { "beautysh" },
  },

  formatters = {
    black = {
      prepend_args = {
        "--fast",
      },
    },
    ["goimports-reviser"] = {
      prepend_args = { "-rm-unused" },
    },
    beautysh = {
      prepend_args = {
        "--indent-size",
        "2",
      },
    },
  },

  format_on_save = {
    timeout_ms = 2500,
    lsp_format = "fallback",
  },

  default_format_opts = {
    timeout_ms = 2500,
    lsp_format = "fallback",
  },
}

return options

local options = {
  formatters_by_ft = {
    astro = { "rustywind", "prettier" },
    bash = { "beautysh" },
    blade = { "rustywind", "prettier" },
    c = { "clang-format" },
    cpp = { "clang-format" },
    cs = { "clang-format" },
    csh = { "beautysh" },
    css = { "rustywind", "prettier" },
    cuda = { "clang-format" },
    django = { "rustywind", "prettier" },
    erb = { "rustywind", "prettier" },
    eruby = { "rustywind", "prettier" },
    fish = { "beautysh" },
    go = { "gofumpt", "goimports-reviser", "golines" },
    graphql = { "prettier" },
    handlebars = { "rustywind", "prettier" },
    html = { "rustywind", "prettier" },
    htmlangular = { "rustywind", "prettier" },
    java = { "clang-format" },
    javascript = { "rustywind", "prettier" },
    javascriptreact = { "rustywind", "prettier" },
    json = { "fixjson" },
    jsonc = { "prettier" },
    ksh = { "beautysh" },
    less = { "prettier" },
    lua = { "stylua" },
    markdown = { "prettier" },
    mdx = { "prettier" },
    proto = { "clang-format" },
    python = { "isort", "black" },
    scss = { "rustywind", "prettier" },
    sh = { "beautysh" },
    svelte = { "rustywind", "prettier" },
    tcsh = { "beautysh" },
    templ = { "rustywind", "prettier" },
    typescript = { "rustywind", "prettier" },
    typescriptreact = { "rustywind", "prettier" },
    vue = { "rustywind", "prettier" },
    yaml = { "prettier" },
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
    timeout_ms = 1000,
    lsp_fallback = true,
  },
}

return options

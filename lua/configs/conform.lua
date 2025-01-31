local options = {
  formatters_by_ft = {
    astro = { "prettierd" },
    bash = { "beautysh" },
    c = { "clang-format" },
    cpp = { "clang-format" },
    cs = { "clang-format" },
    csh = { "beautysh" },
    css = { "prettierd" },
    cuda = { "clang-format" },
    fish = { "beautysh" },
    go = { "gofumpt", "goimports-reviser", "golines" },
    graphql = { "prettierd" },
    handlebars = { "prettierd" },
    html = { "prettierd", "rustywind" },
    htmlangular = { "prettierd" },
    java = { "clang-format" },
    javascript = { "prettierd", "rustywind" },
    javascriptreact = { "prettierd", "rustywind" },
    json = { "prettierd" },
    jsonc = { "prettierd" },
    ksh = { "beautysh" },
    less = { "prettierd" },
    lua = { "stylua" },
    markdown = { "prettierd" },
    mdx = { "prettierd" },
    php = { "php-cs-fixer" },
    proto = { "clang-format" },
    python = { "isort", "black" },
    scss = { "prettierd" },
    sh = { "beautysh" },
    svelte = { "prettierd", "rustywind" },
    tcsh = { "beautysh" },
    typescript = { "prettierd", "rustywind" },
    typescriptreact = { "prettierd", "rustywind" },
    vue = { "prettierd", "rustywind" },
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
    timeout_ms = 1000,
    lsp_fallback = true,
  },
}

return options

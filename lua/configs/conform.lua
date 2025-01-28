local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    javascript = { "prettierd", "rustywind" },
    javascriptreact = { "prettierd", "rustywind" },
    typescript = { "prettierd", "rustywind" },
    typescriptreact = { "prettierd", "rustywind" },
    vue = { "prettierd", "rustywind" },
    css = { "prettierd" },
    scss = { "prettierd" },
    less = { "prettierd" },
    html = { "prettierd", "rustywind" },
    json = { "prettierd" },
    jsonc = { "prettierd" },
    yaml = { "prettierd" },
    markdown = { "prettierd" },
    mdx = { "prettierd" },
    graphql = { "prettierd" },
    handlebars = { "prettierd" },
    svelte = { "prettierd", "rustywind" },
    astro = { "prettierd" },
    htmlangular = { "prettierd" },
    c = { "clang-format" },
    cpp = { "clang-format" },
    cs = { "clang-format" },
    java = { "clang-format" },
    cuda = { "clang-format" },
    proto = { "clang-format" },
    php = { "php-cs-fixer" },
    python = { "isort", "black" },
    go = { "gofumpt", "goimports-reviser", "golines" },
    sh = { "beautysh" },
    bash = { "beautysh" },
    zsh = { "beautysh" },
    fish = { "beautysh" },
    csh = { "beautysh" },
    ksh = { "beautysh" },
    tcsh = { "beautysh" },
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
    timeout_ms = 500,
    lsp_fallback = true,
  },
}

return options

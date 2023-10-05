local M = {}

M.treesitter = {
  ensure_installed = {
    --web stuff
    "html",
    "css",
    "scss",
    "javascript",
    "json",
    "typescript",
    "tsx",
    "sql",
    "php",
    "vue",

    --low lvl
    "c",
    "cpp",
    "make",
    "cmake",

    --git stuff
    "git_config",
    "git_rebase",
    "gitattributes",
    "gitignore",

    --other
    "lua",
    "markdown",
    "markdown_inline",
  },
  indent = {
    enable = true,
  },
}

M.mason = {
  ensure_installed = {
    --Commented out Mason packages don't install on android in termux. Instal system-wide with pkg install *name*
    --c/cpp stuff
    -- "clangd", --c/cpp lsp and linter ($pkg install clang)
    -- "clang-format", --c/cpp formatter
    --html/css stuff
    "prettier", --formatter for a lot of different things
    "emmet-language-server", --emmet snippets
    "css-lsp", --css lsp
    "html-lsp", --html lsp
    --javascript/nodejs stuff
    "typescript-language-server", --javascript lsp
    "eslint_d", --javascript linter
    --lua stuff
    -- "lua-language-server", --lua lsp and linter
    -- "stylua", --lua formatter
  },
}

-- git support in nvimtree
M.nvimtree = {
  git = {
    enable = true,
  },

  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
}

return M

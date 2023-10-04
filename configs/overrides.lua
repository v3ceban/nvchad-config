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
    --c/cpp stuff
    -- "clangd", --doesn't work on arm/aarch64
    "clang-format",

    --web stuff
    "emmet-language-server",
    "prettier",
    "css-lsp",
    "typescript-language-server",
    "eslint_d",

    --lua stuff
    "lua-language-server",
    "stylua",
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

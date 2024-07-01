local treesitter = {
  ensure_installed = {
    --web stuff
    "html",
    "css",
    "scss",
    "javascript",
    "json",
    "xml",
    "typescript",
    "tsx",
    "sql",
    "php",
    "ruby",
    "vue",
    "prisma",

    --low lvl
    "c",
    "cpp",
    "make",
    "cmake",
    "meson",
    "ninja",

    --high lvl
    "python",
    "go",
    "godot_resource",
    "gomod",
    "gosum",
    "gowork",

    --git stuff
    "git_config",
    "gitcommit",
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

return treesitter

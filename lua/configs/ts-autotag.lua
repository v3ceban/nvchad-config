local M = {}

M.setup = function()
  require("nvim-ts-autotag").setup()
end

M.ft = {
  "aspnetcorerazor",
  "astro",
  "astro-markdown",
  "blade",
  "django-html",
  "erb",
  "glimmer",
  "gohtml",
  "gohtmltmpl",
  "haml",
  "handlebars",
  "hbs",
  "heex",
  "html",
  "javascript",
  "javascriptreact",
  "jinja",
  "jinja2",
  "jsx",
  "liquid",
  "mdx",
  "php",
  "razor",
  "rescript",
  "svelte",
  "templ",
  "tsx",
  "twig",
  "typescript",
  "typescriptreact",
  "vue",
  "xml",
}

return M

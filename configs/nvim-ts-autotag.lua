local M = {}

M.setup = function()
  require("nvim-ts-autotag").setup()
end

M.ft = {
  "html",
  "javascript",
  "typescript",
  "javascriptreact",
  "typescriptreact",
  "svelte",
  "vue",
  "tsx",
  "jsx",
  "rescript",
  "xml",
  "php",
  "astro",
  "glimmer",
  "handlebars",
  "hbs",
}

return M

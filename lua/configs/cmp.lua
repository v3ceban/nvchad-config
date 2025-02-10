local config = require "nvchad.configs.cmp"
local cmp = require "cmp"

config.mapping["<CR>"] = cmp.mapping.confirm {
  behavior = cmp.ConfirmBehavior.Insert,
  select = false,
}

config.completion = {
  completeopt = "menu,menuone,noselect,popup",
}

config.preselect = cmp.PreselectMode.None

-- local sources = {
--   "render-markdown",
-- }
--
-- for _, source in ipairs(sources) do
--   table.insert(config.sources, {
--     name = source,
--   })
-- end

return config

local opts = function(_, conf)
  conf.defaults.mappings.i = {
    ["<Tab>"] = require("telescope.actions").move_selection_next,
    ["<S-Tab>"] = require("telescope.actions").move_selection_previous,
  }
end

return opts

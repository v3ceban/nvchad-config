local M = {}

M.setup = function()
  vim.g.codeium_no_map_tab = true
  vim.g.codeium_disable_bindings = 1
  vim.keymap.set("i", "<M-l>", function()
    return vim.fn["codeium#Accept"]()
  end, { expr = true, silent = true })
  vim.keymap.set("i", "<M-j>", function()
    return vim.fn["codeium#CycleCompletions"](1)
  end, { expr = true, silent = true })
  vim.keymap.set("i", "<M-k>", function()
    return vim.fn["codeium#CycleCompletions"](-1)
  end, { expr = true, silent = true })
end

return M

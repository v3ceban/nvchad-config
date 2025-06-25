local lint = require "lint"

-- Look for eslint config files in the current directory or parent directories.
-- Useful for monorepos or nested projects.
local eslint_config_cache = {}
local eslint_config_files = {
  "eslint.config.js",
  "eslint.config.mjs",
  "eslint.config.cjs",
  "eslint.config.ts",
  "eslint.config.mts",
  "eslint.config.cts",
  ".eslintrc.js",
  ".eslintrc.cjs",
  ".eslintrc.yaml",
  ".eslintrc.yml",
  ".eslintrc.json",
}

lint.linters._eslint_d = lint.linters.eslint_d

local function find_eslint_config_dir(file_path)
  local dir = vim.fn.fnamemodify(file_path, ":p:h")

  if eslint_config_cache[dir] ~= nil then
    return eslint_config_cache[dir]
  end

  local cwd = vim.fn.getcwd()

  for _, config_file in ipairs(eslint_config_files) do
    local found = vim.fn.findfile(config_file, dir .. ";")
    if found ~= "" then
      local config_dir = vim.fn.fnamemodify(found, ":p:h")
      if config_dir:find(cwd, 1, true) == 1 then
        eslint_config_cache[dir] = config_dir
        return config_dir
      end
    end
  end

  eslint_config_cache[dir] = false
  return false
end

lint.linters.eslint_d = function()
  local file = vim.api.nvim_buf_get_name(0)
  local config_dir = find_eslint_config_dir(file)

  local base_config = lint.linters._eslint_d or {}

  if config_dir then
    ---@diagnostic disable-next-line: param-type-mismatch
    return vim.tbl_extend("force", base_config, { cwd = config_dir })
  end

  return base_config
end

vim.api.nvim_create_autocmd("DirChanged", {
  callback = function()
    eslint_config_cache = {}
  end,
})

lint.linters_by_ft = {
  javascript = { "eslint_d" },
  javascriptreact = { "eslint_d" },
  svelte = { "eslint_d" },
  typescript = { "eslint_d" },
  typescriptreact = { "eslint_d" },
  vue = { "eslint_d" },
}

vim.o.updatetime = 200
vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "CursorHold" }, {
  callback = function()
    lint.try_lint()
  end,
})

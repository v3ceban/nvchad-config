require "nvchad.mappings"

local map = vim.keymap.set

-- General
map({ "n", "i", "v", "t" }, "<C-s>", "<cmd>wa<CR>", { desc = "Save all files" })
map({ "n", "i", "v", "t" }, "<C-q>", "<cmd>qa!<CR>", { desc = "Close all buffers and quit" })
map({ "n", "i", "v", "t" }, "<C-z>", "<nop>")
map({ "n", "v" }, "Q", "q")
map({ "n" }, "<leader>sw", [[:/<C-r><C-w><CR>]], { desc = "Search word", noremap = true })
map(
  { "n" },
  "<leader>sr",
  [[:%s/<C-r><C-w>/<C-r><C-w>/gc<Left><Left><Left>]],
  { desc = "Search replace word", noremap = true }
)
map(
  { "n" },
  "<leader>ss",
  [[:%Subvert/<C-r><C-w>/<C-r><C-w>/gc<Left><Left><Left>]],
  { desc = "Search subvert word", noremap = true }
)
map({ "v" }, "<leader>sw", [["zy:/<C-r>z<CR>]], { desc = "Search selection", noremap = true })
map(
  { "v" },
  "<leader>sr",
  [["zy:%s/<C-r>z/<C-r>z/gc<Left><Left><Left>]],
  { desc = "Search replace selection", noremap = true }
)
map(
  { "v" },
  "<leader>ss",
  [["zy:%Subvert/<C-r>z/<C-r>z/gc<Left><Left><Left>]],
  { desc = "Search subvert selection", noremap = true }
)
map({ "v" }, "J", ":m '>+1<CR>gv=gv", { desc = "Move selection down", silent = true })
map({ "v" }, "K", ":m '<-2<CR>gv=gv", { desc = "Move selection up", silent = true })
map({ "v" }, ">", ">gv", { desc = "Indent selection right", silent = true })
map({ "v" }, "<", "<gv", { desc = "Indent selection left", silent = true })
map({ "n" }, "<C-Up>", "<C-w>+", { desc = "Resize increase window height" })
map({ "n" }, "<C-Down>", "<C-w>-", { desc = "Resize decrease window height" })
map({ "n" }, "<C-Right>", "<C-w>>", { desc = "Resize increase window width" })
map({ "n" }, "<C-Left>", "<C-w><", { desc = "Resize decrease window width" })

-- Tabufline
map("n", "<leader>x", function()
  local count = vim.v.count > 0 and vim.v.count or 1
  for _ = 1, count do
    local success = pcall(function()
      require("nvchad.tabufline").close_buffer()
    end)
    if not success then
      vim.cmd "q"
      break
    end
  end
end, { desc = "close tab or window" })
for i = 1, 9, 1 do
  map("n", string.format("%s<Tab>", i), function()
    if vim.t.bufs and vim.t.bufs[i] then
      vim.api.nvim_set_current_buf(vim.t.bufs[i])
    end
  end, { desc = string.format("Tabufline go to buffer %s", i), silent = true })
end

-- Diagnostics
map({ "n" }, "[d", function()
  vim.diagnostic.goto_prev { border = "rounded" }
end, { desc = "LSP previous diagnostic", silent = true })
map({ "n" }, "]d", function()
  vim.diagnostic.goto_next { border = "rounded" }
end, { desc = "LSP next diagnostic", silent = true })

-- Gitsigns
map({ "n" }, "<leader>gb", "<cmd>lua require('gitsigns').blame_line()<CR>", { desc = "Git blame line" })
map({ "n" }, "[h", "<cmd>lua require('gitsigns').prev_hunk()<CR>", { desc = "Git previous hunk" })
map({ "n" }, "]h", "<cmd>lua require('gitsigns').next_hunk()<CR>", { desc = "Git next hunk" })

-- Git conflict
map({ "n" }, "<leader>gco", "<cmd>GitConflictChooseOurs<CR>", { desc = "Git choose our commit" })
map({ "n" }, "<leader>gct", "<cmd>GitConflictChooseTheirs<CR>", { desc = "Git choose theirs commit" })
map({ "n" }, "<leader>gcn", "<cmd>GitConflictChooseNone<CR>", { desc = "Git choose none commits" })
map({ "n" }, "<leader>gcb", "<cmd>GitConflictChooseBoth<CR>", { desc = "Git choose both commits" })
map({ "n" }, "[c", "<cmd>GitConflictPrevConflict<CR>", { desc = "Git previous conflict" })
map({ "n" }, "]c", "<cmd>GitConflictNextConflict<CR>", { desc = "Git next conflict" })

-- Github Copilot
map(
  { "i" },
  "<M-l>",
  [[copilot#Accept("\\<CR>")]],
  { desc = "Copilot accept suggestion", expr = true, replace_keycodes = false, silent = true }
)
map({ "i" }, "<M-j>", "copilot#Next()", { desc = "Copilot next suggestion", expr = true, silent = true })
map({ "i" }, "<M-k>", "copilot#Previous()", { desc = "Copilot previous suggestion", expr = true, silent = true })

-- Copilot Chat
local CopilotChat = require "CopilotChat"
local CopilotSelection = require "CopilotChat.select"
local CopilotTelescope = require "CopilotChat.integrations.telescope"
local CopilotActions = require "CopilotChat.actions"

local function get_chat_config(selection_type, with_buffer, agent)
  local config = {
    selection = selection_type,
    context = with_buffer and "buffer" or false,
    remember_as_sticky = false,
  }
  if agent then
    config.agent = agent
  end
  return config
end

map({ "n" }, "<leader>cc", function()
  CopilotChat.open(get_chat_config(CopilotSelection.buffer, true))
end, { desc = "Copilot open chat" })
map({ "v" }, "<leader>cc", function()
  CopilotChat.open(get_chat_config(CopilotSelection.visual, false))
end, { desc = "Copilot open chat" })

map({ "n" }, "<leader>cr", function()
  CopilotTelescope.pick(CopilotActions.prompt_actions(get_chat_config(CopilotSelection.buffer, true)))
end, { desc = "Copilot run action" })
map({ "v" }, "<leader>cr", function()
  CopilotTelescope.pick(CopilotActions.prompt_actions(get_chat_config(CopilotSelection.visual, false)))
end, { desc = "Copilot run action" })

map({ "n" }, "<leader>cs", function()
  local input = vim.fn.input "Perplexity: "
  if input ~= "" then
    CopilotChat.ask(input, get_chat_config(false, false, "perplexityai"))
  end
end, { desc = "Copilot search with perplexity" })

map({ "n" }, "<leader>gC", function()
  vim.fn.system "git add ."
  vim.cmd "CopilotChatCommit"
end, { desc = "Git commit all changes" })

-- Flash.nvim
map({ "v", "o" }, "n", function()
  require("flash").treesitter()
end, { desc = "Select treesitter node" })

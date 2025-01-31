require "nvchad.mappings"

local map = vim.keymap.set

-- General
map("n", "<leader>x", function()
  local success = pcall(function()
    require("nvchad.tabufline").close_buffer()
  end)
  if not success then
    vim.cmd "q"
  end
end, { desc = "close tab or window" })
map({ "n", "i", "v", "t" }, "<C-s>", "<cmd>wa<CR>", { desc = "Save all files" })
map({ "n", "i", "v", "t" }, "<C-q>", "<cmd>qa!<CR>", { desc = "Close all buffers and quit" })
map({ "n", "i", "v", "t" }, "<C-z>", "<nop>")
map({ "n", "v" }, "Q", "q")
map(
  { "n" },
  "<leader>sr",
  [[:%Subvert/<C-r><C-w>/<C-r><C-w>/gc<Left><Left><Left>]],
  { desc = "Search replace word", noremap = true }
)
map(
  { "v" },
  "<leader>sr",
  [[y:%Subvert/<C-r>"/<C-r>"/gc<Left><Left><Left>]],
  { desc = "Search replace selection", noremap = true }
)
map({ "v" }, "J", ":m '>+1<CR>gv=gv", { desc = "Move selection down", silent = true })
map({ "v" }, "K", ":m '<-2<CR>gv=gv", { desc = "Move selection up", silent = true })
map({ "v" }, ">", ">gv", { desc = "Indent selection right", silent = true })
map({ "v" }, "<", "<gv", { desc = "Indent selection left", silent = true })
map({ "t" }, "<Esc>", "<C-\\><C-N>", { desc = "terminal escape terminal mode" })
map({ "n", "t" }, "<C-Up>", "<C-w>+", { desc = "Resize increase window height" })
map({ "n", "t" }, "<C-Down>", "<C-w>-", { desc = "Resize decrease window height" })
map({ "n", "t" }, "<C-Right>", "<C-w>>", { desc = "Resize increase window width" })
map({ "n", "t" }, "<C-Left>", "<C-w><", { desc = "Resize decrease window width" })
-- Diagnostics
map({ "n" }, "[d", function()
  vim.diagnostic.goto_prev { border = "rounded" }
end, { desc = "LSP Jump to the previous diagnostic", silent = true })
map({ "n" }, "]d", function()
  vim.diagnostic.goto_next { border = "rounded" }
end, { desc = "LSP Jump to the next diagnostic", silent = true })
-- Gitsigns
map({ "n" }, "<leader>gb", "<cmd>lua require('gitsigns').blame_line()<CR>", { desc = "Git Blame line" })
map({ "n" }, "[h", "<cmd>lua require('gitsigns').prev_hunk()<CR>", { desc = "Git Previous hunk" })
map({ "n" }, "]h", "<cmd>lua require('gitsigns').next_hunk()<CR>", { desc = "Git Next hunk" })
-- Git conflict
map({ "n" }, "<leader>gco", "<cmd>GitConflictChooseOurs<CR>", { desc = "Git Choose our commit" })
map({ "n" }, "<leader>gct", "<cmd>GitConflictChooseTheirs<CR>", { desc = "Git Choose theirs commit" })
map({ "n" }, "<leader>gcn", "<cmd>GitConflictChooseNone<CR>", { desc = "Git Choose none commits" })
map({ "n" }, "<leader>gcb", "<cmd>GitConflictChooseBoth<CR>", { desc = "Git Choose both commits" })
map({ "n" }, "<leader>gcj", "<cmd>GitConflictNextConflict<CR>", { desc = "Git Next conflict" })
map({ "n" }, "<leader>gck", "<cmd>GitConflictPrevConflict<CR>", { desc = "Git Previous conflict" })
-- Github Copilot
map(
  { "i" },
  "<M-l>",
  [[copilot#Accept("\\<CR>")]],
  { desc = "Copilot Accept suggestion", expr = true, replace_keycodes = false, silent = true }
)
map({ "i" }, "<M-j>", "copilot#Next()", { desc = "Copilot Next suggestion", expr = true, silent = true })
map({ "i" }, "<M-k>", "copilot#Previous()", { desc = "Copilot Previous suggestion", expr = true, silent = true })
map({ "n" }, "<leader>CD", "<cmd>Copilot disable<CR>", { desc = "Copilot Disable suggestions" })
map({ "n" }, "<leader>CE", "<cmd>Copilot enable<CR>", { desc = "Copilot Enable suggestions" })
map({ "n" }, "<leader>CR", "<cmd>Copilot restart<CR>", { desc = "Copilot Restart plugin" })
map({ "n" }, "<leader>CS", "<cmd>Copilot status<CR>", { desc = "Copilot View status" })
map({ "n", "v" }, "<leader>Cc", "<cmd>CopilotChat<CR>", { desc = "Copilot Open chat" })
map({ "n", "v" }, "<leader>Cd", "<cmd>CopilotChatDocs<CR>", { desc = "Copilot Write documentation" })
map({ "n", "v" }, "<leader>Cf", "<cmd>CopilotChatFix<CR>", { desc = "Copilot Fix bugs" })
map({ "n", "v" }, "<leader>Cg", "<cmd>CopilotChatGrammar<CR>", { desc = "Copilot Fix grammar" })
map({ "n", "v" }, "<leader>Co", "<cmd>CopilotChatOptimize<CR>", { desc = "Copilot Optimize code" })
map({ "n", "v" }, "<leader>Cr", "<cmd>CopilotChatReview<CR>", { desc = "Copilot Review code" })
map({ "n", "v" }, "<leader>Ct", "<cmd>CopilotChatTests<CR>", { desc = "Copilot Generate tests" })
map({ "n", "v" }, "<leader>Cx", "<cmd>CopilotChatExplain<CR>", { desc = "Copilot Explain code" })
map({ "n", "v" }, "<leader>CC", "<cmd>CopilotChatCommit<CR>", { desc = "Copilot Write commit message" })
-- Flash.nvim
map({ "n" }, "<leader>st", function()
  require("flash").treesitter()
end, { desc = "Search select treesitter node" })

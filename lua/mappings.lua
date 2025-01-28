require "nvchad.mappings"

local map = vim.keymap.set

-- General
map("n", "<leader>x", function()
  pcall(function()
    require("nvchad.tabufline").close_buffer()
  end)
end, { desc = "buffer close" })
map({ "n", "i", "v", "t" }, "<C-s>", "<cmd>wa<CR>", { desc = "Save all files" })
map({ "n", "i", "v", "t" }, "<C-q>", "<cmd>qa!<CR>", { desc = "Close all buffers and quit" })
map({ "n", "i", "v", "t" }, "<C-z>", "<nop>")
map({ "n", "v" }, "Q", "q")
map(
  { "n" },
  "<leader>sr",
  [[:%s/<C-r><C-w>/<C-r><C-w>/gc<Left><Left><Left>]],
  { desc = "Search and replace word", noremap = true }
)
map({ "n" }, "<leader>gg", "<cmd>VimBeGood<CR>", { desc = "Get good at vim motions" })
map(
  { "v" },
  "<leader>sr",
  [[y:%s/<C-r>"/<C-r>"/gc<Left><Left><Left>]],
  { desc = "Search and replace selection", noremap = true }
)
map({ "v" }, "J", ":m '>+1<CR>gv=gv", { desc = "Move selection down" })
map({ "v" }, "K", ":m '<-2<CR>gv=gv", { desc = "Move selection up" })
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
map({ "n" }, "<leader>Cc", "<cmd>CopilotChat<CR>", { desc = "Copilot Open chat" })
map({ "n" }, "<leader>Cd", "<cmd>CopilotChatDocs<CR>", { desc = "Copilot Write documentation" })
map({ "v" }, "<leader>Cf", "<cmd>CopilotChatFix<CR>", { desc = "Copilot Fix bugs" })
map({ "v" }, "<leader>Cg", "<cmd>CopilotChatGrammar<CR>", { desc = "Copilot Fix grammar" })
map({ "v" }, "<leader>Co", "<cmd>CopilotChatOptimize<CR>", { desc = "Copilot Optimize code" })
map({ "v" }, "<leader>Cr", "<cmd>CopilotChatReview<CR>", { desc = "Copilot Review code" })
map({ "v" }, "<leader>Ct", "<cmd>CopilotChatTests<CR>", { desc = "Copilot Generate tests" })
map({ "v" }, "<leader>Cx", "<cmd>CopilotChatExplain<CR>", { desc = "Copilot Explain code" })
map({ "n" }, "<leader>CC", "<cmd>CopilotChatCommit<CR>", { desc = "Copilot Write commit message" })

local M = {}

M.general = {
  i = {
    ["<C-s>"] = { "<cmd> wa <CR>", "Save all files" },
    ["<C-q>"] = { "<cmd> qa! <CR>", "Close all buffers and quit" },
    ["<C-w>"] = { "<cmd> q <CR>", "Close current buffer" },
    ["<C-z>"] = { "<nop>" },
  },
  n = {
    ["<C-z>"] = { "<nop>" },
    ["Q"] = { "<nop>" },
    ["<C-s>"] = { "<cmd> wa <CR>", "Save all files" },
    ["<C-q>"] = { "<cmd> qa! <CR>", "Close all buffers and quit" },
    ["<leader>sr"] = { [[:%s/<C-r><C-w>/<C-r><C-w>/gc<Left><Left><Left>]], "Search and replace word" },
    ["<leader>sw"] = { [[:/<C-r><C-w><CR>]], "Search word" },
    ["<leader>sh"] = { [[:split<CR><C-w>j]], "Horizontal split" },
    ["<leader>sv"] = { [[:vsplit<CR><C-w>l]], "Vertical split" },
  },
  v = {
    ["J"] = { ":m '>+1<CR>gv=gv", "Move selection down" },
    ["K"] = { ":m '<-2<CR>gv=gv", "Move selection up" },
    ["<C-z>"] = { "<nop>" },
    ["Q"] = { "<nop>" },
  },
  t = {
    ["<C-z>"] = { "<nop>" },
    ["<C-s>"] = { "<cmd> wa <CR>", "Save all files" },
    ["<C-q>"] = { "<cmd> qa! <CR>", "Close all buffers and quit" },
  },
}

M.games = {
  n = {
    ["<leader>gg"] = { "<cmd>VimBeGood<CR>", "VimBeGood" },
  },
}

M.telescope = {
  n = {
    ["<leader>ma"] = { "<cmd> Telescope marks <CR>", "Telescope bookmarks" },
  },
}

M.copilot = {
  i = {
    ["<M-l>"] = {
      'copilot#Accept("\\<CR>")',
      opts = { expr = true, replace_keycodes = false, silent = true },
      "Copilot autocomplete",
    },
    ["<M-j>"] = { "copilot#Next()", opts = { expr = true, silent = true }, "Copilot next suggestion" },
    ["<M-k>"] = { "copilot#Previous()", opts = { expr = true, silent = true }, "Copilot previous suggestion" },
  },
  n = {
    ["<leader>CD"] = { "<cmd>Copilot disable<CR>", "Copilot disable" },
    ["<leader>CE"] = { "<cmd>Copilot enable<CR>", "Copilot enable" },
    ["<leader>CR"] = { "<cmd>Copilot restart<CR>", "Copilot restart" },
    ["<leader>CS"] = { "<cmd>Copilot status<CR>", "Copilot status" },
    ["<leader>Cc"] = { "<cmd>CopilotChat<CR>", "Copilot chat" },
    ["<leader>Cd"] = { "<cmd>CopilotChatDocs<CR>", "Write documentation" },
    ["<leader>Cf"] = { "<cmd>CopilotChatFix<CR>", "Fix bugs" },
    ["<leader>Cg"] = { "<cmd>CopilotChatGrammar<CR>", "Fix grammar" },
    ["<leader>Co"] = { "<cmd>CopilotChatOptimize<CR>", "Optimize code" },
    ["<leader>Cr"] = { "<cmd>CopilotChatReview<CR>", "Review code" },
    ["<leader>Ct"] = { "<cmd>CopilotChatTests<CR>", "Generate tests" },
    ["<leader>Cx"] = { "<cmd>CopilotChatExplain<CR>", "Explain code" },
    ["<leader>CC"] = { "<cmd>CopilotChatCommit<CR>", "Write commit message" },
  },
}

return M

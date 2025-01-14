local wk = require "which-key"

wk.add {
  {
    mode = { "n", "v" },
    { "<leader>Cc", "<cmd>CopilotChat<CR>",         desc = "Copilot chat" },
    { "<leader>Cd", "<cmd>CopilotChatDocs<CR>",     desc = "Write documentation" },
    { "<leader>Cf", "<cmd>CopilotChatFix<CR>",      desc = "Fix bugs" },
    { "<leader>Cg", "<cmd>CopilotChatGrammar<CR>",  desc = "Fix grammar" },
    { "<leader>Co", "<cmd>CopilotChatOptimize<CR>", desc = "Optimize code" },
    { "<leader>Cr", "<cmd>CopilotChatReview<CR>",   desc = "Review code" },
    { "<leader>Ct", "<cmd>CopilotChatTests<CR>",    desc = "Generate tests" },
    { "<leader>Cx", "<cmd>CopilotChatExplain<CR>",  desc = "Explain code" },
    { "<leader>CC", "<cmd>CopilotChatCommit<CR>",   desc = "Write commit message" },
  },
  {
    mode = { "n", "i" },
    { "<M-a>", "<cmd>AvanteToggle<CR>",      desc = "avante: toggle" },
    { "<M-c>", "<cmd>CopilotChatToggle<CR>", desc = "Toggle copilot chat" },
  },
}

local opts = {
  icons = {
    mappings = false,
  },
}

return opts

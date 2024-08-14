local wk = require "which-key"

wk.add {
  {
    mode = { "n", "v" },
    { "<leader>CD", "<cmd>Copilot disable<CR>",                      desc = "Copilot disable" },
    { "<leader>CE", "<cmd>Copilot enable<CR>",                       desc = "Copilot enable" },
    { "<leader>CR", "<cmd>Copilot restart<CR>",                      desc = "Copilot restart" },
    { "<leader>CS", "<cmd>Copilot status<CR>",                       desc = "Copilot status" },
    { "<leader>Ca", "<cmd>ChatGPTRun add_tests<CR>",                 desc = "Add tests" },
    { "<leader>Cd", "<cmd>ChatGPTRun docstring<CR>",                 desc = "Docstring" },
    { "<leader>Ce", "<cmd>ChatGPTEditWithInstruction<CR>",           desc = "Edit with instruction" },
    { "<leader>Cf", "<cmd>ChatGPTRun fix_bugs<CR>",                  desc = "Fix bugs" },
    { "<leader>Cg", "<cmd>ChatGPTRun grammar_correction<CR>",        desc = "Grammar correction" },
    { "<leader>Ck", "<cmd>ChatGPTRun keywords<CR>",                  desc = "Keywords" },
    { "<leader>Cl", "<cmd>ChatGPTRun code_readability_analysis<CR>", desc = "Code readability analysis" },
    { "<leader>Co", "<cmd>ChatGPTRun optimize_code<CR>",             desc = "Optimize code" },
    { "<leader>Cs", "<cmd>ChatGPTRun summarize<CR>",                 desc = "Summarize" },
    { "<leader>Ct", "<cmd>ChatGPTRun translate<CR>",                 desc = "Translate" },
    { "<leader>Cw", "<cmd>ChatGPTRun complete_code<CR>",             desc = "Complete code" },
    { "<leader>Cx", "<cmd>ChatGPTRun explain_code<CR>",              desc = "Explain code" },
  },
  { "<leader>Cc", "<cmd>ChatGPT<CR>", desc = "ChatGPT" },
}

local opts = {
  icons = {
    mappings = false,
  },
}

return opts

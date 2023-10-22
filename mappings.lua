local M = {}

M.general = {
  i = {
    ["<C-s>"] = { "<cmd> wa <CR>", "Save all files" },
  },
  n = {
    [";"] = { ":", "Enter command mode", opts = { nowait = true } },
    ['"'] = { "<nop>" },
    ["'"] = { "<nop>" },
    ["<C-s>"] = { "<cmd> wa <CR>", "Save all files" },
    ["<C-q>"] = { "<cmd> qa <CR>", "Quit everything" },
    ["<leader>s"] = { [[:%s/<C-r><C-w>/<C-r><C-w>/gc<Left><Left><Left>]], "Search and replace" },
  },
  v = {
    [";"] = { ":", "Enter command mode", opts = { nowait = true } },
    ["J"] = { ":m '>+1<CR>gv=gv", "Move selection down" },
    ["K"] = { ":m '<-2<CR>gv=gv", "Move selection up" },
  },
}

M.chatgpt = {
  plugin = true,
  n = {
    ["<leader>Cc"] = { "<cmd>ChatGPT<CR>", "ChatGPT" },
    ["<leader>Ce"] = { "<cmd>ChatGPTEditWithInstruction<CR>", "Edit with instruction" },
    ["<leader>Cg"] = { "<cmd>ChatGPTRun grammar_correction<CR>", "Grammar Correction" },
    ["<leader>Ct"] = { "<cmd>ChatGPTRun translate<CR>", "Translate" },
    ["<leader>Ck"] = { "<cmd>ChatGPTRun keywords<CR>", "Keywords" },
    ["<leader>Cd"] = { "<cmd>ChatGPTRun docstring<CR>", "Docstring" },
    ["<leader>Ca"] = { "<cmd>ChatGPTRun add_tests<CR>", "Add Tests" },
    ["<leader>Co"] = { "<cmd>ChatGPTRun optimize_code<CR>", "Optimize Code" },
    ["<leader>Cs"] = { "<cmd>ChatGPTRun summarize<CR>", "Summarize" },
    ["<leader>Cf"] = { "<cmd>ChatGPTRun fix_bugs<CR>", "Fix Bugs" },
    ["<leader>Cx"] = { "<cmd>ChatGPTRun explain_code<CR>", "Explain Code" },
    ["<leader>Cr"] = { "<cmd>ChatGPTRun roxygen_edit<CR>", "Roxygen Edit" },
    ["<leader>Cl"] = { "<cmd>ChatGPTRun code_readability_analysis<CR>", "Code Readability Analysis" },
  },
}

M.markdown_preview = {
  n = {
    ["<leader>Mr"] = { "<cmd>MarkdownPreview<CR>", "Run Preview" },
    ["<leader>Ms"] = { "<cmd>MarkdownPreviewStop<CR>", "Stop Preview" },
  },
}

M.vimbegood = {
  n = {
    ["<leader>gg"] = { "<cmd>VimBeGood<CR>", "Get Good" },
  },
}

M.telescope = {
  n = {
    ["<leader>ma"] = { "<nop>" },
  },
}

return M

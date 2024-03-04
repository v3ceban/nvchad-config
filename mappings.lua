local M = {}

M.general = {
  i = {
    ["<C-s>"] = { "<cmd> wa <CR>", "Save all files" },
    ["<C-q>"] = { "<cmd> qa! <CR>", "Close all buffers and quit" },
    ["<C-w>"] = { "<cmd> q <CR>", "Close current buffer" },
    ["<C-z>"] = { "<nop>" },
  },
  n = {
    [";"] = { ":", "Enter command mode", opts = { nowait = true } },
    ['"'] = { "<nop>" },
    ["'"] = { "<nop>" },
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
    [";"] = { ":", "Enter command mode", opts = { nowait = true } },
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

M.chatgpt = {
  plugin = true,
  n = {
    ["<leader>Cc"] = { "<cmd>ChatGPT<CR>", "ChatGPT" },
    ["<leader>Ce"] = { "<cmd>ChatGPTEditWithInstruction<CR>", "Edit with instruction" },
    ["<leader>Cg"] = { "<cmd>ChatGPTRun grammar_correction<CR>", "Grammar correction" },
    ["<leader>Ct"] = { "<cmd>ChatGPTRun translate<CR>", "Translate" },
    ["<leader>Ck"] = { "<cmd>ChatGPTRun keywords<CR>", "Keywords" },
    ["<leader>Cd"] = { "<cmd>ChatGPTRun docstring<CR>", "Docstring" },
    ["<leader>Ca"] = { "<cmd>ChatGPTRun add_tests<CR>", "Add Tests" },
    ["<leader>Co"] = { "<cmd>ChatGPTRun optimize_code<CR>", "Optimize code" },
    ["<leader>Cs"] = { "<cmd>ChatGPTRun summarize<CR>", "Summarize" },
    ["<leader>Cf"] = { "<cmd>ChatGPTRun fix_bugs<CR>", "Fix bugs" },
    ["<leader>Cx"] = { "<cmd>ChatGPTRun explain_code<CR>", "Explain code" },
    ["<leader>Cw"] = { "<cmd>ChatGPTRun complete_code<CR>", "Complete code" },
    ["<leader>Cl"] = { "<cmd>ChatGPTRun code_readability_analysis<CR>", "Code readability analysis" },
  },
}

M.codeium = {
  plugin = true,
  n = {
    ["<leader>CD"] = { "<cmd>Codeium Disable<CR>", "Disable Codeium" },
    ["<leader>CE"] = { "<cmd>Codeium Enable<CR>", "Enable Codeium" },
  },
  i = {
    ["<M-l>"] = { "<cmd>lua require('codeium').accept()<CR>", "Accept suggestion" },
    ["<M-j>"] = { "<cmd>lua require('codeium').cycle()<CR>", "Next suggestion" },
    ["<M-k>"] = { "<cmd>lua require('codeium').cycle(-1)<CR>", "Previous suggestion" },
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

return M

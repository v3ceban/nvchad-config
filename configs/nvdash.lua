local M = {
  load_on_startup = true,
  header = {
    "███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗",
    "████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║",
    "██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║",
    "██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║",
    "██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║",
    "╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝",
  },
  buttons = {
    { "󰉋  Open Files", "Spc e", "NvimTreeFocus" },
    { "  Bookmarks", "Spc m a", "Telescope marks" },
    { "󰈚  Recent Files", "Spc f o", "Telescope oldfiles" },
    { "  Find File", "Spc f f", "Telescope find_files" },
    { "󰈭  Find Word", "Spc f w", "Telescope live_grep" },
    { "  Mappings", "Spc c h", "NvCheatsheet" },
    { "  Vim Be Good", "Spc g g", "VimBeGood" },
  },
}

return M

local options = { 
  backup         = false,         -- creates backup file
  clipboard      = "unnamedplus", -- allows neovuim to access the system clipboard
  fileencoding   = "utf-8",       -- the encoding written to a file
  hlsearch       = true,          -- highlights all matches on search pattern
  ignorecase     = true,          -- ignores case for search patterns
  mouse          = "a",           -- allows for mouse usage
  -- mouse          = "",            -- allows for mouse usage
  pumheight      = 10,            -- pop up menu height
  showtabline    = 0,             -- always show tabs
  smartcase      = true,          -- smart case
  smartindent    = true,          -- makes indent smarter
  splitbelow     = true,          -- forces horizontal splits to go below current window
  splitright     = true,          -- forces vertical splits to go right of the current window
  swapfile       = false,         -- creates a swapfile
  termguicolors  = true,          -- sets term gui colors
  timeoutlen     = 1000,          -- time to wait in ms for mapped sequence to be complete
  undofile       = true,          -- enable persistent undo
  updatetime     = 300,           -- faster completion (4000ms default)
  expandtab      = true,          -- converts tabs to spaces
  shiftwidth     = 2,             -- number of spaces inserted for each indentation
  tabstop        = 2,             -- number of spaces for a tab
  cursorline     = true,          -- highlight the current line
  number         = true,          -- set numbered line
  relativenumber = true,          -- sets relative numbered lines
  numberwidth    = 4,             -- set number column width
  wrap           = true,          -- sets wrap
  signcolumn     = "yes",         -- always show the sign column, otherwise it would shift the text each time
  scrolloff      = 8,             -- always show 8 lines when available below and above currentline
  sidescroll     = 8,             -- same as scrolloff but for side of screen
  colorcolumn    = "80"          -- adds column on side screen
}

vim.opt.shortmess:append "c"

for k, v in pairs(options) do
    vim.opt[k] = v
end

vim.g.mapleader = ' ' -- sets the leader key to space

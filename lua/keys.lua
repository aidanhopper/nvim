local map = vim.keymap.set
opts      = {silent = true, noremap = true}

-- colon remap
map('n', ';', ':')
map('v', ';', ':')

-- telescope mappings
map('n', '<leader>ff',     ':Telescope find_files theme=ivy<CR>',           opts)
map('n', '<C-w>v',         ':vs<CR>:Telescope find_files theme=ivy<CR>',    opts)
map('n', '<C-w>s',         ':split<CR>:Telescope find_files theme=ivy<CR>', opts)
map('n', '<leader>fg',     ':Telescope live_grep theme=ivy<CR>',  opts)

-- better window navigation
map('n', '<C-h>', '<C-w>h', opts)
map('n', '<C-j>', '<C-w>j', opts)
map('n', '<C-k>', '<C-w>k', opts)
map('n', '<C-l>', '<C-w>l', opts)

-- resize with arrows
map('n', '<C-Up>',    ':resize -2<CR>',          opts)
map('n', '<C-Down>',  ':resize +2<CR>',          opts)
map('n', '<C-Left>',  ':vertical resize +2<CR>', opts)
map('n', '<C-right>', ':vertical resize -2<CR>', opts)

-- buffer control
map('n', '<Tab>', ':bn<CR>',   opts)
map('n', '<S-Tab>', ':bp<CR>', opts)
map('n', '<leader>bd', ':BdAllButCurrent<CR>', opts)

-- tmux terminal
map('n', '<C-w>ts', ':Termv<CR>', opts)
map('n', '<C-w>tv', ':Termh<CR>', opts)

-- nvim tree
map('n', '<C-n>', ':NvimTreeFocus<CR>',      opts)
map('n', '<leader>n', ':NvimTreeToggle<CR>', opts)

-- format
map('n', '<leader>r', ':Neoformat<CR>', opts)

-- save bind
map('n', '<leader>w', ':w<CR>', opts)

local builtin = require('telescope.builtin')
require('telescope').setup{
  defaults = {
    -- ...
  },
  pickers = {
    find_files = {theme = "ivy"},
    diagnostics = {theme = "ivy"},
    buffers = {theme = "ivy"},

  },
  extensions = {
    -- ...
  }
}
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<leader>pd', builtin.diagnostics, {})

vim.keymap.set('n', '<C-p>', builtin.git_files, {})
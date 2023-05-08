require("bufferline").setup {
  options = {
    --mode = "tabs",
    show_close_icon = false,
    always_show_bufferline = false,
    separator_style = {"", ""},
    indicator = {
      style = 'none'
    },
    buffer_close_icon = '',
    close_icon = '',
    offsets = {
      { filetype = 'NvimTree', text = 'Files' },
    }
  },
}

vim.keymap.set("n", "<leader>l", ":bn<CR>", {silent = true})
vim.keymap.set("n", "<leader>h", ":bp<CR>", {silent = true})
--vim.keymap.set("n", "<leader><Tab>", ":tabnew<CR>", {silent = true})


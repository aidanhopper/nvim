require("bufferline").setup {
  options = {
    mode = "tabs",
    show_close_icon = false,
    always_show_bufferline = false,
    separator_style = {"", ""},
    indicator = {
      style = 'none'
    },
    buffer_close_icon = '',
    close_icon = '',
  },
}

vim.keymap.set("n", "<Tab>", ":tabnext<CR>", {silent = true})
vim.keymap.set("n", "<S-Tab>", ":tabprev<CR>", {silent = true})
vim.keymap.set("n", "<leader><Tab>", ":tabnew<CR>", {silent = true})


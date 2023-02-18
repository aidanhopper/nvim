require("zen-mode").setup {
  window = {
    width = 80,
    height = 20,
    options = {
      number = true,
      relativenumber = true,
    }
  },
}

vim.api.nvim_set_hl(0, "ZenBg", { ctermbg = 0 })
vim.keymap.set("n", "<leader>zz", ":ZenMode<CR>", {silent = true})

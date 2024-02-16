return {
  "shaunsingh/nord.nvim",
  config = function()
    vim.g.nord_disable_background = true
    vim.g.nord_borders = true
    vim.g.nord_contrast = true
    require("nord").set()
  end,
}

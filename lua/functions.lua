-- opens neovim config in new buffer
local opts = {}
vim.api.nvim_create_user_command('Openconfig',
function()
  vim.api.nvim_command("call system('tmux neww \"cd $HOME/.config/nvim && nvim init.lua\"')")
end, opts
)

-- opens terminal in tmux pane
vim.api.nvim_create_user_command('Termv',
function ()
  local dir = vim.fn.getcwd()
  local cmd = string.format("call system('tmux splitw -v -p25 \\; send-keys -l \"cd %s\" \\; send-keys \"C-m\" \"C-l\"')", dir)
  vim.api.nvim_command(cmd)
end, opts
)

vim.api.nvim_create_user_command('Termh',
function ()
  local dir = vim.fn.getcwd()
  local cmd = string.format("call system('tmux splitw -h -p25 \\; send-keys -l \"cd %s\" \\; send-keys \"C-m\" \"C-l\"')", dir)
  vim.api.nvim_command(cmd)
end, opts
)

-- close all buffers except current one
vim.api.nvim_create_user_command('BdAllButCurrent',
function ()
  local cmd = "%bd | e " .. vim.api.nvim_buf_get_name(0) .. " | bd#"
  vim.api.nvim_command(cmd)
end, opts
)

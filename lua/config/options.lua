-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Setup the terminal to use powershell if on Windows
local maybe_use_powershell = function()
  local os = vim.uv.os_uname().sysname
  if os == "Windows_NT" then
    LazyVim.terminal.setup("pwsh")
  end
end

maybe_use_powershell()

-- Keeps text cursor 16 lines away from the top or bottom of the screen at all times
vim.opt.scrolloff = 16

-- Setup GUI Font for Neovide (or any GUI editor using neovim for that matter)
vim.o.guifont = "JetBrainsMono Nerd Font Mono:h14"

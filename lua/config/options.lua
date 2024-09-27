-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Optionally setup the terminal to use
-- This sets `vim.o.shell` and does some additional configuration for:
-- * pwsh
-- * powershell
LazyVim.terminal.setup("pwsh")

-- Keeps text cursor 16 lines away from the top or bottom of the screen at all times
vim.opt.scrolloff = 16

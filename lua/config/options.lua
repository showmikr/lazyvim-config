-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Optionally setup the terminal to use
-- This sets `vim.o.shell` and does some additional configuration for:
-- * pwsh
-- * powershell
LazyVim.terminal.setup("pwsh")

-- force all new files created in vim to have unix style newlines "\n"
vim.opt.fileformat = "unix"
vim.opt.fileformats = "unix,dos" -- try to read files with unix style newlines first then windows style

-- Keeps text cursor 16 lines away from the top or bottom of the screen at all times
vim.opt.scrolloff = 16

-- Setup GUI Font for Neovide (or any GUI editor using neovim for that matter)
vim.o.guifont = "JetBrainsMono Nerd Font Mono:h14"

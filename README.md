# 💤 LazyVim

A starter template for [LazyVim](https://github.com/LazyVim/LazyVim).
Refer to the [documentation](https://lazyvim.github.io/installation) to get started.

# Customizations

## Conditional telescope search if using git repo
If you open Neovim from inside a git repo, then when you press `leader<space>`, which opens the telescope file picker, I've programmed telescope to use it's `git_files` search command instead of the default `find_files` search. `git_files` search respects the `.gitignore` of your git repo whereas `find_files` doesn't when fuzzy finding files. The mechanism behind this conditional search is in the [telescope config](./lua/plugins/telescope.lua)


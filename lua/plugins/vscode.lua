-- early return if we're not running in vscode
if not vim.g.vscode then
  return {}
else
  local vscode = require("vscode")

  -- replace `:bd` command
  vim.api.nvim_create_user_command("BD", function()
    vscode.action("workbench.action.closeActiveEditor")
  end, {})
  -- Create an abbreviation to map :bd to :BD
  vim.cmd("cnoreabbrev bd BD")

  return {
    {
      "LazyVim/LazyVim",
      keys = {
        -- open fuzzy search based on keyword
        {
          "<leader>/",
          function()
            vscode.action("search.action.openNewEditor")
          end,
          desc = "Grep the codebase on keyword search",
        },
        -- Search files Using VSCode's default search mechanism
        {
          "<leader><space>",
          function()
            vscode.action("workbench.action.quickOpen")
          end,
          desc = "Fuzzy Find Files",
        },
        -- Delete Current Buffer
        {
          "<leader>bd",
          function()
            vscode.action("workbench.action.closeActiveEditor")
          end,
          desc = "Delete Active Tab",
        },
        -- Next tab
        {
          "<S-l>",
          function()
            vscode.action("workbench.action.nextEditor")
          end,
          desc = "Next Tab",
        },
        -- Previous tab
        {
          "<S-h>",
          function()
            vscode.action("workbench.action.previousEditor")
          end,
          desc = "Previous Tab",
        },
      },
    },
    {},
  }
end

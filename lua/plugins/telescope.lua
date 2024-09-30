-- We cache the results of "git rev-parse"
-- Process creation is expensive in Windows, so this reduces latency
local is_cwd_git_repo = nil

return {
  "nvim-telescope/telescope.nvim",
  opts = {
    pickers = {
      git_files = {
        show_untracked = true,
      },
    },
  },
  keys = {
    {
      "<leader><space>",
      function()
        local utils = require("telescope.utils")

        local function is_git_repo()
          local _, ret, _ = utils.get_os_command_output({ "git", "rev-parse", "--is-inside-work-tree" })
          return ret == 0
        end

        if is_cwd_git_repo == nil then
          is_cwd_git_repo = is_git_repo()
        end

        if is_cwd_git_repo then
          vim.cmd([[Telescope git_files]])
        else
          vim.cmd([[Telescope find_files]])
        end
      end,
      desc = "Find files (Root Dir, git if possible)",
    },
  },
}

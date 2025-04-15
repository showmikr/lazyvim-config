return {
  -- -- sonokai color scheme commented out until I plan to use it again
  -- {
  --   "sainnhe/sonokai",
  --   lazy = false,
  --   priority = 1000,
  --   config = function()
  --     vim.g.sonokai_style = "shusia"
  --     vim.g.sonokai_enable_italic = true
  --     vim.g.sonokai_better_performance = 1
  --   end,
  -- },
  {
    "olimorris/onedarkpro.nvim",
    priority = 1000, -- Ensure it loads first
  },
  {
    "LazyVim/LazyVim",
    opts = {
      -- colorscheme = "sonokai",
      colorscheme = "onedark",
    },
  },
}

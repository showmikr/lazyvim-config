return {
  "nvim-telescope/telescope.nvim",
  opts = function(_, opts)
    opts.defaults = vim.tbl_deep_extend("force", opts.defaults or {}, {
      file_ignore_patterns = vim.list_extend(opts.defaults.file_ignore_patterns or {}, {
        "%.git/",
        "%.jj/", -- ignore jj (jujutsu) directory
      }),
    })
    return opts
  end,
}

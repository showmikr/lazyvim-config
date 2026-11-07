-- Hide the inline diagnostic messages shown at the end of the line.
-- Underlines, gutter signs and the floating window on hover still work.
return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      diagnostics = {
        virtual_text = false,
      },
    },
  },
}

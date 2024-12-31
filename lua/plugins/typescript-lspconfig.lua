return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        vtsls = {
          settings = {
            typescript = {
              inlayHints = {
                parameterNames = { enabled = "none" },
                parameterTypes = { enabled = false },
                functionLikeReturnTypes = { enabled = false },
              },
            },
          },
        },
      },
    },
  },
}

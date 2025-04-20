-- [[
-- The purpose of this configuration of nvim-treesitter
-- is to ensure that when using Windows, that we default
-- to the `clang` compiler when we need to compile the
-- tree-sitter parser-generator binaries (yes, neovim
-- actually needs us to compile stuff when we load up
-- tree-sitter for the first time). Whatever the default
-- compiler is used on Windows, it silently fails and
-- makes an incorrect binary, hence we manually say
-- "point to clang!" (you also need to have clang installed
-- on your Windows machine - install via Microsoft Visual Studio).
-- When we're not on Windows, we won't do anything and will
-- just use whatever default compiler tree-sitter decides
-- to use, be it `clang` or `gcc` or whatever.
-- ]]
return {
  "nvim-treesitter/nvim-treesitter",
  config = function()
    local os = vim.uv.os_uname().sysname
    if os == "Windows_NT" then
      require("nvim-treesitter.install").compilers = { "clang" }
    end
  end,
}

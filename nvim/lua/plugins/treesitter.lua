return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  dependencies = {
    "nvim-treesitter/nvim-treesitter-textobjects",
  },
  config = function()
    require("nvim-treesitter.config").setup({
      ensure_installed = { "html", "css", "javascript", "lua", "markdown" },
      sync_install = false,
      highlight = { enable = true },
      indent = { enable = true },
    })
  end,
}

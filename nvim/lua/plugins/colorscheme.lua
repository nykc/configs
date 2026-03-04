return {

  -- Catppuccin (Macchiato) — ACTIVE THEME
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
      require("catppuccin").setup({
        flavour = "macchiato",
      })
      vim.cmd("colorscheme catppuccin")
    end,
  },

  -- OneDark (installed, not active)
  {
    "navarasu/onedark.nvim",
    priority = 900,
    config = function()
      -- No load() call here so it stays inactive
      require("onedark").setup({})
    end,
  },

  -- Solarized.nvim (installed, not active)
  {
    "maxmx03/solarized.nvim",
    priority = 900,
    config = function()
      -- No colorscheme call so it stays inactive
      require("solarized").setup({})
    end,
  },

}

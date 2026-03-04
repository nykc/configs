return {
  "mattn/emmet-vim",
  ft = { "html", "css", "javascript", "javascriptreact", "typescriptreact" },
  init = function()
    vim.g.user_emmet_leader_key = ","
    vim.g.emmet_use_treesitter = 0
  end,
}

return {
  "williamboman/mason-lspconfig.nvim",
  dependencies = {
    "williamboman/mason.nvim",
    "neovim/nvim-lspconfig",
  },
  config = function()
    require("mason-lspconfig").setup({
      ensure_installed = {
        "lua_ls",
        "html",
        "cssls",
        "ts_ls",
        "ruby_lsp",
        "pyright",
      },
      automatic_installation = true,
    })

    vim.lsp.config("lua_ls", {
        settings = {
            Lua = {
                runtime = { version = "LuaJIT" },
                workspace = {
                    checkThirdParty = false,
                    library = vim.api.nvim_get_runtime_file("", true),
                },
            },
        },
    })
    vim.lsp.config("html", {})
    vim.lsp.config("cssls", {})
    vim.lsp.config("ts_ls", {})
    vim.lsp.config("ruby_lsp", {})
    vim.lsp.config("pyright", {})

    vim.lsp.enable({
      "lua_ls",
      "html",
      "cssls",
      "ts_ls",
      "ruby_lsp",
      "pyright",
    })
  end,
}

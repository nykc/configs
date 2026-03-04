-- Core settings
require("core.options")
require("core.keymaps")

-- Bootstrap Lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Shim for emmet-vim ts_utils compatibility
package.preload["nvim-treesitter.ts_utils"] = function()
  return {
    get_node_at_cursor = function() return nil end,
  }
end

-- Load Lazy and all plugins in lua/plugins/
require("core.lazy")

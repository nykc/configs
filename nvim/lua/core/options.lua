-- ==================================================== 
-- Core Options 
-- ==================================================== 

local opt = vim.opt

-- ==================================================== 
-- UI / Display
-- ==================================================== 
opt.number = true
opt.relativenumber = false
opt.cursorline = true
opt.termguicolors = true
opt.wrap = false
opt.scrolloff = 999
opt.hlsearch = true

-- ==================================================== 
-- Tabs / Indentation
-- ==================================================== 
opt.tabstop = 4
opt.shiftwidth = 4
opt.softtabstop = 4
opt.expandtab = true
opt.smartindent = true
opt.copyindent = true

-- =================================================== 
-- Search
-- =================================================== 
opt.ignorecase = true
opt.smartcase = true

-- =================================================== 
-- Behavior
-- =================================================== 
opt.showmatch = true
opt.title = true

opt.swapfile = false
opt.backup = false
opt.undofile = true

opt.mouse = "a"
opt.clipboard = "unnamedplus"
opt.spelllang = { "en_us" }
opt.spellsuggest = { 5 }

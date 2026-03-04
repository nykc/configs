-- ====================================================
-- Keymaps
-- ====================================================

-- Leader key
vim.g.mapleader = " "
local map = vim.keymap.set

-- ====================================================
-- Basic File Operations
-- ====================================================

map("n", "<leader>w", ":w<CR>", { desc = "Save File" })
map("n", "<leader>q", ":q<CR>", { desc = "Quit window" })
map("n", "<leader>Q", ":qa<CR>", { desc = "Quit all" })

-- ====================================================
-- Window Navigation (Vim-style)
-- ====================================================

map("n", "<C-h>", "<C-w>h", { desc = "Move to the left window" })
map("n", "<C-j>", "<C-w>j", { desc = "Move to the lower window" })
map("n", "<C-k>", "<C-w>k", { desc = "Move to the upper window" })
map("n", "<C-l>", "<C-w>l", { desc = "Move to the right window" })

-- Split windows quickly
map("n", "<leader>v", ":vsplit<CR>", { desc = "Vertical split" })
map("n", "<leader>s", ":split<CR>", { desc = "Horizontal split" })

-- ====================================================
-- Better Indenting
-- ====================================================

map("v", "<", "<gv", { desc = "Indent left and reselect" })
map("v", ">", ">gv", { desc = "Indent right and reselect" })

-- ====================================================
-- Clear Search Highlight
-- ====================================================

map("n", "<leader>h", ":nohlsearch<CR>", { desc = "Clear search highlight" })

-- ====================================================
-- Move Lines Up/Down (VS Code Style)
-- ====================================================

map("n", "<A-j>", ":m .+1<CR>==", { desc = "Move line down" })
map("n", "<A-k>", ":m .-2<CR>==", { desc = "Move line up" })
map("v", "<A-j>", ":m '>+1<CR>gv=gv", { desc = "Move selection down" })
map("v", "<A-k>", ":m '<-2<CR>gv=gv", { desc = "Move selection up" })

-- ====================================================
-- Toggle Relative Numbering
-- ====================================================

map("n", "<leader>rn", function()
    vim.opt.relativenumber = not vim.opt.relativenumber:get()
end, { desc = "Toggle relative numbers" })

-- ====================================================
-- Quick Escape from Insert Mode
-- ====================================================

map("i", "jk", "<Esc>", { desc = "Exit insert mode" })

-- ====================================================
-- Telescope
-- ====================================================
vim.keymap.set("n", "<leader>ff", function() require("telescope.builtin").find_files() end, { desc = "Find files" })
vim.keymap.set("n", "<leader>fg", function() require("telescope.builtin").live_grep() end,  { desc = "Live grep" })
vim.keymap.set("n", "<leader>fb", function() require("telescope.builtin").buffers() end,    { desc = "Buffers" })
vim.keymap.set("n", "<leader>fh", function() require("telescope.builtin").help_tags() end,  { desc = "Help tags" })

-- ====================================================
-- LSP
-- ====================================================
vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Go to definition" })
vim.keymap.set("n", "gr", vim.lsp.buf.references, { desc = "Find references" })
vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Hover documentation" })
vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { desc = "Rename symbol" })
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Code action" })
vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, { desc = "Show error" })
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "Previous diagnostic" })
vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "Next diagnostic" })

-- ====================================================
-- File Tree
-- ====================================================
vim.keymap.set("n", "<leader>e", function() require("nvim-tree.api").tree.toggle() end, { desc = "Toggle file tree" })

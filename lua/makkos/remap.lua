vim.g.mapleader = " "

-- Open finder
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Clear Search highlights
vim.keymap.set("n", "<leader>cs", vim.cmd.noh)

-- Move lines
vim.keymap.set("n", "<C-j>", ":m+1<CR>", { silent = true})
vim.keymap.set("n", "<C-k>", ":m-2<CR>", { silent = true})

vim.keymap.set("v", "<C-j>", ":m '>+1<CR>gv=gv", { silent = true})
vim.keymap.set("v", "<C-k>", ":m '<-2<CR>gv=gv", { silent = true})

-- Fix Terminal mode exit
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>")

-- Visual Mode
-- Enter block mode
vim.keymap.set("x", "<leader>bs", "<C-V>")

-- Tabs
vim.keymap.set("n", "<leader>nt", vim.cmd.tabnew)

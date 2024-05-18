vim.g.mapleader = " "

-- Open finder
-- vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<leader>pv", ":Neotree dir=%:p:h<CR>")

-- Clear Search highlights
vim.keymap.set("n", "<leader>cs", vim.cmd.noh)
vim.keymap.set("n", "<Esc>", vim.cmd.noh)

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

-- Add Esc option
vim.keymap.set("i", "jj", "<Esc>")

-- Remap gr to telescope
vim.keymap.set("n", "<leader>gr", "<Cmd>Telescope lsp_references<CR>")


-- Navigation changed to ALT+key
-- O has to be fixed
-- vim.keymap.set("n", "<A-h>", "<C-w>h")
-- vim.keymap.set("n", "<A-j>", "<C-w>j")
-- vim.keymap.set("n", "<A-k>", "<C-w>k")
-- vim.keymap.set("n", "<A-l>", "<C-w>l")
-- 
vim.keymap.set("n", "<A-s>", "<C-w>s")
vim.keymap.set("n", "<A-v>", "<C-w>v")
-- 
-- vim.keymap.set("n", "<A-;>", "<C-w>o")

-- REMPAS FOR SMART-SPLITS
--

vim.keymap.set("i", "<C-H>", "<C-w>")

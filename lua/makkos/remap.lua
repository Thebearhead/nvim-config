vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("n", "<C-j>", ":m+1<CR>", { silent = true})
vim.keymap.set("n", "<C-k>", ":m-2<CR>", { silent = true})

vim.keymap.set("v", "<C-j>", ":m '>+1<CR>gv=gv", { silent = true})
vim.keymap.set("v", "<C-k>", ":m '<-2<CR>gv=gv", { silent = true})

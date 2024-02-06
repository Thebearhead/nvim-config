vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undofile = true

-- Get Homedir(Windows uses "USERPROFILE", not "HOME")
local home = os.getenv("HOME")
if not home then
    home = os.getenv("USERPROFILE")
end

vim.opt.undodir = home .. "/.nvim/undodir"

vim.opt.hlsearch = false
vim.opt.incsearch = false

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 5

----------------------
----------------------
----------------------

local function vim_opt_toggle( opt , on , off , name )
    local message = name
    if vim.opt[opt]:get() == off then
        vim.opt[opt] = on
        message = message.." Enabled"
    else
        vim.opt[opt] = off
        message = message.." Disabled"
    end
end


vim.keymap.set("n", "<leader>rn" , function()
    vim_opt_toggle("relativenumber", true, false, "Relative line numbers")
end)

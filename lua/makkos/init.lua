require("makkos.remap")
require("makkos.lazy")
require("makkos.set")


vim.api.nvim_create_autocmd("TextYankPost", {
    desc = "Highlight what you Yank",
    group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
    callback = function()
        vim.highlight.on_yank()
    end,
})

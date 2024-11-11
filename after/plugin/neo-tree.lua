vim.keymap.set("n", "<leader>pg", "<Cmd>Neotree git_status<CR>")
require("neo-tree").setup({
    window = {
        position = "float",
        width = 20,
        popup = {
            size = {
                height = "80%",
                width = "80%"
            }
        },
        mappings = {
            ["<Esc>"] = "close_window",
            ["ga"] = "git_add_file"
        }
    },
    filesystem = {
        hijack_netrw_behavior = "open_default",
        bind_to_cwd = false,
    },
    buffers = {
        bind_to_cwd = true
    },
    git_status = {
        window = {
            position = "float",
            width = 20,
            mappings = {
                ["A"]  = "git_add_all",
                ["gu"] = "git_unstage_file",
                ["ga"] = "git_add_file",
                ["gr"] = "git_revert_file",
                ["gc"] = "git_commit",
                ["gp"] = "git_push",
                ["gg"] = "git_commit_and_push",
                ["o"] = { "show_help", nowait=false, config = { title = "Order by", prefix_key = "o" }},
                ["oc"] = { "order_by_created", nowait = false },
                ["od"] = { "order_by_diagnostics", nowait = false },
                ["om"] = { "order_by_modified", nowait = false },
                ["on"] = { "order_by_name", nowait = false },
                ["os"] = { "order_by_size", nowait = false },
                ["ot"] = { "order_by_type", nowait = false },
            }
        }
    }
})

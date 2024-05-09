local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	{
		'nvim-telescope/telescope.nvim', tag = '0.1.5',
		-- or                              , branch = '0.1.x',
		dependencies = { 'nvim-lua/plenary.nvim' }
	},
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' }
    },
    {
        "ThePrimeagen/harpoon",
        branch = "harpoon2",
        dependencies = { "nvim-lua/plenary.nvim" }
    },
    {
        "folke/which-key.nvim",
        event = "VeryLazy",
        init = function()
            vim.o.timeout = true
            vim.o.timeoutlen = 300
        end,
    },
   --{
   --    "epwalsh/obsidian.nvim",
   --    version = "*",
   --    lazy = true,
   --    ft = "markdown",
   --    dependencies = { "nvim-lua/plenary.nvim" },
   --},
    { 'mrjones2014/smart-splits.nvim' },
	{ "rose-pine/neovim", name = "rose-pine" },
	{ "nvim-treesitter/nvim-treesitter", name = "treesitter"},
	{ "mbbill/undotree" , name = "undotree"},
	{ "tpope/vim-fugitive" , name = "vim-fugitive"},
	{'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},
	{'neovim/nvim-lspconfig'},
	{'hrsh7th/cmp-nvim-lsp'},
	{'hrsh7th/nvim-cmp'},
	{'L3MON4D3/LuaSnip'},
	{'williamboman/mason.nvim'},
	{'williamboman/mason-lspconfig.nvim'},
	{'saadparwaiz1/cmp_luasnip'},
	{'rafamadriz/friendly-snippets'},
    { "lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {} },
    { 'ziglang/zig.vim' },
    { 'mrjones2014/smart-splits.nvim', lazy = false},
}, opts)

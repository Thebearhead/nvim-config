require'nvim-treesitter.configs'.setup {
  ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "python", "javascript", "markdown", "markdown_inline" },
  sync_install = true,
  highlight = {
	  enable = true,
	  additional_vim_regex_highlighting = false,
  },
}

local lsp_zero = require("lsp-zero")

lsp_zero.on_attach(function(client, bufnr)
  lsp_zero.default_keymaps({buffer = bufnr})
  local opts = {buffer = bufnr, remap = false}

  vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)

end)

require('mason').setup({})
require('mason-lspconfig').setup({
  ensure_installed = {
      "pyright",
      "tsserver",
      "eslint",
      "html",
      "lua_ls",
  },
  handlers = {
    lsp_zero.default_setup,
    lua_ls = function ()
        local lspconfig = require("lspconfig")
        lspconfig.lua_ls.setup{
            settings = {
                Lua = {
                    diagnostics = {
                        globals = { "vim" }
                    }
                }
            }
        }
    end
  },
})

local cmp = require('cmp')
local cmp_action = require('lsp-zero').cmp_action()

require("luasnip.loaders.from_vscode").lazy_load()
require("luasnip.loaders.from_lua").lazy_load({paths = "./luasnippets"})


cmp.setup({
  mapping = cmp.mapping.preset.insert({
    -- `Enter` key to confirm completion
    ['<CR>'] = cmp.mapping.confirm({select = false}),

    -- Ctrl+Space to trigger completion menu
    ['<C-Space>'] = cmp.mapping.complete(),

    -- Navigate between snippet placeholder
    ['<C-f>'] = cmp_action.luasnip_jump_forward(),
    ['<C-b>'] = cmp_action.luasnip_jump_backward(),

    -- Scroll up and down in the completion documentation
    ['<C-u>'] = cmp.mapping.scroll_docs(-4),
    ['<C-d>'] = cmp.mapping.scroll_docs(4),
  }),
  snippet = {
      expand = function(args)
          require("luasnip").lsp_expand(args.body)
      end,
  },
  sources = cmp.config.sources({
      { name = "nvim_lsp" },
      { name = "luasnip" },
  }, {
      { name = "buffer" },
  })
})

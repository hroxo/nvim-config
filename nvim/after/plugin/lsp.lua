-- Mason: instala os servidores LSP facilmente
require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = { "lua_ls", "pyright", "clangd" },
})

-- nvim-cmp para autocompletar
local cmp = require'cmp'
cmp.setup({
  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body)
    end,
  },
  mapping = cmp.mapping.preset.insert({
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<CR>'] = cmp.mapping.confirm({ select = true }),
  }),
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
    { name = 'luasnip' },
  }, {
    { name = 'buffer' },
  })
})

-- capabilities para integração LSP + cmp
local capabilities = require('cmp_nvim_lsp').default_capabilities()

-- Configuração de cada LSP
local lspconfig = require("lspconfig")

-- Exemplo: Lua
lspconfig.lua_ls.setup({
  capabilities = capabilities,
  settings = {
    Lua = {
      diagnostics = { globals = { "vim" } },
    }
  }
})

-- Exemplo: Python
lspconfig.pyright.setup({
  capabilities = capabilities,
})

lspconfig.ts_ls.setup({
  capabilities = capabilities,
  filetypes = { "typescript", "typescriptreact", "javascript", "javascriptreact" },
})

-- C / C++
lspconfig.clangd.setup({
  capabilities = capabilities,
  cmd = { "clangd", "--background-index" }, -- inicia clangd com indexação
  filetypes = { "c", "cpp", "objc", "objcpp" },
})


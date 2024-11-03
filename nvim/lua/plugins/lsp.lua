local M = {}

local start = function()
  local nvim_lsp = require('lspconfig')

  -- General configuration
  vim.diagnostic.config({ virtual_text = false })

  -- Mappings.
  vim.api.nvim_set_keymap('n', '<space>e', '<cmd>lua vim.diagnostic.open_float()<CR>', { noremap=true, silent=true })

  -- Initialize LSP Servers
  local servers = {
    tsserver = {},
    rust_analyzer = {
      assist = {
        importGranularity = "module",
        importPrefix = "by_self",
      },
      cargo = {
        loadOutDirsFromCheck = true
      },
      procMacro = {
        enable = true
      },
    },
    gopls = {},
  }

  --INFO: Ruby LSP server (solargraph) is going to be set manually due to some versioning issue with Mason
  nvim_lsp["solargraph"].setup {
    on_attach = require("mylsphelpers").on_attach,
    settings = {}
  }

  -- Setup neovim lua configuration
  -- require("neodev").setup()

  -- nvim-cmp supports additional completion capabilities, so broadcast that to servers
  local capabilities = vim.lsp.protocol.make_client_capabilities()
  capabilities = require("cmp_nvim_lsp").default_capabilities(capabilities)

--  -- Ensure the servers above are installed
--  local mason_lspconfig = require("mason-lspconfig")
--
--  mason_lspconfig.setup({
--    ensure_installed = vim.tbl_keys(servers),
--  })
--
--  mason_lspconfig.setup_handlers({
--    function(server_name)
--      require("lspconfig")[server_name].setup({
--        capabilities = capabilities,
--        on_attach = require("mylsphelpers").on_attach,
--        settings = servers[server_name],
--      })
--    end,
--  })

  -- Setup nvim-cmp.
  local cmp = require('cmp')
  local types = require("cmp.types")

  local function deprioritize_snippet(entry1, entry2)
    if entry1:get_kind() == types.lsp.CompletionItemKind.Snippet then return false end
    if entry2:get_kind() == types.lsp.CompletionItemKind.Snippet then return true end
  end

  cmp.setup({
    snippet = {
      -- REQUIRED - you must specify a snippet engine
      expand = function(args)
        -- vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
        -- require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
        require('snippy').expand_snippet(args.body) -- For `snippy` users.
        -- vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
      end,
    },
    sorting = {
      priority_weight = 2,
      comparators = {
        deprioritize_snippet,
        -- the rest of the comparators are pretty much the defaults
        cmp.config.compare.offset,
        cmp.config.compare.exact,
        cmp.config.compare.scopes,
        cmp.config.compare.score,
        cmp.config.compare.recently_used,
        cmp.config.compare.locality,
        cmp.config.compare.kind,
        cmp.config.compare.sort_text,
        cmp.config.compare.length,
        cmp.config.compare.order,
      },
    },
    mapping = cmp.mapping.preset.insert({
      ['<C-b>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), { 'i', 'c' }),
      ['<C-f>'] = cmp.mapping(cmp.mapping.scroll_docs(4), { 'i', 'c' }),
      ['<C-Space>'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),
      ['<C-y>'] = cmp.config.disable, -- Specify `cmp.config.disable` if you want to remove the default `<C-y>` mapping.
      ['<C-e>'] = cmp.mapping({
        i = cmp.mapping.abort(),
        c = cmp.mapping.close(),
      }),
      ['<Tab>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
    }),
    sources = cmp.config.sources({
      { name = 'nvim_lsp' },
      -- { name = 'vsnip' }, -- For vsnip users.
      -- { name = 'luasnip' }, -- For luasnip users.
      -- { name = 'ultisnips' }, -- For ultisnips users.
      { name = 'snippy' }, -- For snippy users.
    },
    {
      { name = 'buffer' },
      {
        name = 'path',
        option = {
          trailing_slash = false
        }
      },
    })
  })

  -- Use buffer source for `/` (if you enabled `native_menu`, this won't work anymore).
  cmp.setup.cmdline('/', {
    mapping = cmp.mapping.preset.cmdline({
      ['<Tab>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
    }),
    sources = {
      { name = 'buffer' }
    }
  })

  -- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
  cmp.setup.cmdline(':', {
    mapping = cmp.mapping.preset.cmdline({
      ['<Tab>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
    }),
    sources = cmp.config.sources({
      { name = 'path' }
    }, {
      { name = 'cmdline' }
    })
  })

  --====== Snippy (snippets)
  require('snippy').setup({
    mappings = {
      is = {
        ['<Tab>'] = 'expand_or_advance',
        ['<S-Tab>'] = 'previous',
      },
      nx = {
        ['<leader>x'] = 'cut_text',
      },
    },
  })
end

M.start = start

return M

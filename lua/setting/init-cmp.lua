local cmp = require'cmp'


cmp.setup {
  -- 设置引擎
  snippet = {
    expand = function(args)
      -- vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
      require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
      -- require('snippy').expand_snippet(args.body) -- For `snippy` users.
      -- vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
    end,
  },

  -- 来源
  sources = cmp.config.sources({
    -- { name = 'vsnip' }, -- For vsnip users.
    -- { name = 'ultisnips' }, -- For ultisnips users.
    -- { name = 'snippy' }, -- For snippy users.
    {name = 'luasnip' }, -- For luasnip users.
    {name = "nvim_lsp" },
    {name = "nvim_lua" },
    {name = "path" },
    {name = "spell" },
    {name = "tmux" },
    {name = "orgmode" },
    {name = "buffer" },
    {name = "latex_symbols" },
    { name = 'look',
            keyword_length = 2,
            option = {
                convert_case = true,
                loud = true,
                dict = '/usr/share/dict/words'
            }
        }
  }),

  window = {
    -- completion = cmp.config.window.bordered(),
    -- documentation = cmp.config.window.bordered(),
  },

  -- key manping
  mapping = cmp.mapping.preset.insert({
      ['<C-b>'] = cmp.mapping.scroll_docs(-4),
      ['<C-f>'] = cmp.mapping.scroll_docs(4),
      ['<C-Space>'] = cmp.mapping.complete(),
      ['<C-e>'] = cmp.mapping.abort(),
      -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
      ['<CR>'] = cmp.mapping.confirm({ select = true }),
  }),

  -- sorting = {
  --   comparators = {
  --       cmp.config.compare.offset,
  --       cmp.config.compare.exact,
  --       cmp.config.compare.score,
  --       --require "cmp-under-comparator".under,
  --       cmp.config.compare.kind,
  --       cmp.config.compare.sort_text,
  --       cmp.config.compare.length,
  --       cmp.config.compare.order,
  --   },
  -- },
}


-- Use buffer source for `/` and `?` (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline({ '/', '?' }, {
  mapping = cmp.mapping.preset.cmdline(),
  sources = {
    { name = 'buffer' }
  }
})


-- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline(':', {
  mapping = cmp.mapping.preset.cmdline(),
  sources = cmp.config.sources({
    { name = 'path' }
  }, {
    { name = 'cmdline' }
  })
})


-- 代码补全提示的图标
local lspkind = require('lspkind')
cmp.setup {
  formatting = {
    format = lspkind.cmp_format({
      mode = 'symbol_text', -- 图标 文字 同时显示
      maxwidth = 50, -- prevent the popup from showing more than provided characters (e.g 50 will not show more than 50 characters)
      -- The function below will be called before any actual modifications from lspkind
      -- so that you can provide more controls on popup customization. (See [#30](https://github.com/onsails/lspkind-nvim/pull/30))
      -- before = function (entry, vim_item)
      --   return vim_item
      -- end
    })
  }
}

-- 括号自动配对
--local cmp_autopairs = require('nvim-autopairs.completion.cmp')
--cmp.event:on( 'confirm_done', cmp_autopairs.on_confirm_done({  map_char = { tex = '' } }))
--cmp_autopairs.lisp[#cmp_autopairs.lisp+1] = "racket"

return {
  {
    'hrsh7th/nvim-cmp',
    dependencies = {
      'onsails/lspkind-nvim',
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-path',
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-nvim-lua',
      'hrsh7th/cmp-vsnip',
      'hrsh7th/vim-vsnip',
    },
    config = function()
      local cmp = require('cmp')
      local lspkind = require('lspkind')

      cmp.setup {
        snippet = {
          expand = function(args)
            vim.fn["vsnip#anonymous"](args.body)
          end,
        },
        window = {
          completion = cmp.config.window.bordered(),
          documentation = cmp.config.window.bordered(),
        },
        mapping = {
          ["<C-e>"] = cmp.mapping.abort(),
          ['<CR>'] = cmp.mapping.confirm {
            behavior = cmp.ConfirmBehavior.Insert,
            select = true,
          },
          ["<c-space>"] = cmp.mapping.complete(),
          ["<C-n>"] = function(fallback)
            if cmp.visible() then
              cmp.select_next_item()
            else
              fallback()
            end
          end,
          ["<C-p>"] = function(fallback)
            if cmp.visible() then
              cmp.select_prev_item()
            else
              fallback()
            end
          end,
        },
        sources = {
          { name = "nvim_lsp", keyword_length = 2, max_item_count = 10 },
          { name = "path", max_item_count = 10},
          { name = "buffer", keyword_length = 3 },
          { name = "nvim_lua", max_item_count = 10 },
          { name = "vsnip", max_item_count = 10},

        },
        preselect = cmp.PreselectMode.None,
        formatting = {
          fields = {
            "abbr",
            'kind',
            'menu',
          },
          expandable_indicator = true,
          format = lspkind.cmp_format {
            with_text = true,
            menu = {
              nvim_lsp = "[LSP]",
              path = "[path]",
              buffer = "[buf]",
            }
          }
        },
        experimental = {
          native_menu = false,
          ghost_text = true,
        }
      }
    end
  }
}

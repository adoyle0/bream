return {
  -- 'hrsh7th/cmp-path',
  -- { 'hrsh7th/cmp-nvim-lsp', opts = {} },
  -- 'saadparwaiz1/cmp_luasnip',
  {
    'saghen/blink.cmp',
    event = 'VimEnter',
    version = '1.*', -- keep this pinned for rust fuzzy finder
    dependencies = {
      -- Snippet Engine
      {
        'L3MON4D3/LuaSnip',
        version = '2.*', -- keep this pinned for rust fuzzy finder
        build = 'make install_jsregexp',
        dependencies = {
          {
            'rafamadriz/friendly-snippets',
            config = function()
              require('luasnip.loaders.from_vscode').lazy_load()
            end,
          },
        },
        opts = {},
      },
      'folke/lazydev.nvim',
    },
    --- @module 'blink.cmp'
    --- @type blink.cmp.Config
    opts = {
      keymap = {
        -- 'default' (recommended) for mappings similar to built-in completions
        --   <c-y> to accept ([y]es) the completion.
        --    This will auto-import if your LSP supports it.
        --    This will expand snippets if the LSP sent a snippet.
        -- 'super-tab' for tab to accept
        -- 'enter' for enter to accept
        -- 'none' for no mappings
        --
        -- For an understanding of why the 'default' preset is recommended,
        -- you will need to read `:help ins-completion`
        --
        -- No, but seriously. Please read `:help ins-completion`, it is really good!
        --
        -- All presets have the following mappings:
        -- <tab>/<s-tab>: move to right/left of your snippet expansion
        -- <c-space>: Open menu or open docs if already open
        -- <c-n>/<c-p> or <up>/<down>: Select next/previous item
        -- <c-e>: Hide menu
        -- <c-k>: Toggle signature help
        --
        -- See :h blink-cmp-config-keymap for defining your own keymap
        preset = 'default',

        -- For more advanced Luasnip keymaps (e.g. selecting choice nodes, expansion) see:
        --    https://github.com/L3MON4D3/LuaSnip?tab=readme-ov-file#keymaps
      },

      appearance = {
        -- 'mono' (default) for 'Nerd Font Mono' or 'normal' for 'Nerd Font'
        -- Adjusts spacing to ensure icons are aligned
        nerd_font_variant = 'mono',
      },

      completion = {
        documentation = { auto_show = true, auto_show_delay_ms = 500 },
        -- menu = {
        --   draw = {
        --     components = {
        --       -- customize the drawing of kind icons
        --       kind_icon = {
        --         text = function(ctx)
        --           -- default kind icon
        --           local icon = ctx.kind_icon
        --           -- if LSP source, check for color derived from documentation
        --           if ctx.item.source_name == 'LSP' then
        --             local color_item = require('nvim-highlight-colors').format(ctx.item.documentation, { kind = ctx.kind })
        --             if color_item and color_item.abbr ~= '' then
        --               icon = color_item.abbr
        --             end
        --           end
        --           return icon .. ctx.icon_gap
        --         end,
        --         highlight = function(ctx)
        --           -- default highlight group
        --           local highlight = 'BlinkCmpKind' .. ctx.kind
        --           -- if LSP source, check for color derived from documentation
        --           if ctx.item.source_name == 'LSP' then
        --             local color_item = require('nvim-highlight-colors').format(ctx.item.documentation, { kind = ctx.kind })
        --             if color_item and color_item.abbr_hl_group then
        --               highlight = color_item.abbr_hl_group
        --             end
        --           end
        --           return highlight
        --         end,
        --       },
        --     },
        --   },
        -- },
      },

      sources = {
        default = { 'lsp', 'path', 'snippets' },
      },

      snippets = { preset = 'luasnip' },

      fuzzy = { implementation = 'prefer_rust' },

      -- Shows a signature help window while you type arguments for a function
      signature = { enabled = true },
    },
  },
}

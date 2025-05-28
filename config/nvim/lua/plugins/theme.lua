return {
  {
    'folke/todo-comments.nvim',
    event = 'VimEnter',
    dependencies = { 'nvim-lua/plenary.nvim' },
    opts = { signs = false },
  },
  {
    'lukas-reineke/indent-blankline.nvim',
    main = 'ibl',
    ---@module "ibl"
    ---@type ibl.config
    opts = {},
  },
  {
    'RedsXDD/neopywal.nvim',
    name = 'neopywal',
    lazy = false,
    cond = os.execute 'test -f ~/.cache/wal/colors-wal.vim' == 0,
    priority = 1000,
    opts = {
      transparent_background = true,
      dim_inactive = true,
    },
    config = function()
      vim.cmd.colorscheme 'neopywal'
    end,
  },
  {
    'nvim-lualine/lualine.nvim',
    opts = {
      options = {
        icons_enabled = false,
        theme = 'neopywal',
        component_separators = '|',
        section_separators = '',
      },
    },
  },
}

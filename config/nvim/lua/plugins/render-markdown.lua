return {
  'MeanderingProgrammer/render-markdown.nvim',
  dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.nvim' }, -- if you use the mini.nvim suite
  ---@module 'render-markdown'
  ---@type render.md.UserConfig
  opts = {
    bullet = {
      left_pad = 2,
    },
    completions = {
      blink = {
        enabled = true,
      },
    },
    heading = {
      border = true,
    },
    indent = {
      enabled = true,
    },
    paragraph = {
      indent = 2,
    },
  },
}

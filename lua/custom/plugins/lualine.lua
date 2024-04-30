return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    require('lualine').setup {
      options = {
        theme = 'catppuccin', -- "gruvbox-material"
        globalstatus = true,
      },
      sections = {
        lualine_c = {
          {
            'filename',
            path = 1,
            shorting_target = 10,
          },
        },
      },
    }
  end,
}

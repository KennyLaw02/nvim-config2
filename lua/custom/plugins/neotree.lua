return {
  'nvim-neo-tree/neo-tree.nvim',
  branch = 'v3.x',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
    -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
  },
  config = function()
    require('neo-tree').setup {
      close_if_last_window = true,
      source_selector = {
        winbar = true,
      },
      window = { -- see https://github.com/MunifTanjim/nui.nvim/tree/main/lua/nui/popup for
        -- possible options. These can also be functions that return these options.
        position = 'left', -- left, right, top, bottom, float, current
        width = 25, -- applies to left and right positions
        height = 15, -- applies to top and bottom positions
        auto_expand_width = true, -- expand the window when file exceeds the window width. does not work with position = "float"
        popup = { -- settings that apply to float position only
          size = {
            height = '80%',
            width = '50%',
          },
          position = '50%', -- 50% means center it
          -- you can also specify border here, if you want a different setting from
          -- the global popup_border_style.
        },
      },
    }
  end,
}

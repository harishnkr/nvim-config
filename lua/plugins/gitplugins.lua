return { -- Adds git releated signs to the gutter, as well as utilities for managing changes
'tpope/vim-fugitive',
  'tpope/vim-rhubarb',


    'lewis6991/gitsigns.nvim',
    opts = {
      -- See `:help gitsigns.txt`
      signs = {
        add = { text = '+' },
        change = { text = '~' },
        delete = { text = '_' },
        topdelete = { text = '‾' },
        changedelete = { text = '~' },
      },
    },
  }

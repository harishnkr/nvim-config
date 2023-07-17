return { -- Git related plugins
  'tpope/vim-fugitive',
  'tpope/vim-rhubarb',

  -- Adds git releated signs to the gutter, as well as utilities for managing changes

  {
    'lewis6991/gitsigns.nvim',
    opts = {
      -- See `:help gitsigns.txt`
      -- signs = {
      --   add = { text = '+' },
      --   change = { text = '~' },
      --   delete = { text = '_' },
      --   topdelete = { text = '‾' },
      --   changedelete = { text = '~' },
      -- },
      on_attach = function(buffer)
        local gs = package.loaded.gitsigns

        local function nmap( l, r, desc)
          vim.keymap.set('n', l, r, { buffer = buffer, desc = desc })
        end
        nmap( "]h", gs.next_hunk, "Next Hunk")
        nmap( "[h", gs.prev_hunk, "Prev Hunk")
        nmap( "<leader>gp", gs.preview_hunk, "Preview Hunk")
      end,
    },
  }
}

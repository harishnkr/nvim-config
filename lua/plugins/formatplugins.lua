return {
  -- Detect tabstop and shiftwidth automatically
  'tpope/vim-sleuth',
  -- Add indentation guides even on blank lines
  {
    'lukas-reineke/indent-blankline.nvim',
    main = "ibl",
    -- Enable `lukas-reineke/indent-blankline.nvim`
    -- See `:help indent_blankline.txt`
    opts = {
      indent = { char = "┊" },
      whitespace = {
        remove_blankline_trail = false,
      }
    }
  },
  -- "gc" to comment visual regions/lines
  { 'numToStr/Comment.nvim', opts = {} },
}

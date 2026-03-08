-- Useful plugin to show you pending keybinds.
return {
  {
    "folke/which-key.nvim",
    opts = {}
  },

  {
    "folke/trouble.nvim",
    opts = {},
    cmd = "Trouble",
    keys = require("plugins.editor.trouble"),
  },
  {
    'nvim-treesitter/nvim-treesitter',
    dependencies = { 'nvim-treesitter/nvim-treesitter-textobjects' },
    build = ':TSUpdate',
    lazy = false,
    main = "nvim-treesitter",
    opts = require("plugins.editor.treesitter"),
  },
}

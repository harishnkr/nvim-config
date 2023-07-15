-- Unless you are still migrating, remove the deprecated commands from v1.x
return {{
  "nvim-neo-tree/neo-tree.nvim",
  cmd = "Neotree",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
  },
  keys = {
    {"<leader>n","<cmd>Neotree toggle<cr>",desc = "Toggle Neotree"},
  },


},}

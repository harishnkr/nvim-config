-- Unless you are still migrating, remove the deprecated commands from v1.x
return {
  "nvim-neo-tree/neo-tree.nvim",
  enabled = false,
  cmd = "Neotree",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
  },
  keys = {
    {"<leader>n","<cmd>Neotree toggle<cr>",desc ="Neotree"}
  },
  opts = {
    toggle = true,
    filesystem = {
      follow_current_file = {
      enabled = true},
      filtered_items = {
        hide_dotfiles = false,
      }
    }
  }
}

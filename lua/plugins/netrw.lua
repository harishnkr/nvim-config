-- Unless you are still migrating, remove the deprecated commands from v1.x
return {
  "prichrd/netrw.nvim",
  -- enabled = false,
  opts = {
    icons = {
      symlink = '', -- Symlink icon (directory and file)
      directory = '', -- Directory icon
      file = '', -- File icon
    },
    use_devicons = true, -- Uses nvim-web-devicons if true, otherwise use the file icon specified above
    mappings = {
    }, -- Custom key mappings
  }
}

vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

require ("lazyplugins")
require ("options")
require ("mappings")


require ("pluginoptions.filetree")
require ("pluginoptions.telescope")
require ("pluginoptions.treesitter")
require ("pluginoptions.lsp")
-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et


-- [[ Basic Keymaps ]]

-- Keymaps for better default experience
-- See `:help vim.keymap.set()`
-- vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })


-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = "Go to previous diagnostic message" })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = "Go to next diagnostic message" })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = "Open floating diagnostic message" })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = "Open diagnostics list" })

-- Switch between buffers
vim.keymap.set('n', '<Tab>', vim.cmd.bn, { noremap = true, silent = true })
vim.keymap.set('n', '<S-Tab>', vim.cmd.bp, { noremap = true, silent = true })


-- control a select all
vim.keymap.set('n', '<M-a>', 'ggVG', { silent = true })

-- netrw keymaps
vim.keymap.set('n', '<leader>n', '<cmd>Lex<cr>', { noremap = true, silent = true,  desc = "Toggle Netrw"  })

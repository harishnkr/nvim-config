return {
  -- Fuzzy Finder (files, lsp, etc)
  {
    'nvim-telescope/telescope.nvim',
    branch = '0.1.x',
    dependencies = { 'nvim-lua/plenary.nvim' },

    config = function(_, opts)
      -- Enable telescope fzf native, if installed
      local telescope = require("telescope")
      telescope.setup(opts)

      telescope.load_extension("fzf")
      local b = require('telescope.builtin')
      -- See `:help telescope.builtin`
      vim.keymap.set('n', '<leader>?', b.oldfiles, { desc = '[?] Find recently opened files' })
      vim.keymap.set('n', '<leader><space>', b.buffers, { desc = '[ ] Find existing buffers' })
      vim.keymap.set('n', '<leader>/',
        function()
          b.current_buffer_fuzzy_find(require('telescope.themes').get_dropdown { winblend = 10, previewer = false, })
        end,
        { desc = '[/] Fuzzily search in current buffer' })
      vim.keymap.set('n', '<leader>sf', b.find_files, { desc = '[S]earch [F]iles' })
      vim.keymap.set('n', '<leader>sh', b.help_tags, { desc = '[S]earch [H]elp' })
      vim.keymap.set('n', '<leader>sw', b.grep_string, { desc = '[S]earch current [W]ord' })
      vim.keymap.set('n', '<leader>sg', b.live_grep, { desc = '[S]earch by [G]rep' })
      vim.keymap.set('n', '<leader>sd', b.diagnostics, { desc = '[S]earch [D]iagnostics' })
      vim.keymap.set('n', '<leader>sk', b.keymaps, { desc = '[S]earch [K]eymaps' })
    end,


  },

  -- Fuzzy Finder Algorithm which requires local dependencies to be built.
  -- Only load if `make` is available. Make sure you have the system
  -- requirements installed.
  {
    'nvim-telescope/telescope-fzf-native.nvim',
    -- NOTE: If you are having trouble with this installation,
    --       refer to the README for telescope-fzf-native for more instructions.
    build = 'make',
    cond = function()
      return vim.fn.executable 'make' == 1
    end,
  }, }

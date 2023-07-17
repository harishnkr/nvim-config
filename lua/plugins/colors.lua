return { { -- Theme inspired by Atom
	'rose-pine/neovim',
	config = function()
		vim.cmd.colorscheme 'tokyonight'
	end,
},
	{'norcalli/nvim-colorizer.lua',opts ={}},
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		opts = {
			style = "moon",
		},
	} }

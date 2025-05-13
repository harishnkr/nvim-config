return { -- LSP Configuration & Plugins
	'neovim/nvim-lspconfig',
	event = "BufReadPre",
	dependencies = {
		-- Automatically install LSPs to stdpath for neovim
		{ 'williamboman/mason.nvim', config = true },
		'williamboman/mason-lspconfig.nvim',

		-- Useful status updates for LSP
		-- NOTE: `opts = {}` is the same as calling `require('fidget').setup({})`
		{ 'j-hui/fidget.nvim',       tag = 'legacy', opts = {} },

		-- Additional lua configuration, makes nvim stuff amazing!
		{ 'folke/neodev.nvim',       opts = {} },
	},

	config = function(_, _)
		local lsputils = require('plugins.lsp.utils')
		local servers = lsputils.servers
		lsputils.setup()
		lsputils.format()
		-- Enable the following language servers
		--  Feel free to add/remove any LSPs that you want here. They will automatically be installed.
		--
		--  Add any additional override configuration in the following tables. They will be passed to
		--  the `settings` field of the server config. You must look up that documentation yourself.
		-- Setup neovim lua configuration
		require('neodev').setup()

		-- nvim-cmp supports additional completion capabilities, so broadcast that to servers

		-- Setup mason so it can manage external tooling
		-- require('mason').setup()

		-- Ensure the servers above are installed
		local mason_lspconfig = require 'mason-lspconfig'

		local lspconfig = require('lspconfig')
		mason_lspconfig.setup {
			ensure_installed = vim.tbl_keys(servers),
		}

		-- mason_lspconfig.setup_handlers {
		-- 	function(server_name)
		-- 		lspconfig[server_name].setup {
		-- 			capabilities = lsputils.capabilities,
		-- 			on_attach = lsputils.on_attach,
		-- 			settings = servers[server_name],
		-- 		}
		-- 	end,
		-- }
	end,

}

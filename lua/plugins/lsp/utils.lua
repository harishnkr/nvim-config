local M = {}

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

M.capabilities = require("cmp_nvim_lsp").default_capabilities(capabilities)


function M.setup(_, bufnr)
	local imap = function(keys, func, desc)
		if desc then
			desc = 'LSP: ' .. desc
		end

		vim.keymap.set('i', keys, func, { buffer = bufnr, desc = desc })
	end

	local nmap = function(keys, func, desc)
		if desc then
			desc = 'LSP: ' .. desc
		end

		vim.keymap.set('n', keys, func, { buffer = bufnr, desc = desc })
	end

	local lb = vim.lsp.buf
	local tb = require('telescope.builtin')
	nmap('<leader>rn', lb.rename, '[R]e[n]ame')
	nmap('<leader>ca', lb.code_action, '[C]ode [A]ction')

	nmap('gd', lb.definition, '[G]oto [D]efinition')
	nmap('gr', tb.lsp_references, '[G]oto [R]eferences')
	nmap('gI', lb.implementation, '[G]oto [I]mplementation')
	nmap('<leader>D', lb.type_definition, 'Type [D]efinition')
	nmap('<leader>ds', tb.lsp_document_symbols, '[D]ocument [S]ymbols')
	nmap('<leader>ws', tb.lsp_dynamic_workspace_symbols, '[W]orkspace [S]ymbols')

	-- See `:help K` for why this keymap
	nmap('K', lb.hover, 'Hover Documentation')
	nmap('<C-k>', lb.signature_help, 'Signature Documentation')
	imap('<C-k>', lb.signature_help, 'Signature Documentation')

	-- Lesser used LSP functionality
	nmap('gD', lb.declaration, '[G]oto [D]eclaration')
	nmap('<leader>wa', lb.add_workspace_folder, '[W]orkspace [A]dd Folder')
	nmap('<leader>wr', lb.remove_workspace_folder, '[W]orkspace [R]emove Folder')
	nmap('<leader>wl', function()
		print(vim.inspect(lb.list_workspace_folders()))
	end, '[W]orkspace [L]ist Folders')

	nmap('<leader>f', lb.format, 'Format current buffer with LSP')
	-- Create a command `:Format` local to the LSP buffer
	-- vim.api.nvim_buf_create_user_command(bufnr, 'Format', function(_)
	--   vim.lsp.buf.format()
	-- end, { desc = 'Format current buffer with LSP' })
end

-- Create a command `:Format` local to the LSP buffer
function M.format()
	local bufnr = vim.api.nvim_get_current_buf()
	vim.api.nvim_buf_create_user_command(bufnr, 'Format', function(_)
		vim.lsp.buf.format()
	end, { desc = 'Format current buffer with LSP' })
end

M.servers = {
	clangd = {},
	-- ccls
	-- gopls = {},
	-- pyright = {},
	-- rust_analyzer = {},
	-- tsserver = {},

	lua_ls = {
		Lua = {
			workspace = { checkThirdParty = false },
			telemetry = { enable = false },
		},
	},
}



M.on_attach = function(_, bufnr)
	-- Enable completion triggered by <c-x><c-o>
	vim.api.nvim_buf_set_option(bufnr, "omnifunc", "v:lua.vim.lsp.omnifunc")
end

return M

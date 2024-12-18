return {

	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"lua_ls",
					"clangd",
					"pylsp",
					"gopls",
					"templ"
				}
			})
		end
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local lspconfig = require('lspconfig')
			lspconfig.lua_ls.setup({ settings = { diagnostics = { globals = { "vim" } } } })
			lspconfig.clangd.setup({})
			lspconfig.gopls.setup({})
			lspconfig.templ.setup({})
			lspconfig.pylsp.setup({
				settings = {
					pylsp = {
						plugins = {
							pycodestyle = {
								ignore = { "E501" },
							},
						},
					},
				},
			})
			vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
			vim.keymap.set('i', 'C-k', vim.lsp.buf.hover, {})
		end
	}

}

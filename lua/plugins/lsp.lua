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
					"templ",
					"htmx"
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
			lspconfig.htmx.setup({})
			lspconfig.templ.setup({})
			lspconfig.pylsp.setup({
				settings = {
					pylsp = {
						plugins = {
							pyflakes = { enabled = false },               -- Disable pyflakes
							flake8 = { enabled = true, ignore = { "F403", "F405" } }, -- Use flake8 with ignored rules
							pycodestyle = { enabled = true, ignore = { "E501" } }, -- Code style warnings
							mccabe = { enabled = true },                  -- Complexity warnings
						},
					},
				},
			})
			vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
			vim.diagnostic.config({
				virtual_text = true, -- Shows inline errors
				signs = true,
				underline = true,
				update_in_insert = true, -- Change to true if you want live updates
			})
		end
	}

}

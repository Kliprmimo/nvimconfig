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
	ensure_installed = {"lua_ls",
					"clangd",
					"pylsp"
			}
	})
	end
	},
	{
	"neovim/nvim-lspconfig",
	config = function()
		local lspconfig = require('lspconfig')
		lspconfig.lua_ls.setup({})
		lspconfig.clangd.setup({})
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
		end
	}

	}


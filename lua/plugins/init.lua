return {
	{
		'nvim-telescope/telescope.nvim',
		tag = '0.1.6',
		-- or                            , branch = '0.1.x',
		dependencies = { { 'nvim-lua/plenary.nvim' } }
	},
	{
		'rose-pine/neovim',
		as = 'rose-pine',
		config = function()
			vim.cmd('colorscheme rose-pine')
		end
	},
	'nvim-treesitter/nvim-treesitter',
	'nvim-treesitter/playground',
	'ThePrimeagen/harpoon',
	'mbbill/undotree',
	'tpope/vim-fugitive',
	'eandrju/cellular-automaton.nvim'
}

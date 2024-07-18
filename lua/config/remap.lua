vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("n", "<leader>ut", vim.cmd.UndotreeToggle)

-- Keybinding to toggle inline diagnostics (ii)
vim.api.nvim_set_keymap('n', '<Leader>ii', ':lua vim.cmd("DiagnosticsToggleVirtualText")<CR>',
	{ noremap = true, silent = true })

-- Keybinding to toggle diagnostics (id)
vim.api.nvim_set_keymap('n', '<Leader>id', ':lua vim.cmd("DiagnosticsToggle")<CR>', { noremap = true, silent = true })

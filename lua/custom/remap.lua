-- Jump to beginning of line and enter insert mode
vim.keymap.set('n', '<C-0>', '^i', { noremap = true, desc = 'Jump to beginning of line and enter insert mode' })
vim.keymap.set('n', '<leader>o', vim.cmd.Ex, { desc = '[O]pen file nav' })

return {}

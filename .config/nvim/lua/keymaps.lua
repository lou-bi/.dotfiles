-- Buffer navigation
vim.keymap.set('n', '<leader>bn', ':bnext<CR>', { desc = 'Next buffer' })
vim.keymap.set('n', '<leader>bp', ':bprevious<CR>', { desc = 'Previous buffer' })

-- Move lines up/down
vim.keymap.set('n', '<A-Down>', ':m .+1<CR>==', { desc = 'Move line down' })
vim.keymap.set('n', '<A-Up>', ':m .-2<CR>==', { desc = 'Move line up' })

-- Quick config editing
vim.keymap.set('n', '<leader>rc', ':e ~/.config/nvim/init.lua<CR>', { desc = 'Edit config' })

-- Terminal
vim.keymap.set('t', '<esc><esc>', '<c-\\><c-n>', { desc = 'Return to normal mode inside a terminal' })

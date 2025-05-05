vim.g.mapleader = " " -- Set the leader key to space

vim.keymap.set("n", "<leader>e", vim.cmd.Ex) -- Open the Netrw file explorer

vim.keymap.set("i", "<C-BS>", "<C-w>") -- Delete the preceding word in insert mode

vim.keymap.set('n', '<leader>c', '"+y', { noremap = true }) -- Copy to the system clipboard (normal mode)
vim.keymap.set('n', '<leader>p', '"+p', { noremap = true }) -- Paste from the system clipboard (normal mode)
vim.keymap.set('v', '<leader>c', '"+y', { noremap = true }) -- Copy to the system clipboard (visual mode)
vim.keymap.set('v', '<leader>p', '"+p', { noremap = true }) -- Paste from the system clipboard (visual mode)

vim.keymap.set('n', '<C-s>', ':w<CR>', { noremap = true, silent = true }) -- Control + S save in NORMAL mode
vim.keymap.set('i', '<C-s>', '<Esc>:w<CR>a', { noremap = true, silent = true })-- Control + S save in INSERT mode

vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set("n", "<leader>e", ":Ex<CR>")
keymap.set("n", "<C-h>", "<C-w>h")
keymap.set("n", "<C-l>", "<C-w>l")
keymap.set("n", "<C-j>", "<C-w>j")
keymap.set("n", "<C-k>", "<C-w>k")

keymap.set("v", "<leader>y", '"+y', { noremap = true })
keymap.set("n", "<leader>p", '"+p')

keymap.set("i", "<C-CR>", "<Esc>o")

keymap.set("i", "<C-s>", "<Esc>:w <CR> i")
keymap.set("n", "<C-s>", "<Esc>:w <CR>")

keymap.set("i", "<C-BS>", "<Esc> ciw")

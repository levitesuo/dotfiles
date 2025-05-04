local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fd', function()
  builtin.grep_string({ search = vim.fn.input("Grep > ") })
end, { desc = "Grep find files"} )
--vim.keymap.set('n', '<leader>fg', builtin.git_files { desc = 'Telescope find git files' })


return {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    config = function () 
        local configs = require('nvim-treesitter.configs')

        configs.setup({
            ensure_installed = {'lua', 'vim', 'vimdoc', 'python', 'javascript', 'css', 'html', 'typescript', 'markdown', 'json'},
            highlight = { enable = true },
            indent = { enable = true },  
            additional_vim_regex_highlighting = false,
            incremental_selection = {
                enable = true,
                keymaps = {
                    init_selection = '<leader><leader>',
                    node_incremental = '<leader>',
                    node_decremental = '<BS>',
                },
            },
        })
    end
}


return {
    'catppuccin/nvim',
    name = 'catppuccin',
    priority = 1000,
    config = function()
        local theme = require('catppuccin').setup({
            flavour = 'frappe',
            transparent_background = true,
            integrations = {
                treesitter = true,
            },
        })
        vim.cmd.colorscheme('catppuccin')
    end,
}

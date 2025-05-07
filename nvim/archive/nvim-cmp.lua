return {
    'hrsh7th/nvim-cmp',
    event = 'InsertEnter',
    depenencies = {
        'hrsh7th/cmp-buffer',
        'hrsh7th/cmp-path',
        'onsails/lspkind.nvim',
        'L3MON4D3/LuaSnip',
        'saadparwaiz1/cmp_luasnip',
        'rafamadriz/friendly-snippets',
    },
    config = function()
        local cmp = require('cmp')
        local luasnip = require('luasnip')
        local lspkind = require('lspkind')
}


return {
    'ibhagwan/fzf-lua',
    -- optional for icon support
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    -- or if using mini.icons/mini.nvim
    -- dependencies = { "echasnovski/mini.icons" },
    opts = {},
    keys = {
        {
            '<leader>F',
            function()
                require 'fzf-lua'
            end,
            desc = 'Open fzf',
        },
        {
            '<leader>ff',
            function()
                require('fzf-lua').files()
            end,
            desc = 'Open fzf files',
        },
        {
            '<leader>fb',
            function()
                require('fzf-lua').buffers()
            end,
            desc = 'Open fzf buffers',
        },
        {
            '<leader>/',
            function()
                require('fzf-lua').live_grep()
            end,
            desc = 'Open fzf grep',
        },
        {
            '<leader>h',
            function()
                require('fzf-lua').helptags()
            end,
            desc = 'Open fzf helptags',
        },
    },
}

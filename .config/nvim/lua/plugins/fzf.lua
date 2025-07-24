return {
    'ibhagwan/fzf-lua',
    -- optional for icon support
    -- dependencies = { 'nvim-tree/nvim-web-devicons' },
    -- or if using mini.icons/mini.nvim
    dependencies = { 'echasnovski/mini.icons' },
    opts = {
        files = {
            -- To ensure rg is used: `:FzfLua files debug=true`
            rg_opts = [[--sort=path --max-count=2 --smart-case --hidden --files -g "!.git"]],
            -- default options:
            -- rg_opts = [[--color=never --hidden --files -g "!.git"]],
        },
    },
    keys = {
        {
            '<leader>F',
            function()
                require('fzf-lua').builtin()
            end,
            desc = 'Open fzf',
        },
        {
            '<leader>ff',
            function()
                require('fzf-lua').files()
            end,
            desc = 'Find a file',
        },
        {
            '<leader>fb',
            function()
                require('fzf-lua').buffers()
            end,
            desc = 'Open buffers',
        },
        {
            '<leader>/',
            function()
                require('fzf-lua').live_grep()
            end,
            desc = 'Find a word',
        },
        {
            '<leader>h',
            function()
                require('fzf-lua').helptags()
            end,
            desc = 'Open help',
        },
    },
}

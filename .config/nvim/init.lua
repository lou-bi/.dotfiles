--  NOTE: Must happen before plugins are loaded (otherwise wrong leader will be used)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not (vim.uv or vim.loop).fs_stat(lazypath) then
    local lazyrepo = vim.fn.system {
        'git',
        'clone',
        '--filter=blob:none',
        '--branch=stable',
        'https://github.com/folke/lazy.nvim.git',
        lazypath,
    }
end

vim.opt.rtp:prepend(lazypath)

require('lazy').setup {
    spec = { { import = 'plugins' } },
    rocks = { enabled = true },
    -- install = { colorscheme = { "habamax"} },
    checker = { enabled = true },
}

require 'keymaps'
require 'options'
require 'autocmd'
require 'lsp'

vim.cmd [[colorscheme catppuccin]]

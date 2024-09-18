local path_package = vim.fn.stdpath('data') .. '/site/'
local mini_path = path_package .. 'pack/deps/start/mini.nvim'

---@diagnostic disable-next-line: undefined-field
if not vim.loop.fs_stat(mini_path) then
    vim.cmd('echo "Installing `mini.nvim`" | redraw')
    local clone_cmd = {
        'git',
        'clone',
        '--filter=blob:none',
        'https://github.com/echasnovski/mini.nvim', mini_path
    }
    vim.fn.system(clone_cmd)
    vim.cmd('packadd mini.nvim | helptags ALL')
    vim.cmd('echo "Installed `mini.nvim`" | redraw')
end


local deps = require('mini.deps')
local add, now, later = deps.add, deps.now, deps.later

deps.setup({ path = { package = path_package } })
vim.keymap.set('n', '<leader>mu', deps.update, { desc = 'Update Mini.deps' })
vim.keymap.set('n', '<leader>mc', deps.update, { desc = 'Clean Mini.deps' })
vim.keymap.set('n', '<leader>mu', '<cmd>DepsShowLog<cr><cmd>', { desc = 'Mini.deps Log' })


-- load modules now
now(function()
    -- Colorschemes/UI
    add('eldritch-theme/eldritch.nvim')
    add('0xstepit/flow.nvim')
    add('nyoom-engineering/oxocarbon.nvim')
    add('zootedb0t/citruszest.nvim')

    add({
        source = 'folke/noice.nvim',
        depends = { 'MunifTanjim/nui.nvim' },
    })
    add('nvim-lualine/lualine.nvim')
    add('vigoux/notifier.nvim')
    add('goolord/alpha-nvim')

    require('plugins.ui.alpha')

end)

-- load modules later
later(function()
    add({
        source = 'nvim-treesitter/nvim-treesitter',
        depends = { 'nvim-treesitter/nvim-treesitter-context' }
    })
    add({
        source = 'j-morano/buffer_manager.nvim',
        depends = { 'nvim-lua/plenary.nvim' }
    })

    -- lsp
    add({
        source = 'neovim/nvim-lspconfig',
        depends = {
            'hrsh7th/cmp-nvim-lsp',
            'folke/lazydev.nvim'
        },
    })
	add('ray-x/lsp_signature.nvim')

    -- cmp
    add({
        source = 'hrsh7th/nvim-cmp',
        depends = {
            "hrsh7th/cmp-nvim-lsp",
            -- "hrsh7th/cmp-nvim-lsp-signature-help",
            "hrsh7th/cmp-path",
            "hrsh7th/cmp-buffer",
            "hrsh7th/cmp-cmdline",
            "hrsh7th/cmp-calc",
            "dmitmel/cmp-cmdline-history",
        }
    })

    vim.cmd('runtime! lua/plugins/lsp/lsp_signature.lua')


    -- editing
    add('roobert/f-string-toggle.nvim')
    add('ethanholz/nvim-lastplace')
    add('roobert/search-replace.nvim')
    add('folke/flash.nvim')
    add('monaqa/dial.nvim')
    add('numTostr/comment.nvim')
    add('echasnovski/mini.splitjoin')
    add('echasnovski/mini.move')
    add('echasnovski/mini.basics')
    add('sitiom/nvim-numbertoggle')
    add('tamton-aquib/duck.nvim')

    vim.cmd('runtime! lua/plugins/ui/*.lua')
    vim.cmd('runtime! lua/plugins/*.lua')
    vim.cmd('runtime! lua/plugins/lsp/lsp.lua')


    vim.cmd('runtime! lua/plugins/editing/*.lua')
end)

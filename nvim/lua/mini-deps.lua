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
    -- add('eldritch-theme/eldritch.nvim')
    -- add('0xstepit/flow.nvim')
    -- add('nyoom-engineering/oxocarbon.nvim')
    -- add('zootedb0t/citruszest.nvim')
    -- add('pineapplegiant/spaceduck')
    add('marko-cerovac/material.nvim')
    add("rebelot/kanagawa.nvim")
    add("philosofonusus/morta.nvim")


    add('nvim-lualine/lualine.nvim')
    add('vigoux/notifier.nvim')
    add('goolord/alpha-nvim')
    add({ source = 'echasnovski/mini.files', checkout = 'stable' }) -- Needed NOW to disable netrw
    vim.cmd('runtime! lua/plugins/mini-files.lua') -- Needed NOW to disable netrw
    require('plugins.ui.alpha')

end)

-- load modules later
later(function()
    add({
        source = 'nvim-treesitter/nvim-treesitter',
        depends = { 'nvim-treesitter/nvim-treesitter-context' }
    })
    add({
        source = 'nvim-telescope/telescope.nvim',
        depends = { 'nvim-lua/plenary.nvim' }
    })

    add({source = 'lewis6991/gitsigns.nvim'})


    -- lsp + cmp
    add({
        source = 'neovim/nvim-lspconfig',
        depends = {
            'folke/lazydev.nvim',
            { source = 'saghen/blink.cmp', checkout = 'v0.9.0' },
        },
    })
    add("stevanmilic/nvim-lspimport")

    vim.cmd('runtime! lua/plugins/lsp/lsp.lua')
    vim.cmd('runtime! lua/plugins/lsp/nvim-treesitter.lua')
    vim.cmd('runtime! lua/plugins/lsp/nvim-treesitter-context.lua')
    vim.cmd('runtime! lua/plugins/cmp/*')

    --HARPOON
    add({
        source = 'ThePrimeagen/harpoon',
        branch = 'harpoon2',
        depends = { 'nvim-lua/plenary.nvim'},
    })

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
    add({
        source = 'echasnovski/mini.jump',
        checkout = 'stable'
    })
    add('sitiom/nvim-numbertoggle')
    add('tamton-aquib/duck.nvim')
    add('norcalli/nvim-colorizer.lua')
    add('xzbdmw/colorful-menu.nvim')

    vim.cmd('runtime! lua/plugins/editing/*.lua')
    vim.cmd('runtime! lua/plugins/*.lua')
    vim.cmd('runtime! lua/plugins/ui/*.lua') -- Has to be executed after editing files
                                             -- in order to Tele to work


    -- vim.cmd('LspStart')
end)

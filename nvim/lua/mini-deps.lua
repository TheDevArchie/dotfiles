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
    add('eldritch-theme/eldritch.nvim')
    add('0xstepit/flow.nvim')
    add('nyoom-engineering/oxocarbon.nvim')
    add('zootedb0t/citruszest.nvim')

    require('plugins.ui.colorscheme')
end)

-- load modules later
-- later()

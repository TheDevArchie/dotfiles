local pick = require("mini.pick")
local extra = require("mini.extra")

-- Center Z window
local win_config = function()
    local height = math.floor(0.5 * vim.o.lines)
    local width = math.floor(0.75 * vim.o.columns)
    return {
        anchor = "NW",
        height = height,
        width = width,
        row = math.floor(0.5 * (vim.o.lines - height)),
        col = math.floor(0.5 * (vim.o.columns - width)),
    }
end

pick.setup({
    mappings = {
        scroll_up = "<C-u>",
        scroll_down = "<C-d>",
        stop = "<Esc>",
    },
    window = {
        config = win_config,
        prompt_prefix = " ",
    },
})

vim.keymap.set("n", "<leader>ff", pick.builtin.files, { desc = "Find Files" })
vim.keymap.set("n", "<leader>fr", extra.pickers.oldfiles, { desc = "Recent Files" })
vim.keymap.set("n", "<leader>fc", extra.pickers.commands, { desc = "Commands" })
vim.keymap.set("n", "<leader>fh", pick.builtin.help, { desc = "Help" })
vim.keymap.set("n", "<leader>fk", extra.pickers.keymaps, { desc = "Keymaps" })
vim.keymap.set("n", "<leader>fo", extra.pickers.options, { desc = "Options" })
vim.keymap.set("n", "<leader>fw", pick.builtin.grep_live, { desc = "Grep (Live)" })

pick.registry.config_files = function()
    return pick.builtin.files(nil, {
        source = { cwd = vim.fn.stdpath('config') },
    })
end
vim.keymap.set("n", "<leader>fn", pick.registry.config_files, { desc = 'NeoVim Config' })

pick.registry.colorschemes = function()
    return pick.start({
        source = {
            name = 'Colorschemes',
            items = vim.fn.getcompletion('', 'color'),
            choose = function(item)
                vim.cmd('colorscheme ' .. item)
            end,
            preview = function(buf_id, item)
                vim.cmd('colorscheme ' .. item)
            end,
        },
    })
end
vim.keymap.set('n', '<leader>ft', pick.registry.colorschemes, { desc = 'Browse Themes' })

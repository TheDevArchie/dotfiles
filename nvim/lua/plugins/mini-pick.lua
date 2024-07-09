return {
    "echasnovski/mini.pick",
    dependencies = { 
        { "echasnovski/mini.extra", opts = {} },
    },
    config = function()
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

        vim.keymap.set("n", "<leader>fno", function()
            local netapp_ontap = "/u/spencera/p4/dev/test/tools/python/nate/rhel7-3.12/lib/python3.12/site-packages/netapp_ontap/resources/"
            pick.start({
                source = {
                    cwd = netapp_ontap,
                    items = vim.fn.readdir(netapp_ontap),
                    name = "Search netapp_ontap",
                },
            })
        end)
    end,
}

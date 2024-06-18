return {
    "echasnovski/mini.files",
    config = function()
        local files = require("mini.files")
        files.setup({
            mappings = {
                close = "<esc>",
                go_in_plus = "<CR>",
                go_out_plus = "<Backspace>",
                show_help = "?",
            },
            windows = {
                width_focus = math.floor(0.15 * vim.o.columns),
                width_nofocus = math.floor(0.15 * vim.o.columns),
                width_preview = math.floor(0.33 * vim.o.columns),
            },
        })

        vim.keymap.set("n", "<leader>pv", function()
            if not files.close() then
                files.open(vim.api.nvim_buf_get_name(0))
                files.reveal_cwd()
            end
        end, { desc = "Explore" })

        -- Custom window
        vim.api.nvim_create_autocmd("User", {
            pattern = "MiniFilesWindowOpen",
            callback = function(args)
                local win_id = args.data.win_id
                local config = vim.api.nvim_win_get_config(win_id)

                vim.wo[win_id].cursorlineopt = "line"
                config.title_pos = "center"
                vim.api.nvim_win_set_config(win_id, config)
            end,
        })
    end,
}

return {
    "folke/flash.nvim",
    event = "VeryLazy",
    config = function()
        local flash = require("flash")
        flash.setup({
            label = {
                rainbow = {
                    enabled = true,
                    shade = 4,
                },
            },
            highlight = {
                groups = {
                    backdrop = "NonText",
                }
            },
            modes = {
                char = { enabled = false },
            },
            prompt = {
                prefix = { { " Savior of the Universe: ", "FlashPromptIcon" } },
                win_config = { row = -3 },
            },
        })
        vim.keymap.set("n", "gw", function()
            flash.jump({
                search = {
                    mode = function(str)
                        return "\\<" .. str
                    end,
                },
            })
        end, { desc = "Flash" })
    end,
}

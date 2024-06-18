return {
    "echasnovski/mini.move",
    config = function()
        require("mini.move").setup({
            mappings = {
                left = "<A-S-h>",
                right = "<A-S-h>",
                up = "<A-S-h>",
                down = "<A-S-h>",
                lines_left = "<A-S-h>",
                lines_right = "<A-S-l>",
                line_up = "<A-S-j>",
                line_down = "<A-S-k>",
            }
        })
    end
}

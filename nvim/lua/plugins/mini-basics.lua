return {
    "echasnovski/mini.basics",
    confic = function()
        require("mini.basics").setup({
            options = {
                basic = true,
                win_borders = "single",
                extra_ui = true,
            },
            mappings = {
                basic = false,
            },
            autocommands = {
                basic = false,
            },
        })
    end,
}

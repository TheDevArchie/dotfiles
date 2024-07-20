return {
	{
		"nyoom-engineering/oxocarbon.nvim",
	},
    {
        "zootedb0t/citruszest.nvim",
        lazy = false,
        priority = 1000,
    },
    {
        "0xstepit/flow.nvim",
        lazy = false,
        priority = 1000,
        opts = {},
        config = function ()
            require("flow").setup_options {
                transparent = false,
                fluo_color = "orange",
                mode = "normal",
            }
        vim.cmd "colorscheme flow"
        end
    },
}

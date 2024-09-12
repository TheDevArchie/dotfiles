local indentscope = require("mini.indentscope")
indentscope.setup({
    draw = {
        animation = function()
            return 4
        end,
    },
    options = {
        try_as_border = true,
    },
    symbol = "",
})

vim.api.nvim_create_autocmd("FileType", {
    pattern = {
        "alpha",
        "lazy",
    },
    callback = function()
        vim.b.miniindentscope_diasable = true
    end,
})

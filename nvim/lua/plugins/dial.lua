return {
    "monaqa/dial.nvim",
    config = function()
        local augend = require("dial.augend")
        require("dial.config").augends:register_group({
            default = {
                augend.integer.alias.decimal_int,

                augend.constant.new({
                    elements = { "false", "true" },
                    cyclic = false,
                }),
                augend.constant.new({
                    elements = { "no", "yes" },
                    cyclic = false,
                }),
                augend.constant.new({
                    elements = { "and", "or" },
                }),
            }
        })

        local map = require("dial.map")
        vim.keymap.set("n", "+", function()
            map.manipulate("increment", "normal")
        end)
        vim.keymap.set("n", "-", function()
            map.manipulate("decrement", "normal")
        end)
    end
}

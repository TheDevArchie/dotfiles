return {
    "tamton-aquib/duck.nvim",
    config = function()
        vim.keymap.set("n", "<leader>dd", function() require("duck").hatch("🦖", 5) end, {})
    end
}

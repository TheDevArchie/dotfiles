local highlight = {
    "CursorColumn",
    "Whitespace",
}

return {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    opts = {
        indent = {
            highlight = highlight,
            char = "▏"
        },
        scope = { enabled = false }
    }
}
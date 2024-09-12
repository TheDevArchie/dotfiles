require("buffer_manager").setup({
    loop_nav = true,
    short_file_names = false,
    order_buffers = "lastused",
    highlight = "Normal:BufferManagerBorder",
    win_extra_options = {
        relativenumber = true,
        winhighlight = "Normal:BufferManagerNormal",
    }
})

local ui = require("buffer_manager.ui")
vim.keymap.set("n", "<leader>hl", ui.toggle_quick_menu, {desc="Buffer list"})
vim.keymap.set("n", "<leader>hn", ui.nav_next, {desc="Next Buffer"})
vim.keymap.set("n", "<leader>hp", ui.nav_prev, {desc="Prev Buffer"})

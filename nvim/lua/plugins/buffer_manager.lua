return {
	"j-morano/buffer_manager.nvim",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		require("buffer_manager").setup({
			loop_nav = false,
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
	end,
}

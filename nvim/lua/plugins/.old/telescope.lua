return {
	"nvim-telescope/telescope.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons"
	},
	config = function()
		local telescope = require("telescope")
		local builtin = require("telescope.builtin")
		local actions = require("telescope.actions")
		local layout = require("telescope.actions.layout")
		local themes = require("telescope.themes")

		telescope.setup({
			defaults = {
				sorting_strategy = "descending",
				scroll_strategy = "limit",
				layout_strategy = "horizontal",
				layout_config = {
					horizontal = {
						height = 0.5,
						prompt_position = "top"
					},
				},
                --borderchars = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" },
				path_display = "truncate",
				dynamic_preview_title = true,
				results_title = false,
				prompt_prefix = "✈ ",
				selection_prefix = "✈",
				mappings = {
					i = {
						["jj"] = actions.close,
						["<Tab>"] = actions.move_selection_next,
						["<C-Tab>"] = actions.move_selection_previous,
						["<Space>tp"] = layout.toggle_preview
					}
				},
				preview = { hide_on_startup = true }
			}
		})

		-- KeyMaps
		vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Find Files" })
		vim.keymap.set("n", "<leader>fr", builtin.oldfiles, { desc = "Recent Files" })
		vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Search Help" })
		vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Search By Grep" })
		vim.keymap.set("n", "<leader>fn", function()
			builtin.find_files { cwd = vim.fn.stdpath "config" }
		end, { desc = "Search Neovim Files" })
        vim.keymap.set("n", "<leader>fm", function()
			builtin.find_files { cwd = vim.env.HOME .. "/misguided" }
		end, { desc = "Search custom helpers" })

	end,
}

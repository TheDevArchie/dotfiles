local telescope = require("telescope")
local builtin = require("telescope.builtin")
local actions = require("telescope.actions")
local layout = require("telescope.actions.layout")
local themes = require("telescope.themes")
local utils = require('telescope.utils')

telescope.setup({
    defaults = {
        sorting_strategy = "ascending",
        scroll_strategy = "limit",
        -- layout_strategy = 'vertical',
        layout_config = {
            horizontal = {
                height = 0.5,
                prompt_position = "top"
            },
        },
        path_display = { "truncate" },
        dynamic_preview_title = true,
        results_title = false,
        prompt_prefix = "✈ ",
        selection_prefix = "✈",
        mappings = {
            i = {
                ["jj"] = actions.close,
                ["<Tab>"] = actions.move_selection_next,
                -- ["<C-Tab>"] = actions.move_selection_previous, NOT WORKING
                ["<Space>tp"] = layout.toggle_preview,
            }
        },
        preview = { hide_on_startup = true }
    },
    pickers = {
        buffers = {
            mappings = {
                i = {
                    ["<c-z>"] = actions.delete_buffer,
                }
            }
        }
    }
})

local colors = {
  blue   = "#00BFFF",
  cyan   = '#79dac8',
  green  = "#1AFFA3",
  black  = '#080808',
  white  = '#c6c6c6',
  red    = '#ff5189',
  purple = '#7600bc',
  orange = "#FF7431",
  dark_orange = 'FF4D00',
  violet = '#d183e8',
  grey   = '#303030',
}

local TelescopeColor = {
	-- TelescopeMatching = { fg = colors.blue, bg = colors.blue},
	TelescopeSelection = { fg = colors.black, bg = colors.cyan, bold = true },

	TelescopePromptPrefix = { bg = nil ,fg = colors.red },
	-- TelescopePromptNormal = { bg = colors.dark_orange },
	-- TelescopeResultsNormal = { bg = colors.dark_orange },
	-- TelescopePreviewNormal = { bg = colors.grey },
	TelescopePromptBorder = { bg = nil, fg = colors.orange },
	TelescopeResultsBorder = { bg = nil, fg = colors.orange },
	TelescopePreviewBorder = { bg = nil, fg = colors.orange },
	-- TelescopePromptTitle = { bg = colors.white, fg = colors.blue },
	-- TelescopeResultsTitle = { fg = colors.blue },
	-- TelescopePreviewTitle = { bg = colors.green, fg = colors.blue },
}

for hl, col in pairs(TelescopeColor) do
	vim.api.nvim_set_hl(0, hl, col)
end


-- KeyMaps
vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Find Project Files" })
vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Find Buffers" })
vim.keymap.set("n", "<leader>fr", builtin.oldfiles, { desc = "Recent Files" })
vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Search Help" })
vim.keymap.set('n', '<leader>ft', builtin.colorscheme, { desc = 'Search Colorschemes' })
vim.keymap.set('n', '<leader>fk', builtin.keymaps, { desc = 'Search Keymaps' })
vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Search By Grep" })
vim.keymap.set("n", "<leader>fn", function()
    builtin.find_files { cwd = vim.fn.stdpath "config" }
end, { desc = "Search Neovim Files" })
vim.keymap.set("n", "<leader>fu", function()
    builtin.find_files { cwd = vim.env.HOME }
end, { desc = "Search User Dir" })


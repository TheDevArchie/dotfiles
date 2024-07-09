return {
        -- theme = "citruszest"
	"goolord/alpha-nvim",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	opts = function()
        
		dashboard = require("alpha.themes.dashboard")
		local logo = "Snoretown welcomes you!"
	
		local header = dashboard.section.header
		header.val = logo
		header.opts = {
			position = "center",
            width = 20
		}

		local buttons = dashboard.section.buttons

		buttons.opts.spacing = 1
		buttons.val = {
			dashboard.button("<Space>ff", "󱉶 Where art thou?", "<cmd>Pick files<CR>" ),
			-- dashboard.button("<Space>fn", " My Sick Setup", function()
			--	pick_builtin.builtin.files { cwd = vim.fn.stdpath("config") }
			--end),
			--dashboard.button("<Space>fm", "👷 Custom Helpers", function()
             --   ts_builtin.find_files { cwd = vim.env.HOME .. "/misguided" }
            --end),
            dashboard.button("jj", "👋 Leave me now", "<cmd>qa<CR>")
			
		}

		for _, button in ipairs(buttons.val) do
			button.opts.width = 30
		end

		local footer = dashboard.section.footer
		footer.val = [[
		"I feel the need, the need for tweed"
		]]
		footer.opts = {
			position = "center"
		}
		dashboard.config.layout = {
			{ type = "padding", val = 5 },
			header,
			{ type = "padding", val = 2 },
			buttons,
			{ type = "padding", val = 4 },
			footer
			
		}
		return dashboard
	end,
	config = function(_, dashboard)
		require("alpha").setup(dashboard.config)
	end,
}

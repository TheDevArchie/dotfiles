-- Safety First
local safe_require = require('utils').safe_require

safe_require("archie.keymaps")
safe_require("archie.options")
safe_require("mini-deps")


-- For using default config leave this empty.
-- require("citruszest").setup({
--     option = {
--         transparent = false, -- Enable/Disable transparency
--         bold = false,
--         italic = true,
--     },
--     -- Override default highlight style in this table
--     -- E.g If you want to override `Constant` highlight style
--     style = {
--     -- This will change Constant foreground color and make it bold.
--     Constant = { fg = "#FFFFFF", bold = true}
--     },
-- })
--
-- Theme
vim.opt.background = "dark"
--vim.cmd.colorscheme "oxocarbon"
-- vim.cmd.colorscheme "citruszest"

print("Welcome to SnoreTown")

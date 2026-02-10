-- stylua: ignore
-- local colors = {
--   blue   = "#00BFFF",
--   cyan   = '#79dac8',
--   green  = "#1AFFA3",
--   black  = '#080808',
--   white  = '#c6c6c6',
--   red    = '#ff5189',
--   purple = '#7600bc',
--   orange = "#FF7431",
--   dark_orange = 'FF4D00',
--   violet = '#d183e8',
--   grey   = '#303030',
-- }

-- local bubbles_theme = {
--   normal = {
--     a = { fg = colors.black, bg = colors.orange },
--     b = { fg = colors.dark_orange, bg = colors.white },
--     c = { fg = colors.white },
--   },
--
--   insert = { a = { fg = colors.black, bg = colors.blue } },
--   visual = { a = { fg = colors.black, bg = colors.green } },
--   replace = { a = { fg = colors.black, bg = colors.red } },
--
--   inactive = {
--     a = { fg = colors.white, bg = colors.black },
--     b = { fg = colors.white, bg = colors.black },
--     c = { fg = colors.white },
--   },
-- }
-- TODO: Shorten git branch , remove the line length/width (right hand side)
require('lualine').setup({
    options = {
        section_separators = { left = '', right = '' },
        component_separators = '|',
        theme = 'spaceduck'
    },
})
-- require('lualine').setup({
--   options = {
--     theme = 'spaceduck',
--     component_separators = '',
--     section_separators = { left = '', right = '' },
--   },
--   sections = {
--     lualine_a = { { 'mode', separator = { left = '' }, right_padding = 2 } },
--     lualine_b = { 'filename', 'branch' },
--     lualine_c = {
--       '%=', --[[ add your center compoentnts here in place of this comment ]]
--     },
--     lualine_x = {
--         {
--         -- https://github.com/folke/noice.nvim/wiki/Configuration-Recipes#show-recording-messages
--             require("noice").api.statusline.mode.get,
--             cond = require("noice").api.statusline.mode.has,
--             color = { fg = "#d183e8" },
--         }
--     },
--     lualine_y = { 'filetype', 'progress' },
--     lualine_z = {
--       { 'location', separator = { right = '' }, left_padding = 2 },
--     },
--   },
--   -- inactive_sections = {
--   --   lualine_a = { 'filename' },
--   --   lualine_b = {},
--   --   lualine_c = {},
--   --   lualine_x = {},
--   --   lualine_y = {},
--   --   lualine_z = { 'location' },
--   -- },
--   tabline = {},
--   extensions = {},
-- })

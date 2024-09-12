-- Bubbles config for lualine
-- Author: lokesh-krishna
-- MIT license, see LICENSE for more details.

local colors = {
    neon_blue = '#04D9FF',
    --blue   = '#80a0ff',
    blue = "#00BFFF",
    green = "#1AFFA3",
    --cyan   = '#79dac8',
    cyan = "#48D1CC",
    black  = '#080808',
    -- black = "#232323",
    --white  = '#c6c6c6',
    white = "#BFBFBF",
    yellow = "#FFD700",
    orange = "#FF7431",
    --red    = '#ff5189',
    red = "#FF5454",
    violet = '#d183e8',
    grey   = '#303030',
  }

local bubbles_theme = {
    normal = {
      a = { fg = colors.green, bg = colors.black },
      b = { fg = colors.orange, bg = colors.black },
      c = { fg = colors.white, bg = colors.black },
    },

    insert = { a = { fg = colors.blue, bg = colors.black } },
    visual = { a = { fg = colors.cyan, bg = colors.black } },
    replace = { a = { fg = colors.yellow, bg = colors.black } },

    inactive = {
      a = { fg = colors.white, bg = colors.black },
      b = { fg = colors.white, bg = colors.black },
      c = { fg = colors.white },
    },
  }

-- stylua: ignore
require('lualine').setup({
    options = {
        theme = bubbles_theme,
        component_separators = '|',
        section_separators = { left = '', right = '' },
    },
    sections = {
        lualine_a = { { 'mode', separator = { left = '' }, right_padding = 2 } },
        lualine_b = { 'filename', 'branch' },
        lualine_c = {
            '%=', --[[ add your center compoentnts here in place of this comment ]]
        },
        lualine_x = {},
        lualine_y = { 'filetype', 'progress' },
        lualine_z = {
            { 'location', separator = { right = '' }, left_padding = 2 },
        },
    },
    inactive_sections = {
        lualine_a = { 'filename' },
        lualine_b = {},
        lualine_c = {},
        lualine_x = {},
        lualine_y = {},
        lualine_z = { 'location' },
    },
    tabline = {},
    extensions = {},
})

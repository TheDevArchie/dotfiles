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
--
--
--
-- TODO: Shorten git branch , remove the line length/width (right hand side)
-- require('lualine').setup({
--     options = {
--         theme = 'monokai-pro',
--         section_separators = { left = '', right = '' },
--         component_separators = '|',
--     },
--     sections = {
--         lualine_a = {
--             { 'diff', sepearator = { left = '' }, right_padding = 2 }
--         },
--         lualine_b = { { 'branch', left = '', right = '' , right_padding = 5 } },
--         lualine_c = {{ 'diagnostics', left = '', right = '', sections = { 'error', 'warn', 'info' }, always_visible = true , draw_empty = true }},
--         lualine_z = { 'mode' }
--     },
-- })
--
--
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
--
--
-- local colors = {
--   blue   = '#80a0ff',
--   cyan   = '#79dac8',
--   black  = '#080808',
--   white  = '#c6c6c6',
--   red    = '#ff5189',
--   violet = '#d183e8',
--   grey   = '#303030',
-- }
--
-- local bubbles_theme = {
--   normal = {
--     a = { fg = colors.black, bg = colors.violet },
--     b = { fg = colors.white, bg = colors.grey },
--     c = { fg = colors.black, bg = colors.black },
--   },
--
--   insert = { a = { fg = colors.black, bg = colors.blue } },
--   visual = { a = { fg = colors.black, bg = colors.cyan } },
--   replace = { a = { fg = colors.black, bg = colors.red } },
--
--   inactive = {
--     a = { fg = colors.white, bg = colors.black },
--     b = { fg = colors.white, bg = colors.black },
--     c = { fg = colors.black, bg = colors.black },
--   },
-- }
--
-- require('lualine').setup {
--   options = {
--     theme = 'monokai-pro',
--     component_separators = '',
--     section_separators = { left = '', right = '' },
--   },
--   sections = {
--     lualine_a = {
--       { 'branch', separator = { left = '    ', right = '    ' }, right_padding = 2 },
--     },
--     lualine_b = {
--       { 'diagnostics', separator = { left = '   ' , right = '    ' }, right_padding = 2 },
--     },
--     -- lualine_b = { 'filename', 'branch' },
--     lualine_c = { 'fileformat' },
--     lualine_x = {},
--     lualine_y = { 'filetype', 'progress' },
--     lualine_z = {
--       { 'mode', separator = { right = '    ' }, left_padding = 2 },
--     },
--   },
--   inactive_sections = {
--     lualine_a = { 'filename' },
--     lualine_b = {},
--     lualine_c = {},
--     lualine_x = {},
--     lualine_y = {},
--     lualine_z = { 'location' },
--   },
--   tabline = {},
--   extensions = {},
-- }
--
--
local function config_lualine(colors)
-- return {
--   dark2 = "#161b1e",
--   dark1 = "#1d2528",
--   background = "#273136",
--   text = "#f2fffc",
--   accent1 = "#ff6d7e",
--   accent2 = "#ffb270",
--   accent3 = "#ffed72",
--   accent4 = "#a2e57b",
--   accent5 = "#7cd5f1",
--   accent6 = "#baa0f8",
--   dimmed1 = "#b8c4c3",
--   dimmed2 = "#8b9798",
--   dimmed3 = "#6b7678",
--   dimmed4 = "#545f62",
--   dimmed5 = "#3a4449",
-- }
    local modecolor = {
        n = colors.accent4,
        i = colors.accent5,
        v = colors.accent6,
        [""] = colors.accent6,
        V = colors.accent6,
        c = colors.accent3,
        no = colors.accent1,
        s = colors.accent3,
        S = colors.accent3,
        [""] = colors.accent3,
        ic = colors.accent3,
        R = colors.accent4,
        Rv = colors.accent6,
        cv = colors.aceent1,
        ce = colors.accent1,
        r = colors.accent5,
        rm = colors.accent5,
        ["r?"] = colors.accent5,
        ["!"] = colors.accent1,
        t = colors.accent1,
    }

    local theme = {
        normal = {
            a = { fg = colors.background, bg = colors.blue },
            b = { fg = colors.blue, bg = colors.white },
            c = { fg = colors.white, bg = colors.background },
            z = { fg = colors.white, bg = colors.background },
        },
        insert = { a = { fg = colors.background, bg = colors.orange } },
        visual = { a = { fg = colors.background, bg = colors.green } },
        replace = { a = { fg = colors.background, bg = colors.green } },
    }

    local space = {
        function()
            return " "
        end,
        color = { bg = colors.background, fg = colors.blue },
    }
    local opening_paren = {
        function()
            return ""
        end,
        color = { bg = colors.background, fg = colors.dimmed5 },
    }
    local closing_paren = {
        function()
            return ""
        end,
        color = { bg = colors.background, fg = colors.dimmed5 },
    }

    local filename = {
        "filename",
        color = { bg = colors.dimmed3, fg = colors.text, gui = "bold" },
        separator = { left = "", right = "" },
    }

    local filetype = {
        "filetype",
        icons_enabled = false,
        color = { bg = colors.gray2, fg = colors.blue, gui = "italic,bold" },
        separator = { left = "", right = "" },
    }

    local branch = {
        "branch",
        fmt = function(str)
                if #str < 6 then
                    return str
                end
                local new_name = str:match("(sti%-[^%-]*)%-")

                if new_name ~= nil then
                    return new_name
                end

                return string.format("...%s", str:sub(#str - 5, #str - 1))
            end,
        icon = { "", color = { fg = colors.accent5 } },
        color = { bg = colors.dimmed5, fg = colors.text, gui = "bold" },
        separator = { left = "", right = "" },
    }

    local diff = {
        "diff",
        color = { bg = colors.gray2, fg = colors.background, gui = "bold" },
        separator = { left = "", right = "" },
        symbols = { added = " ", modified = " ", removed = " " },

        diff_color = {
            added = { fg = colors.green },
            modified = { fg = colors.yellow },
            removed = { fg = colors.red },
        },
    }

    local modes = {
        "mode",
        color = function()
            local mode_color = modecolor
            return { fg = mode_color[vim.fn.mode()], bg = colors.dimmed5, gui = "bold" }
        end,
        separator = { left = "", right = "" },
    }

    local dia = {
        "diagnostics",
        sources = { "nvim_diagnostic" },
        -- symbols = { error = " ", warn = " ", info = " ", hint = " " },
        diagnostics_color = {
            error = { fg = colors.red },
            warn = { fg = colors.yellow },
            info = { fg = colors.purple },
            hint = { fg = colors.cyan },
        },
        color = { bg = colors.background, fg = colors.text, gui = "bold" },
        separator = { left = "", right = "" },
    }

    local line_number = {
        "location",
        fmt = function (str)
            local colon_index = str:find(":")
            if colon_index then
                return string.format("Line #%s", str:sub(1, colon_index - 1))
            end
            return str
            -- if str ~= nil then
            -- end
        end,
        color = { bg = colors.dimmed5, fg = colors.accent6 },
        separator = { left = "", right = "" },
    }

    require("lualine").setup({
        options = {
            -- disabled_filetypes = { statusline = { "dashboard", "alpha", "ministarter", "snacks_dashboard" } },
            icons_enabled = true,
            theme = theme,
            component_separators = { left = "", right = "" },
            section_separators = { left = "", right = "" },
            ignore_focus = {},
            always_divide_middle = true,
            globalstatus = true,
        },

        sections = {
            lualine_a = {
                space,
                branch,
            },
            lualine_b = {
                space,
                opening_paren,
                dia,
                closing_paren,
            },
            lualine_c = {
                -- filename,
                -- filetype,
                -- space,
                -- diff,
                -- space,
                -- location,
            },
            lualine_x = {
                space,
            },
            lualine_y = { space, line_number, space },
            lualine_z = {
                modes,
                space,
                -- dia,
                -- lsp,
            },
        },
        inactive_sections = {
            lualine_a = {},
            lualine_b = {},
            lualine_c = { "filename" },
            lualine_x = { "location" },
            lualine_y = {},
            lualine_z = {},
        },
    })
end

local colors = require("monokai-pro.palette.machine")
config_lualine(colors)
vim.o.laststatus = vim.g.lualine_laststatus

-- return {
--   dark2 = "#161b1e",
--   dark1 = "#1d2528",
--   background = "#273136",
--   text = "#f2fffc",
--   accent1 = "#ff6d7e",
--   accent2 = "#ffb270",
--   accent3 = "#ffed72",
--   accent4 = "#a2e57b",
--   accent5 = "#7cd5f1",
--   accent6 = "#baa0f8",
--   dimmed1 = "#b8c4c3",
--   dimmed2 = "#8b9798",
--   dimmed3 = "#6b7678",
--   dimmed4 = "#545f62",
--   dimmed5 = "#3a4449",
-- }

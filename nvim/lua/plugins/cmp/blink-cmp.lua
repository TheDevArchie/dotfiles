-- require('blink.cmp').setup({
--   keymap = {
--     preset = 'default',
--   },
--   completion = {
--     list = {
--       selection = function(ctx)
--         return ctx.mode == 'cmdline' and 'auto_insert' or 'preselect'
--       end,
--     },
--     accept = {
--       auto_brackets = { enabled = false },
--     },
--     menu = {
--       max_height = 5,
--       scrolloff = 3,
--       draw = {
--         components = {
--           label = {
--             width = { fill = true, max = 60 },
--             text = function(ctx)
--               local highlights_info =
--               require("colorful-menu").highlights(ctx.item, vim.bo.filetype)
--               if highlights_info ~= nil then
--                 return highlights_info.text
--               else
--                 return ctx.label
--               end
--             end,
--             highlight = function(ctx)
--               local highlights_info =
--               require("colorful-menu").highlights(ctx.item, vim.bo.filetype)
--               local highlights = {}
--               if highlights_info ~= nil then
--                 for _, info in ipairs(highlights_info.highlights) do
--                   table.insert(highlights, {
--                     info.range[1],
--                     info.range[2],
--                     group = ctx.deprecated and "BlinkCmpLabelDeprecated" or info[1],
--                   })
--                 end
--               end
--               for _, idx in ipairs(ctx.label_matched_indices) do
--                 table.insert(highlights, { idx, idx + 1, group = "BlinkCmpLabelMatch" })
--               end
--               return highlights
--             end,
--           },
--         },
--         columns = {
--           { 'label', 'label_description', gap = 1 },
--           { 'kind_icon', 'kind', gap = 1 },
--         },
--       },
--     },
--     documentation = { window = { border = 'single' } },
--     ghost_text = { enabled = true },
--   },
--   signature = { window = { border = 'single' } },
--   fuzzy = {
--   },
--   sources = {
--     cmdline = function()
--       local type = vim.fn.getcmdtype()
--       if type == '/' or type == '?' then
--         return { 'buffer' }
--       end
--       if type == ':' then
--         return { 'cmdline' }
--       end
--       return {}
--     end,
--   },
-- })
--
--
require('blink.cmp').setup({
    keymap = {
    preset = 'default',
    },
  -- cmdline = {
  --   keymap = {
  --     ['<CR>'] = { 'accept', 'fallback' },
  --     ['<C-e>'] = { 'cancel', 'fallback' },
  --     ['<Right>'] = {},
  --     ['<Left>'] = {},
  --   },
  --   completion = {
  --     list = {
  --       selection = {
  --         preselect = false,
  --         auto_insert = false,
  --       },
  --     },
  --     menu = { auto_show = true },
  --   },
  -- },
  completion = {
    menu = {
      max_height = 5,
      border = 'single',
      scrolloff = 3,
      draw = {
        columns = {
          { 'label', 'label_description', gap = 1 },
          { 'kind_icon', 'kind', gap = 1 },
        },
      },
    },
    documentation = {
      auto_show_delay_ms = 0,
    },
  },
  signature = {
      enabled = false
  },
  -- fuzzy = {
  --   implementation = 'rust',
  --   -- work
  --   prebuilt_binaries = {
  --     download = vim.env.SSH_CLIENT == nil,
  --     ignore_version_mismatch = true,
  --   },
  -- },
  sources = {
    providers = {
      path = {
        opts = {
          show_hidden_files_by_default = vim.env.SSH_CLIENT == nil,
        },
      },
    },
  },
})

require('blink.cmp').setup({
  keymap = {
    preset = 'enter',
  },
  completion = {
    list = {
      selection = function(ctx)
        return ctx.mode == 'cmdline' and 'auto_insert' or 'preselect'
      end,
    },
    accept = {
      auto_brackets = { enabled = false },
    },
    menu = {
      max_height = 5,
      scrolloff = 3,
      draw = {
        components = {
          label = {
            width = { fill = true, max = 60 },
            text = function(ctx)
              local highlights_info =
              require("colorful-menu").highlights(ctx.item, vim.bo.filetype)
              if highlights_info ~= nil then
                return highlights_info.text
              else
                return ctx.label
              end
            end,
            highlight = function(ctx)
              local highlights_info =
              require("colorful-menu").highlights(ctx.item, vim.bo.filetype)
              local highlights = {}
              if highlights_info ~= nil then
                for _, info in ipairs(highlights_info.highlights) do
                  table.insert(highlights, {
                    info.range[1],
                    info.range[2],
                    group = ctx.deprecated and "BlinkCmpLabelDeprecated" or info[1],
                  })
                end
              end
              for _, idx in ipairs(ctx.label_matched_indices) do
                table.insert(highlights, { idx, idx + 1, group = "BlinkCmpLabelMatch" })
              end
              return highlights
            end,
          },
        },
        columns = {
          { 'label', 'label_description', gap = 1 },
          { 'kind_icon', 'kind', gap = 1 },
        },
      },
    },
    documentation = { window = { border = 'single' } },
    ghost_text = { enabled = true },
  },
  signature = { window = { border = 'single' } },
  fuzzy = {
  },
  sources = {
    cmdline = function()
      local type = vim.fn.getcmdtype()
      if type == '/' or type == '?' then
        return { 'buffer' }
      end
      if type == ':' then
        return { 'cmdline' }
      end
      return {}
    end,
  },
})

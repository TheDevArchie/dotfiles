vim.diagnostic.config({
  virtual_text = false,
  signs = false,
  severity_sort = true,
  jump = { wrap = false, float = true },
  underline = true,
})

require('tiny-inline-diagnostic').setup({
  preset = 'minimal',
  options = {
    show_source = {
      enabled = true,
    },
    throttle = 0,
    -- multilines = {
    --   enabled = true,
    --   always_show = true,
    -- },
    show_diags_only_under_cursor = true
  },
  -- signs = {
  --   diag = ' ',
  -- },
  -- blend = {
  --   factor = 0.4,
  -- },
})

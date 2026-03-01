local snacks = require('snacks')
vim.keymap.set({ 'n', 'x' }, '<leader>gb', function()
  snacks.git.blame_line({
    win = {
      width = 0.9,
      height = 0.9,
      keys = { ['<Esc>'] = 'close' },
    },
  })
end, { desc = 'Git: Blame' })

snacks.setup({
    picker = {
        previewers = {
          diff = {
          style = "terminal",
        },
        },
        layout = { preset = "ivy"},
        -- { win = "preview", title = "{preview}", border = true, width = 0.5},
        layouts = {
          default = {
            hidden = { 'preview' },
            layout = {
              backdrop = true,
              width = 0.9,
              height = 0.9,
            },
          },
        },
        explorer = {
            hidden = true,
            git_status = true,
            watch = true
        }
    },

})
vim.keymap.set('n', '<leader>ev', function() snacks.explorer() end, { desc = 'Explorer' })

local picker = snacks.picker

-- files
vim.keymap.set('n', '<leader>ff', picker.smart, { desc = 'Files (Smart)' })
vim.keymap.set('n', '<leader>fF', function()
  picker.smart({ cwd = vim.fn.expand('%:p:h') })
end, { desc = 'Files (Smart) (Relative)' })
vim.keymap.set('n', '<leader>fb', picker.buffers, { desc = 'Find open buffers' })

-- grep
vim.keymap.set('n', '<leader>fg', picker.grep, { desc = 'Grep Live' })
vim.keymap.set('n', '<leader>fG', function()
  picker.grep({ cwd = vim.fn.expand('%:p:h') })
end, { desc = 'Grep Live (Relative)' })
vim.keymap.set('n', '<leader>*', picker.grep_word, { desc = 'Grep cword' })
vim.keymap.set('n', '<leader>#', function()
  picker.grep_word({ cwd = vim.fn.expand('%:p:h') })
end, { desc = 'Grep cword (Relative)' })
vim.keymap.set('x', '<leader>fw', picker.grep_word, { desc = 'Grep' })
vim.keymap.set('x', '<leader>fW', function()
  picker.grep_word({ cwd = vim.fn.expand('%:p:h') })
end, { desc = 'Grep (Relative)' })

-- lsp
vim.keymap.set('n', 'gS', picker.lsp_symbols, { desc = 'lsp symbols' })
-- vim.keymap.set('n', 'gt', picker.lsp_type_definitions, { desc = 'type def' })
vim.keymap.set('n', 'gd', function()
  picker.lsp_definitions({ auto_confirm = false })
end, { desc = 'LSP: Goto Definition' })
vim.keymap.set('n', 'gr', function()
  picker.lsp_references({ auto_confirm = false })
end, { desc = 'LSP: Goto References' })
vim.keymap.set('n', '<leader>fd', picker.diagnostics_buffer, { desc = 'LSP: Diagnostics (Buffer)' })
vim.keymap.set('n', "<leader>gP", function() snacks.picker.gh_pr({ state = "all" }) end, {desc = "GitHub Pull Requests (all)"})
vim.keymap.set('n', '<leader>fD', picker.diagnostics, { desc = 'LSP: Diagnostics' })

vim.keymap.set({ 'n', 'x' }, '<leader>gl', picker.git_log_line, { desc = 'Git: Log (Line)' })
-- vim.keymap.set('n', '<leader>gL', picker.git_log_file, { desc = 'Git: Log (File)' })
vim.keymap.set('n', '<leader>gh', picker.git_diff, { desc = 'Git: Hunks' })

vim.keymap.set('n', "<leader>fc", function() snacks.picker.colorschemes() end, {desc = "Colorschemes"})

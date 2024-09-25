require("mini.trailspace").setup()

vim.keymap.set('n', '<leader>ts', '<cmd>lua MiniTrailspace.trim()<CR>', { desc = 'Trim WhiteSpace' })

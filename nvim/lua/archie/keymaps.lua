vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

local remap = vim.keymap.set

remap('n', '<Esc>', function()
    vim.cmd('nohlsearch')
    vim.cmd('echon')
end)

-- Normal
remap("n", "<leader>w", "<cmd>w<CR>", { desc = "Write" })
remap("n", "<leader>q", "<cmd>q<CR>", { desc = "Quit" })
remap("n", "<leader>Q", "<cmd>qa!<CR>", { desc = "Quit all" })
remap("n", "<leader>wq", "<cmd>wq!<CR>", { desc = "Write and Quit all" })

remap("n", "<leader>o", "o<Esc>", { desc = "New Line Below" })
remap("n", "<leader>O", "O<Esc>", { desc = "New Line Above" })

remap("n", "<leader>so", "<cmd>so %<CR>", { desc = "Shout Out File" })

-- Insert
remap("i", "jj", "<Esc>")

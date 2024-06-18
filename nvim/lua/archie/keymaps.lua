local keymap = vim.keymap


-- Normal
keymap.set("n", "<leader>pv", vim.cmd.Ex)

keymap.set("n", "<leader>w", "<cmd>w<CR>", { desc = "Write" })
keymap.set("n", "<leader>q", "<cmd>q<CR>", { desc = "Quit" })
keymap.set("n", "<leader>Q", "<cmd>qa!<CR>", { desc = "Quit all" })
keymap.set("n", "<leader>wq", "<cmd>wq!<CR>", { desc = "Write and Quit all" })

keymap.set("n", "<leader>o", "o<Esc>", { desc = "New Line Below" })
keymap.set("n", "<leader>O", "O<Esc>", { desc = "New Line Above" })

keymap.set("n", "<leader>so", "<cmd>so %<CR>", { desc = "Shout Out File" })

-- Insert
keymap.set("i", "jj", "<Esc>") 

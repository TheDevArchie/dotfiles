require("search-replace").setup({
    default_replace_single_buffer_options = "gcI",
    default_replace_multi_buffer_options = "egcI",
})


local remap = vim.api.nvim_set_keymap
local opts = {}

remap("v", "<C-r>", "<CMD>SearchReplaceSingleBufferVisualSelection<CR>", opts)
remap("v", "<C-s>", "<CMD>SearchReplaceWithinVisualSelection<CR>", opts)
remap("v", "<C-b>", "<CMD>SearchReplaceWithinVisualSelectionCWord<CR>", opts)

remap("n", "<leader>rs", "<CMD>SearchReplaceSingleBufferSelections<CR>", opts)
remap("n", "<leader>ro", "<CMD>SearchReplaceSingleBufferOpen<CR>", opts)
remap("n", "<leader>rw", "<CMD>SearchReplaceSingleBufferCWord<CR>", opts)
remap("n", "<leader>rW", "<CMD>SearchReplaceSingleBufferCWORD<CR>", opts)
remap("n", "<leader>re", "<CMD>SearchReplaceSingleBufferCExpr<CR>", opts)
remap("n", "<leader>rf", "<CMD>SearchReplaceSingleBufferCFile<CR>", opts)

remap("n", "<leader>rbs", "<CMD>SearchReplaceMultiBufferSelections<CR>", opts)
remap("n", "<leader>rbo", "<CMD>SearchReplaceMultiBufferOpen<CR>", opts)
remap("n", "<leader>rbw", "<CMD>SearchReplaceMultiBufferCWord<CR>", opts)
remap("n", "<leader>rbW", "<CMD>SearchReplaceMultiBufferCWORD<CR>", opts)
remap("n", "<leader>rbe", "<CMD>SearchReplaceMultiBufferCExpr<CR>", opts)
remap("n", "<leader>rbf", "<CMD>SearchReplaceMultiBufferCFile<CR>", opts)

-- show the effects of a search / replace in a live preview window
vim.o.inccommand = "split"

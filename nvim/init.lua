local g = vim.g
g.mapleader = " "
g.maplocalleader = " "

require("archie.keymaps")
require("archie.options")

-- I'm too lazy
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    { import = "plugins" },
    { import = "plugins.editing" },
    { import = "plugins.lsp" },
    { import = "plugins.performance" },
    { import = "plugins.ui" },
})
vim.keymap.set("n", "<leader>l", "<cmd>Lazy<CR>", { desc = "Lazyness" })

-- For using default config leave this empty.
require("citruszest").setup({
    option = {
        transparent = false, -- Enable/Disable transparency
        bold = false,
        italic = true,
    },
    -- Override default highlight style in this table
    -- E.g If you want to override `Constant` highlight style
    style = {
    -- This will change Constant foreground color and make it bold.
    Constant = { fg = "#FFFFFF", bold = true}
    },
})

-- Theme
vim.opt.background = "dark"
--vim.cmd.colorscheme "oxocarbon"
vim.cmd.colorscheme "citruszest"

-- Transperency
	--vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	--vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })



-- vim.opt.showmode = false
-- require('lualine').setup()

-- -- Search Configurations
-- vim.ignorecase = true

-- -- Other configurations
-- vim.wo.wrap = false
-- vim.wo.relativenumber = true
-- vim.nos = true  -- Disable swapfile creation

-- -- MY SICK REMAPS
-- vim.g.mapleader = " "
-- vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- vim.keymap.set("i", "jj", "<esc>")

-- -- Telescope Remaps
-- vim.keymap.set("n", "<leader>ff", "<cmd>lua require('telescope.builtin').find_files()<cr>")
-- vim.keymap.set("n", "<leader>lg", "<cmd>lua require('telescope.builtin').live_grep()<cr>")

-- -- NERDTree Remaps
-- vim.keymap.set("n", "<leader>nt", "<cmd>:NERDTreeToggle<cr>")

-- -- indent-blankline
-- local highlight = {
--     "CursorColumn",
--     "Whitespace",
-- }

-- require("ibl").setup {
--     indent = { highlight = highlight, char = "" },
--     whitespace = {
--         highlight = highlight,
--         remove_blankline_trail = false,
--     },
--     scope = { enabled = false },
-- }
-- lspconfig = require("lspconfig")
-- lspconfig.pylsp.setup {
-- on_attach = custom_attach,
-- settings = {
--     pylsp = {
--     plugins = {
--         -- formatter options
--         black = { enabled = true },
--         autopep8 = { enabled = false },
--         yapf = { enabled = false },
--         -- linter options
--         pylint = { enabled = true, executable = "pylint" },
--         pyflakes = { enabled = false },
--         pycodestyle = { enabled = false },
--         -- type checker
--         pylsp_mypy = { enabled = true },
--         -- auto-completion options
--         jedi_completion = { fuzzy = true },
--         -- import sorting
--         pyls_isort = { enabled = true },
--     },
--     },
-- },
-- flags = {
--     debounce_text_changes = 200,
-- },
-- capabilities = capabilities,
-- }

print("Welcome to SnoreTown")

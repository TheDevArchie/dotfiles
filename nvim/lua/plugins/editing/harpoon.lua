local harpoon = require('harpoon')
harpoon:setup({})

-- FOR TELECSOPE UI USE V
-- local conf = require('telescope.config').values
-- local function toggle_telescope(harpoon_files)
--     local file_paths = {}
--     for _, item in ipairs(harpoon_files.items) do
--         table.insert(file_paths, item.value)
--     end
--
--     require('telescope.pickers').new({}, {
--         prompt_title = "Harpoon me",
--         finder = require('telescope.finders').new_table({
--             results = file_paths,
--         }),
--         previewer = conf.file_previewer({}),
--         sorter = conf.generic_sorter({}),
--     }):find()
-- end
--
-- vim.keymap.set('n', '<leader>hl', function() toggle_telescope(harpoon:list()) end,
--     { desc = 'Harpoon List' })
vim.keymap.set('n', '<leader>hl', function() harpoon.ui:toggle_quick_menu(harpoon:list()) end,
    { desc = 'Harpoon List' })
vim.keymap.set('n', '<leader>ha', function () harpoon:list():add() end)
vim.keymap.set('n', '<leader>hn', function () harpoon:list():next() end)
vim.keymap.set('n', '<leader>hp', function () harpoon:list():prev() end)

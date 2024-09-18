local map = function(lhs, rhs, desc, opts)
    vim.keymap.set('n', lhs, rhs, vim.tbl_deep_extend('force', { desc = 'LSP: ' .. desc }, opts or {}))
end

map('gs', vim.lsp.buf.hover, 'Hover')
map('gS', vim.lsp.buf.signature_help, 'Signature Help')
map('ga', vim.lsp.buf.code_action, 'Code Action')
map('gR', vim.lsp.buf.rename, 'Rename Variable')

map('gd', function()
    require('mini.extra').pickers.lsp({ scope = 'definition' })
end, 'Goto Definition')

map('gr', function()
    require('mini.extra').pickers.lsp({ scope = 'references' })
end, 'Goto References')

map('<leader>li', '<cmd>LspInfo<CR>', 'LspInfo')
map('<leader>lr', '<cmd>LspRestart<CR>', 'LspRestart')
map('<leader>ll', '<cmd>LspLog<CR>', 'LspLog')

map('<leader>th', function()
    vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled())
end, 'Toggle Inlay Hints')


local servers = {
    lua_ls = {
        settings = {
            Lua = {
                hint = { enable = true },
                diagnostics = {
                    disable = { 'missing-fields' },
                    globals = { 'vim', 'hs' },
                },
            },
        },
    },

    basedpyright = {
        settings = {
            basedpyright = {
                analysis = {
                    typeCheckingMode = 'off',
                    diagnosticMode = 'openFilesOnly',
                },
            },
        },
    },
}

local capabilities = vim.tbl_deep_extend(
    'force',
    vim.lsp.protocol.make_client_capabilities(),
    require('cmp_nvim_lsp').default_capabilities()
)

local lspconfig = require('lspconfig')
for server, config in pairs(servers) do
    config.capabilities = capabilities
    lspconfig[server].setup(config)
end


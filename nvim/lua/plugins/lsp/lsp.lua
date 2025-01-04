-- For Ruff lsp, ruff and ruff_lsp need to be installed first
-- pip install ruff_lsp
-- https://github.com/astral-sh/ruff-lsp?tab=readme-ov-file

local function get_python_path()
    local handle = io.open("which python3")

    if handle == nil then
        return ""
    end

    local interpreter_path = handle:read("*a"):gsub("%s+", "")
    handle:close()

    return interpreter_path
end

local function get_ruff_path()
    local handle = io.open("which ruff")

    if handle == nil then
        return ""
    end

    local ruff_path = handle:read("*a"):gsub("%s+", "")
    handle:close()

    return ruff_path
end

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
                    diagnosticMode = 'openFilersOnly',
                },
            },
        },
    },
    ruff_lsp = {
        settings = {
            ruff = {
                interpreter = get_python_path(),
                path = get_ruff_path()
            },
        },
    },
    gopls = {
        settings = {
            cmd = {'gopls'},
            experimentalPostfixCompletions = true,
            analyses = {
                unusedparams = true,
                shadow = true,
             },
            staticcheck = true,
            gofumpt = true,
        },
    },
}

local capabilities = vim.lsp.protocol.make_client_capabilities()
local lspconfig = require('lspconfig')
for server, config in pairs(servers) do
  config.capabilities =
    vim.tbl_deep_extend('force', capabilities, require('blink.cmp').get_lsp_capabilities(config.capabilities))
  lspconfig[server].setup(config)
end

require('lspconfig.ui.windows').default_options = { border = 'single' }
vim.cmd("LspStart")

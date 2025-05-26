-- For Ruff lsp, ruff and ruff_lsp need to be installed first
-- pip install ruff_lsp
-- https://github.com/astral-sh/ruff-lsp?tab=readme-ov-file


local function best_diagnostic(diagnostics)
  if vim.tbl_isempty(diagnostics) then
    return
  end

  local best = nil
  local line_diagnostics = {}
  local line_nr = vim.api.nvim_win_get_cursor(0)[1] - 1

  for k, v in pairs(diagnostics) do
    if v.lnum == line_nr then
      line_diagnostics[k] = v
    end
  end

  for _, diagnostic in ipairs(line_diagnostics) do
    if best == nil then
      best = diagnostic
    elseif diagnostic.severity < best.severity then
      best = diagnostic
    end
  end

  return best
end

local function current_line_diagnostics()
  local bufnr = 0
  local line_nr = vim.api.nvim_win_get_cursor(0)[1] - 1
  local opts = { ["lnum"] = line_nr }

  return vim.diagnostic.get(bufnr, opts)
end

local signs = {
  Error = " ",
  Warn = " ",
  Hint = " ",
  Info = " ",
}

local virt_handler = vim.diagnostic.handlers.virtual_text
local ns = vim.api.nvim_create_namespace "current_line_virt"
local severity = vim.diagnostic.severity
local virt_options = {
  prefix = "",
  format = function(diagnostic)
    local message = vim.split(diagnostic.message, "\n")[1]

    if diagnostic.severity == severity.ERROR then
      return signs.Error .. message
    elseif diagnostic.severity == severity.INFO then
      return signs.Info .. message
    elseif diagnostic.severity == severity.WARN then
      return signs.Warn .. message
    elseif diagnostic.severity == severity.HINT then
      return signs.Hint .. message
    else
      return message
    end
  end,
}

vim.diagnostic.handlers.current_line_virt = {
  show = function(_, bufnr, diagnostics, _)
    local diagnostic = best_diagnostic(diagnostics)
    if not diagnostic then
      return
    end

    local filtered_diagnostics = { diagnostic }

    pcall(
      virt_handler.show,
      ns,
      bufnr,
      filtered_diagnostics,
      { virtual_text = virt_options }
    )
  end,
  hide = function(_, bufnr)
    bufnr = bufnr or vim.api.nvim_get_current_buf()
    virt_handler.hide(ns, bufnr)
  end,
}

vim.diagnostic.config {
  float = { source = "always" },
  signs = false,
  virtual_text = false,
  severity_sort = true,
  current_line_virt = true,
}

for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end

local util = require "vim.lsp.util"
local api = vim.api
local originalReferenceHandler = vim.lsp.handlers["textDocument/references"]
local log = require "vim.lsp.log"

local function location_handler(_, result, ctx, _)
  if result == nil or vim.tbl_isempty(result) then
    local _ = log.info() and log.info(ctx.method, "No location found")
    return nil
  end
  local client = vim.lsp.get_client_by_id(ctx.client_id)

  if vim.tbl_islist(result) then
    util.jump_to_location(result[1], client.offset_encoding)

    if #result > 1 then
      vim.fn.setloclist(0, {}, " ", {
        title = "LSP locations",
        items = util.locations_to_items(result, client.offset_encoding),
      })
      api.nvim_command "lopen"
    end
  else
    util.jump_to_location(result, client.offset_encoding)
  end
end

vim.lsp.handlers["textDocument/declaration"] = location_handler
vim.lsp.handlers["textDocument/definition"] = location_handler
vim.lsp.handlers["textDocument/typeDefinition"] = location_handler
vim.lsp.handlers["textDocument/implementation"] = location_handler
vim.lsp.handlers["textDocument/references"] = function(hz, result, ctx, _)
  originalReferenceHandler(hz, result, ctx, { loclist = true })
end

function augroup(name, fn)
  vim.api.nvim_create_augroup(name, {
    clear = true,
  })

  return {
    autocmd = function(event, opts)
      opts.group = name
      vim.api.nvim_create_autocmd(event, opts)
    end,
  }
end

vim.api.nvim_create_augroup("lsp_document_highlight", {
  clear = true,
})

vim.api.nvim_create_augroup("lsp_diagnostic_current_line", {
  clear = true,
})

function _G.on_attach_callback(client, bufnr)
  require("lsp-format").on_attach(client, bufnr)

  vim.cmd [[
    hi! link DiagnosticVirtualTextHint Comment
    hi! link DiagnosticVirtualTextInfo Comment
    hi! link DiagnosticVirtualTextWarn Comment
    hi! link DiagnosticVirtualTextError Comment
  ]]

  if not vim.api.nvim_buf_is_loaded(bufnr) then
    return
  end

  vim.api.nvim_clear_autocmds {
    buffer = bufnr,
    group = "lsp_diagnostic_current_line",
  }

  vim.api.nvim_create_autocmd({ "CursorHold", "CursorHoldI" }, {
    group = "lsp_diagnostic_current_line",
    buffer = bufnr,
    callback = function()
      vim.diagnostic.handlers.current_line_virt.show(
        nil,
        0,
        current_line_diagnostics(),
        nil
      )
    end,
  })

  vim.api.nvim_create_autocmd("CursorMoved", {
    group = "lsp_diagnostic_current_line",
    buffer = bufnr,
    callback = function()
      vim.diagnostic.handlers.current_line_virt.hide(nil, nil)
    end,
  })

  if client.resolved_capabilities.document_highlight then
    vim.api.nvim_clear_autocmds {
      buffer = bufnr,
      group = "lsp_document_highlight",
    }
    vim.api.nvim_create_autocmd({ "CursorHold", "CursorHoldI" }, {
      group = "lsp_document_highlight",
      buffer = bufnr,
      callback = vim.lsp.buf.document_highlight,
    })
    vim.api.nvim_create_autocmd("CursorMoved", {
      group = "lsp_document_highlight",
      buffer = bufnr,
      callback = vim.lsp.buf.clear_references,
    })
  end
end

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
map('gl', vim.diagnostic.open_float, 'Hover Diag')
map('gr', function()
    require('mini.extra').pickers.lsp({ scope = 'references' })
end, 'Goto References')

map('<leader>li', '<cmd>LspInfo<CR>', 'LspInfo')
map('<leader>lr', '<cmd>LspRestart<CR>', 'LspRestart')
map('<leader>ll', '<cmd>LspLog<CR>', 'LspLog')

map('<leader>td', function ()
    vim.diagnostic.enable(not vim.diagnostic.is_enabled(), { bufnr = 0 })
end, 'Toggle Diag')

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
    ruff = {
        init_options = {
            settings = {
                logLevel = 'debug',
            },
        },
    },
    -- ruff_lsp = {
    --     settings = {
    --         ruff = {
    --             interpreter = get_python_path(),
    --             path = get_ruff_path()
    --         },
    --     },
    -- },
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
  config.on_attach = _G.on_attach_callback,
  lspconfig[server].setup(config)
end

require('lspconfig.ui.windows').default_options = { border = 'single' }

vim.cmd("LspStart")
vim.keymap.set("n", "<leader>fi", require("lspimport").import, { noremap = true })

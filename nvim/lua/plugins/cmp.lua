return {
  {
    "hrsh7th/nvim-cmp",
    event = { "InsertEnter", "CmdlineEnter" },
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
      --"hrsh7th/cmp-nvim-lsp-signature-help",
      --"hrsh7th/cmp-path",
      --"hrsh7th/cmp-buffer",
      --"hrsh7th/cmp-cmdline",
      --"hrsh7th/cmp-calc",
      --"dmitmel/cmp-cmdline-history",
    },
    config = function()
      local cmp = require("cmp")
      cmp.setup({
        sources = {
          --{ name = "lazydev", group_index = 0 },
          { name = "nvim_lsp", max_item_count = 5 },
          --{ name = "nvim_lsp_signature_help" },
          --{ name = "buffer", max_item_count = 3 },
          --{ name = "calc" },
          --{ name = "path" },
        },
        snippet = {
          expand = function(args)
            vim.snippet.expand(args.body)
          end,
        },
        window = {
          completion = {
            border = "single",
            side_padding = 0,
            scrollbar = false,
          },
          documentation = {
            border = "single",
            max_width = math.floor(0.33 * vim.o.columns),
            max_height = math.floor(0.33 * vim.o.lines),
          },
        },
        -- https://github.com/hrsh7th/nvim-cmp/discussions/609#discussioncomment-5727678
        -- https://github.com/Roundlay/nvim/blob/main/lua/plugins/lazy-cmp.lua
        formatting = {
          fields = { "abbr", "menu", "kind" },
          format = function(entry, item)
            local menu_icon = {
              nvim_lsp = "LSP",
              nvim_lua = "LUA",
              buffer = "BUF",
              path = "PTH",
            }
            item.menu = menu_icon[entry.source.name]
            local content = item.abbr
            local win_width = vim.api.nvim_win_get_width(0)
            local max_content_width = math.floor(win_width * 0.15)
            if #content > max_content_width then
              item.abbr = vim.fn.strcharpart(content, 0, max_content_width - 1) .. "…"
            else
              item.abbr = content .. (" "):rep(max_content_width - #content)
            end
            return item
          end,
        },
        completion = {
          keyword_length = 1,
          completeopt = "menu,menuone,preview,noinsert",
        },
        mapping = cmp.mapping.preset.insert({
          ["<CR>"] = cmp.mapping.confirm({ select = true }),
          ["<C-c>"] = cmp.mapping.abort(),
          ["<C-n>"] = cmp.mapping.select_next_item(),
          ["<C-p>"] = cmp.mapping.select_prev_item(),
          ["<C-x>"] = cmp.mapping.complete(),
          ["<C-d>"] = cmp.mapping.scroll_docs(4),
          ["<C-u>"] = cmp.mapping.scroll_docs(-4),
          -- snippets
          ["<C-l>"] = cmp.mapping(function(fallback)
            if vim.snippet.active({ direction = 1 }) then
              vim.snippet.jump(1)
            else
              fallback()
            end
          end, { "i", "s" }),
          ["<C-h>"] = cmp.mapping(function(fallback)
            if vim.snippet.active({ direction = -1 }) then
              vim.snippet.jump(-1)
            else
              fallback()
            end
          end, { "i", "s" }),
        }),
      })

      -- rust
      local compare = require("cmp.config.compare")
      
      -- / cmdline setup
      cmp.setup.cmdline({ "/", "?" }, {
        completion = {
          keyword_length = 1,
          completeopt = "menu,menuone,preview,noinsert,noselect",
        },
        mapping = cmp.mapping.preset.cmdline(),
        sources = {
          { name = "buffer" },
        },
      })
      -- : cmdline setup
      cmp.setup.cmdline(":", {
        completion = {
          keyword_length = 1,
          completeopt = "menu,menuone,preview,noinsert,noselect",
        },
        mapping = cmp.mapping.preset.cmdline(),
        sources = cmp.config.sources({
          { name = "cmdline_history" },
          { name = "cmdline" },
          { name = "path" },
        }),
      })
    end,
  },

}
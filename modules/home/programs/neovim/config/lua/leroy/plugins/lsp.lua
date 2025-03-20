return {
  'neovim/nvim-lspconfig',
  dependencies = {
    'hrsh7th/nvim-cmp',
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-path',
    'saadparwaiz1/cmp_luasnip',
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-nvim-lua',
    'nvimtools/none-ls.nvim',
    'L3MON4D3/LuaSnip',
    'rafamadriz/friendly-snippets',
  },

  config = function()
    local cmp = require('cmp')
    local cmp_lsp = require("cmp_nvim_lsp")
    local cmp_select = { behavior = cmp.SelectBehavior.Select }
    local capabilities = cmp_lsp.default_capabilities()
    local lsp = require("lspconfig")
    local null_ls = require("null-ls")

    cmp.setup({
      mapping = cmp.mapping.preset.insert({
        ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
        ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
        ['<C-e>'] = cmp.mapping.abort(),
        ['<CR>'] = cmp.mapping.confirm({ select = true }),
        ["<C-Space>"] = cmp.mapping.complete(),
      }),
      sources = cmp.config.sources({
        { name = 'nvim_lsp' },
        { name = 'luasnip' },
        { name = 'buffer' },
      }),
      window = {
        completion = cmp.config.window.bordered({
          border = 'rounded'
        }),
        documentation = cmp.config.window.bordered({
          border = 'rounded'
        })
      }
    })

    lsp.gopls.setup({
      capabilities = capabilities,
    })

    lsp.clangd.setup({
      capabilities = capabilities,
    })

    lsp.pyright.setup({
      capabilities = capabilities,
    })

    lsp.ts_ls.setup({
      capabilities = capabilities,
    })

    lsp.lua_ls.setup({
      capabilities = capabilities,
      settings = {
        Lua = {
          diagnostics = {
            globals = { "bit", "vim", "it", "describe", "before_each", "after_each" },
          }
        }
      }
    })

    lsp.nixd.setup({
      capabilities = capabilities,
      cmd = {"nixd"},
      settings = {
        nixd = {
          nixpkgs = {
            expr = "import <nixpkgs> {}",
          },
          formatting = {
            command = {"nixfmt"}
          },
          options = {
            nixos = {
               expr = '(builtins.getFlake ("git+file://" + toString /home/leroy/noise)).nixosConfigurations.noise.options',
            },
            home_manager = {
               expr = '(builtins.getFlake ("git+file://" + toString /home/leroy/noise)).homeConfigurations."leroy@noise".options',
            },
         },
        },
      },
    })

    null_ls.setup({
      sources = {
        null_ls.builtins.diagnostics.markdownlint,
        null_ls.builtins.diagnostics.deadnix,
        null_ls.builtins.formatting.stylua,
      },
    })


    local opts = { buffer = bufnr, remap = false }
    vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
    vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
    vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
    vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
    vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
    vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
    vim.keymap.set("n", "<leader>ca", function() vim.lsp.buf.code_action() end, opts)
    vim.keymap.set("n", "<leader>rf", function() vim.lsp.buf.references() end, opts)
    vim.keymap.set("n", "<leader>rn", function() vim.lsp.buf.rename() end, opts)
    vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)

    vim.diagnostic.config({
      float = {
        focusable = false,
        style = 'minimal',
        border = 'rounded',
        source = 'always',
        header = '',
        prefix = '',
      },
    })

    vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(
      vim.lsp.handlers.hover, {
        border = 'rounded',
        max_width = 60
      })

    vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(
      vim.lsp.handlers.signature_help, {
        border = 'rounded'
      })
  end
}

return {
	"neovim/nvim-lspconfig",
	dependencies = {
		"hrsh7th/nvim-cmp",
		"hrsh7th/cmp-buffer",
		"hrsh7th/cmp-path",
		"hrsh7th/cmp-nvim-lsp",
		"nvimtools/none-ls.nvim",
	},

	config = function()
		local cmp = require("cmp")
		local cmp_select = { behavior = cmp.SelectBehavior.Select }
		local null_ls = require("null-ls")

		cmp.setup({
			mapping = cmp.mapping.preset.insert({
				["<C-p>"] = cmp.mapping.select_prev_item(cmp_select),
				["<C-n>"] = cmp.mapping.select_next_item(cmp_select),
				["<C-e>"] = cmp.mapping.abort(),
				["<CR>"] = cmp.mapping.confirm({ select = true }),
				["<C-Space>"] = cmp.mapping.complete(),
			}),
			sources = cmp.config.sources({
				{ name = "nvim_lsp" },
				{ name = "buffer" },
			}),
			window = {
				completion = cmp.config.window.bordered({
					border = "rounded",
				}),
				documentation = cmp.config.window.bordered({
					border = "rounded",
				}),
			},
		})

		vim.lsp.enable({
			"lua_ls",
			"nixd",
			"gopls",
			"clangd",
			"ts_ls",
			"pyright",
			"rust_analyzer",
			"zls",
			"bashls",
		})

		vim.lsp.config("lua_ls", {
			settings = {
				Lua = {
					diagnostics = {
						globals = { "bit", "vim", "it", "describe", "before_each", "after_each" },
					},
				},
			},
		})

		null_ls.setup({
			sources = {
				null_ls.builtins.diagnostics.deadnix,
				null_ls.builtins.formatting.stylua,
			},
		})

		local opts = { buffer = bufnr, remap = false }
		vim.keymap.set("n", "gd", function()
			vim.lsp.buf.definition()
		end, opts)
		vim.keymap.set("n", "K", function()
			vim.lsp.buf.hover()
		end, opts)
		vim.keymap.set("n", "<leader>vws", function()
			vim.lsp.buf.workspace_symbol()
		end, opts)
		vim.keymap.set("n", "<leader>vd", function()
			vim.diagnostic.open_float()
		end, opts)
		vim.keymap.set("n", "[d", function()
			vim.diagnostic.goto_next()
		end, opts)
		vim.keymap.set("n", "]d", function()
			vim.diagnostic.goto_prev()
		end, opts)
		vim.keymap.set("n", "<leader>ca", function()
			vim.lsp.buf.code_action()
		end, opts)
		vim.keymap.set("n", "<leader>rf", function()
			vim.lsp.buf.references()
		end, opts)
		vim.keymap.set("n", "<leader>rn", function()
			vim.lsp.buf.rename()
		end, opts)
		vim.keymap.set("i", "<C-h>", function()
			vim.lsp.buf.signature_help()
		end, opts)
	end,
}

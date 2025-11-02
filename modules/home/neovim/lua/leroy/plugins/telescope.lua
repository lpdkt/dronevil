return {
	"nvim-telescope/telescope.nvim",
	branch = "0.1.x",
	dependencies = { { "nvim-lua/plenary.nvim" } },
	config = function()
		local builtin = require("telescope.builtin")
		vim.g.tokyonight_dark_float = false
		vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
		vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
		vim.keymap.set("n", "<leader>fo", builtin.oldfiles, {})
		vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
		vim.keymap.set("n", "<leader>fq", builtin.quickfix, {})
		vim.keymap.set("n", "<leader>fv", builtin.builtin, {})
		vim.keymap.set("n", "<leader>fs", function()
			builtin.grep_string({ search = vim.fn.input("Grep > ") })
		end)
		vim.keymap.set("n", "<leader>fd", function()
			builtin.diagnostics(require("telescope.themes").get_ivy({}))
		end)
	end,
}

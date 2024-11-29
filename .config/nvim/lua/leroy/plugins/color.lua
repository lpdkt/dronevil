return {
	'ellisonleao/gruvbox.nvim',
	priority = 1000,
	config = function()
		require("gruvbox").setup({
			overrides = {},
			dim_inactive = false,
			transparent_mode = true,
		})
	end,
}

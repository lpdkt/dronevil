return {
    'folke/tokyonight.nvim',
    config = function()
        require('tokyonight').setup({
            transparent = true,
            style = 'night',
            styles = {
                sidebars = "transparent",
                floats = "transparent"
            },
            dims_inactive = true,
            lualine_bold = true
        })
    end
}

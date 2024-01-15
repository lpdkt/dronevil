return {
    'folke/tokyonight.nvim',
    config = function()
        require('tokyonight').setup({
            transparent = true,
            style = 'night',
            styles = {
                sidebars = "transparent",
                floats = "transparent"
            }
        })
    end
}

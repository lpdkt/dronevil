return {
  {
    'folke/tokyonight.nvim',
    lazy = false,
    priority = 1000,
    opts = {},
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
      vim.cmd [[colorscheme tokyonight-night]]
    end,
  },
}

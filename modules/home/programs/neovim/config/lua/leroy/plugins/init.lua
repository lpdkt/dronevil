return {
  'tpope/vim-fugitive',

  { 'wakatime/vim-wakatime', lazy = false },

  {
    'numToStr/Comment.nvim',
    opts = {},
    lazy = false,
  },
  {
    'windwp/nvim-autopairs',
    event = "InsertEnter",
    config = true
  },

  {
    'https://gitlab.com/itaranto/id3.nvim',
    version = '*',
    config = function() require('id3').setup() end,
  }

}

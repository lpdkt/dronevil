return {
  'mbbill/undotree',
  'tpope/vim-fugitive',
  -- 'github/copilot.vim',

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
}
}

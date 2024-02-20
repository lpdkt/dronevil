return {
    'mbbill/undotree',
    'tpope/vim-fugitive',
    'xiyaowong/transparent.nvim',
    'eandrju/cellular-automaton.nvim',
    -- 'github/copilot.vim',
    { 'wakatime/vim-wakatime', lazy = false },

    {
        'numToStr/Comment.nvim',
        opts = {},
        lazy = false,
    },


    {
        "ThePrimeagen/refactoring.nvim",
        dependencies = {
            { "nvim-lua/plenary.nvim" },
        }
    },

    {
        'windwp/nvim-autopairs',
        event = "InsertEnter",
        opts = {}
    },

}

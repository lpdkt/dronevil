return {
    'nvim-treesitter/playground',
    'mbbill/undotree',
    'tpope/vim-fugitive',
    'weilbith/nvim-code-action-menu',
    'xiyaowong/transparent.nvim',
    'ThePrimeagen/vim-be-good',

    {
        "ThePrimeagen/refactoring.nvim",
        dependencies = {
            { "nvim-lua/plenary.nvim" },
        }
    },

    {
        'numToStr/Comment.nvim',
        lazy = false,
    },

    {
        "folke/trouble.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" },
    },
    
    {
        'windwp/nvim-autopairs',
        event = "InsertEnter",
        opts = {} -- this is equalent to setup({}) function
    }
    
}

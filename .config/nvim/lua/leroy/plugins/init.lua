return {
    'mbbill/undotree',
    'tpope/vim-fugitive',
    'xiyaowong/transparent.nvim',
    'Civitasv/cmake-tools.nvim',

    {
        "ThePrimeagen/refactoring.nvim",
        dependencies = {
            { "nvim-lua/plenary.nvim" },
        }
    },

    {
        'windwp/nvim-autopairs',
        event = "InsertEnter",
        opts = {} -- this is equalent to setup({}) function
    }

}

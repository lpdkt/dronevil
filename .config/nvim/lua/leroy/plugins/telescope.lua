return {
    'nvim-telescope/telescope.nvim',
    branch = '0.1.x',
    -- or                            , branch = '0.1.x',
    dependencies = { { 'nvim-lua/plenary.nvim' } },
    config = function()
        require("telescope").load_extension("refactoring")
        local builtin = require('telescope.builtin')
        vim.g.tokyonight_dark_float = false
        vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
        vim.keymap.set('n', '<C-p>', builtin.git_files, {})
        vim.keymap.set('n', '<leader>fs', function()
            builtin.grep_string({ search = vim.fn.input("Grep > ") });
        end)
        -- remap to open the Telescope refactoring menu in visual mode
        vim.api.nvim_set_keymap(
            "v",
            "<leader>rr",
            "<Esc><cmd>lua require('telescope').extensions.refactoring.refactors()<CR>",
            { noremap = true }
        )
    end
}

return {
  'nvim-telescope/telescope.nvim',
  branch = '0.1.x',
  -- or                            , branch = '0.1.x',
  dependencies = { { 'nvim-lua/plenary.nvim' } },
  config = function()
    local builtin = require('telescope.builtin')
    vim.g.tokyonight_dark_float = false
    vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
    vim.keymap.set('n', '<C-p>', builtin.git_files, {})
    vim.keymap.set('n', '<leader>fs', function()
      builtin.grep_string({ search = vim.fn.input("Grep > ") });
    end)
  end
}

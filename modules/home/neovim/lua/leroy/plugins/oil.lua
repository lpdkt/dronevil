return {
  "stevearc/oil.nvim",
  config = function()
    require("oil").setup({
      default_file_explorer = true,
      columns = {
        "icon",
      },
      keymaps = {
        ["<C-c>"] = "actions.close",
        ["<BS>"] = "actions.parent",
        ["g."] = "actions.toggle_hidden",
      },
      use_default_keymaps = true,
      vim.keymap.set("n", "<leader>ft", "<cmd>Oil<CR>")
    })
  end
}

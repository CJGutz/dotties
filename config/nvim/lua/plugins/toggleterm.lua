return {
  "akinsho/toggleterm.nvim",
  version = "*",
  config = function()
    require("toggleterm").setup {
      direction = "vertical",
      size = 100
    }

    vim.keymap.set("n", "<C-N>", ":ToggleTerm<CR>")
  end
}

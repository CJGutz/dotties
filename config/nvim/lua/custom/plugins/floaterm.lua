return {
  'voldikss/vim-floaterm',
  config = function ()
    vim.keymap.set({"n", "v"}, "<leader>t", "<cmd>FloatermNew<cr>", { desc = "Open floating [t]erminal"})
  end

}

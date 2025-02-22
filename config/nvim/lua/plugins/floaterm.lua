return {
  'voldikss/vim-floaterm',
  config = function ()
    vim.keymap.set({"n", "v"}, "<leader>te", "<cmd>FloatermNew<cr>", { desc = "Open floating [te]rminal"})
  end

}

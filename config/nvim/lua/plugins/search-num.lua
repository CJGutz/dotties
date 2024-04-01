return {
  "kevinhwang91/nvim-hlslens",
  config = function()
    vim.keymap.set('n', '<leader>l', '<cmd>noh<CR>', { desc = 'Remove search term' })
  end,
}

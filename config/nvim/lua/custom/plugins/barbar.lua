return {
  'romgrk/barbar.nvim',
  dependencies = {
    'nvim-tree/nvim-web-devicons',
    'lewis6991/gitsigns.nvim',
  },
  init = function() vim.g.barbar_auto_setup = true end,
  config = function ()
    require('barbar').setup({
      insert_at_end = true,
    })
    vim.keymap.set('n', '<C-J>', ':bprevious<CR>', {desc = "Previous buffer"})
    vim.keymap.set('n', '<C-K>', ':bnext<CR>', {desc = "Next buffer"})
  end,
  version = '^1.0.0',
}

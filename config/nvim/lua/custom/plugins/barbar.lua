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
    vim.keymap.set('n', '<C-H>', ':BufferMovePrevious<CR>', {desc = "Move buffer left"})
    vim.keymap.set('n', '<C-L>', ':BufferMoveNext<CR>', {desc = "Move buffer right"})
    vim.keymap.set('n', '<C-P>', ':BufferPick<CR>', {desc = "Select buffer to go to"})
    vim.keymap.set('n', '<C-Q>', ':BufferClose<CR>', {desc = "Close current buffer"})
    vim.keymap.set('n', '<C-D>', ':BufferPickDelete<CR>', {desc = "Select buffers to delete"})
  end,
  version = '^1.0.0',
}

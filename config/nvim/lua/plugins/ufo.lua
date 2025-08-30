return {
  "kevinhwang91/nvim-ufo",
  dependencies = { "kevinhwang91/promise-async" },
  event = "BufReadPost",
  config = function()
    vim.o.foldlevel = 99
    local ufo = require("ufo")
    ufo.setup({
      close_fold_kinds_for_ft = {
        default = { "imports", "comment" },
        python = { "import_from_statement" },
      },
      provider_selector = function(bufnr, filetype, buftype)
        return { "treesitter", "indent" }
      end,
    })
    vim.keymap.set("n", "zR", ufo.openAllFolds)
    vim.keymap.set("n", "zM", ufo.closeAllFolds)
  end,
}

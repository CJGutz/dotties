return {
  "tomtomjhj/coq-lsp.nvim",
  event = "VeryLazy",
  dependencies = {
    "neovim/nvim-lspconfig",
    "whonore/Coqtail"
  },
  config = function ()
    require('coq-lsp').setup {
      loaded_coqtail = 1,
      coqtail = 0,
    }
  end
}

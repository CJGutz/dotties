return {
  -- Make sure to set this up properly if you have lazy=true
  'MeanderingProgrammer/render-markdown.nvim',
  dependencies = {
    'nvim-treesitter/nvim-treesitter',
    'latex-lsp/tree-sitter-latex',
  },
  opts = {
    file_types = { "markdown", "Avante" },
  },

  config = function()
    require("render-markdown").setup({
      latex = {
          command = "latex2text",
      },
      render_modes = { 'n', 'c', 't', 'i' },
      code = {
        border = "thick"
      }
    })
  end,
}

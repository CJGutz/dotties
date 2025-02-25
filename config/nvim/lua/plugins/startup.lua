return {
  "startup-nvim/startup.nvim",
  requires = {"nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim"},
  config = function()
    vim.g.startup_bookmarks = {
      ["B"] = '~/telescope/Backend/README.md',
      ["F"] = '~/telescope/Frontend/README.md',
      ["N"] = '~/dotties/config/nvim/init.lua',
      ["U"] = '~/onlyMe/projects/unchained/README.md',
    }
    require"startup".setup({
      theme = "eagle",
    })
  end
}

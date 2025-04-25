return {
  "kelly-lin/ranger.nvim",
  config = function()
    require("ranger-nvim").setup({
      replace_netrw = true,
      enable_cmds = true,
      ui = {
        border = "rounded",  -- See :help winborder
        height = 0.93,  -- Enough to avoid obstruction by airline
        width = 1,
        x = 0.5,
        y = 0,
      }
    })
    vim.api.nvim_set_keymap("n", "<leader>f", "", {
      noremap = true,
      callback = function()
        require("ranger-nvim").open(true)
      end,
      desc = "Open ranger [f]ile manager",
    })
  end,
}

return {
  "https://github.com/lewis6991/gitsigns.nvim",
  config = function()
    require("gitsigns").setup {
      linehl = false,
      sign_priority = 6,
      status_formatter = nil,
      current_line_blame = true,
    }

    vim.keymap.set("n", "<leader>gh", ":Gitsigns next_hunk<CR>", {
      desc = "next git [h]unk",
    })
    vim.keymap.set("n", "<leader>gp", ":Gitsigns preview_hunk<CR>", {
      desc = "[p]review current git hunk",
    })
  end
}

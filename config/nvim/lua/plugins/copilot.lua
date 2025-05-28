-- Configuration for copilot

return {
  "github/copilot.vim",
  config = function()
    vim.g.copilot_no_tab_map = true
    vim.api.nvim_set_keymap("i", "<C-J>", 'copilot#Accept("<CR>")', { silent = true, expr = true })
    vim.g.copilot_filetypes = {
      ["javascript"] = true,
      ["typescript"] = true,
      ["tsx"] = true,
      ["lua"] = true,
      ["rust"] = true,
      ["c"] = true,
      ["c#"] = true,
      ["c++"] = true,
      ["go"] = true,
      ["python"] = true,
      ["haskell"] = false
    }
  end

}

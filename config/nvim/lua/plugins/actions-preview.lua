return {
  "rachartier/tiny-code-action.nvim",
  config = function()
    vim.keymap.set({ "v", "n" }, "<leader>ca", require("tiny-code-action").code_action, { noremap = true, silent = true })
  end,
  dependencies = {
    { "nvim-lua/plenary.nvim" },
  },
  event = "LspAttach",
  opts = {
    --- The backend to use, currently only "vim", "delta" and "difftastic" are supported
    backend = "vim",

    -- The picker to use, "telescope", "snacks", "select" are supported
    -- And it's opts that will be passed at the picker's creation, optional
    -- If you want to use the `fzf-lua` picker, you can simply set it to `select`
    --
    -- You can also set `picker = "telescope"` without any opts.
    picker = {
      "telescope",
      opts = {
        layout_strategy = "vertical",
        layout_config = {
          width = 0.7,
          height = 0.9,
          preview_cutoff = 1,
          preview_height = function(_, _, max_lines)
            local h = math.floor(max_lines * 0.5)
            return math.max(h, 10)
          end,
        },
      },
    },
    -- The icons to use for the code actions
    -- You can add your own icons, you just need to set the exact action's kind of the code action
    -- You can set the highlight like so: { link = "DiagnosticError" } or  like nvim_set_hl ({ fg ..., bg..., bold..., ...})
    signs = {
      quickfix = { "󰁨", { link = "DiagnosticInfo" } },
      others = { "?", { link = "DiagnosticWarning" } },
      refactor = { "", { link = "DiagnosticWarning" } },
      ["refactor.move"] = { "󰪹", { link = "DiagnosticInfo" } },
      ["refactor.extract"] = { "", { link = "DiagnosticError" } },
      ["source.organizeImports"] = { "", { link = "DiagnosticWarning" } },
      ["source.fixAll"] = { "", { link = "DiagnosticError" } },
      ["source"] = { "", { link = "DiagnosticError" } },
      ["rename"] = { "󰑕", { link = "DiagnosticWarning" } },
      ["codeAction"] = { "", { link = "DiagnosticError" } },
    },
  }
}

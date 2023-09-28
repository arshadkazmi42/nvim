return {
  "Pocco81/auto-save.nvim",
  keys = {
    {
      "<leader>fa",
      ":ASToggle<CR>",
      desc = "Toggle Auto Save",
    },
  },
  config = function()
    require("auto-save").setup({})
  end,
}

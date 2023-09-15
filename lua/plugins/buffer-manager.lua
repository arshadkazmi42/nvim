return {
  "j-morano/buffer_manager.nvim",
  dependency = { "nvim-lua/plenary.nvim" },
  keys = {
    {
      "<leader>bl",
      ":lua require('buffer_manager.ui').toggle_quick_menu()<CR>",
      desc = "Buffer List Toggle",
    },
  },
}

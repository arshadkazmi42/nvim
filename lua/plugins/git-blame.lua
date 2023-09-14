return {
  "f-person/git-blame.nvim",
  cmd = "GitBlameToggle",
  keys = {
    { "<leader>gbx", "<cmd>GitBlameToggle<cr>", desc = "Git Blame Toggle" },
    { "<leader>gbo", "<cmd>GitBlameOpenFileURL<cr>", desc = "Open file in default Browser" },
    { "<leader>gbc", "<cmd>GitBlameCopyFileURL<cr>", desc = "Copy file URL" },
  },
}

-- ~/.config/nvim/lua/plugins/custom-lsp.lua
return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      ruby_ls = {
        on_exit = function(_, code)
          print("Ruby LSP exited with code " .. code)
        end,
      },
    },
  },
  init = function()
    vim.api.nvim_create_autocmd("VimLeavePre", {
      callback = function()
        vim.lsp.stop_client(vim.lsp.get_active_clients())
      end,
    })
  end,
}

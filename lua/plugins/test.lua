return {
  {
    "nvim-neotest/neotest",
    dependencies = { "haydenmeade/neotest-jest" },
    keys = {
      {
        "<leader>tl",
        function()
          require("neotest").run.run_last()
        end,
        desc = "Run Last Executed Test",
      },
    },
    opts = function(_, opts)
      table.insert(
        opts.adapters,
        require("neotest-jest")({
          jestCommand = "pnpm test --",
          jestConfigFile = "custom.jest.config.ts",
          env = { CI = true },
          cwd = function()
            return vim.fn.getcwd()
          end,
        })
      )
    end,
  },
}

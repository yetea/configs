return {
  -- "pmizio/typescript-tools.nvim",
  -- dependencies = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
  -- opts = {},
  -- keys = {
  --   { "<leader>mi",  "<cm>TSToolsAddMissingImports<cr>" },
  --   { "<leader>oi",  "<cmd>TSToolsOrganizeImports<cr>" },
  --   { "<leader>rui", "<cmd>TSToolsRemoveUnusedImports<cr>" },
  --   { "<leader>ru",  "<cmd>TSToolsRemoveUnused<cr>" },
  --   { "<leader>fa",  "<cmd>TSToolsFixAll<cr>" },
  -- },
  --
  --
  {
    "pmizio/typescript-tools.nvim",
    requires = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
    config = function()
      require("typescript-tools").setup {}
    end,
  }
}

return {
  'stevearc/conform.nvim',
  event = { "BufWritePre" },
  cmd = { "ConformInfo" },
  opts = {
    -- Define your formatters
    formatters_by_ft = {
      lua = { "stylua" },
      javascript = { { "biome" } },
      typescript = { { "biome" } },
      javascriptreact = { "biome" },
      typescriptreact = { "biome" },
      css = { "biome" },
      html = { "biome" },
      json = { "biome" },
      markdown = { "biome" },
    },
    -- Set up format-on-save
    format_on_save = { timeout_ms = 500, lsp_fallback = true },
    -- Customize formatters
    formatters = {
      shfmt = {
        prepend_args = { "-i", "2" },
      },
    },
  },
}

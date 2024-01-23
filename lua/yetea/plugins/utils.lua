return {
  { 'mg979/vim-visual-multi' },
{
  "lukas-reineke/indent-blankline.nvim",
  opts = {
    indent = {
      char = "│",
      tab_char = "│",
    },
    scope = { enabled = false },
    exclude = {
      filetypes = {
        "help",
        "alpha",
        "dashboard",
        "neo-tree",
        "Trouble",
        "trouble",
        "lazy",
        "mason",
        "notify",
        "toggleterm",
        "lazyterm",
      },
    },
  },
  main = "ibl",
},
  {
    "gelguy/wilder.nvim",
    config = function()
      local wilder = require("wilder")
      wilder.setup({
        modes = { ":", "/", "?" },
      })
      wilder.set_option("pipeline", {
        wilder.branch(wilder.cmdline_pipeline(), wilder.search_pipeline()),
      })
      wilder.set_option(
        "renderer",
        wilder.wildmenu_renderer({
          highlighter = wilder.basic_highlighter(),
        })
      )
    end,
  }
}

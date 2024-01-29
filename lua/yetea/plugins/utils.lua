return {
  { 'mg979/vim-visual-multi' },
  {
    "shellRaining/hlchunk.nvim",
    event = { "UIEnter" },
    config = function()
      require("hlchunk").setup({})
    end
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
  },
  {
    "cshuaimin/ssr.nvim",
    module = "ssr",
    keys = {
      { "<leader>sr", function() require("ssr").open() end, mode = { "n", "x" } },
    },

    -- Calling setup is optional.
    config = function()
      require("ssr").setup {
        border = "rounded",
        min_width = 50,
        min_height = 5,
        max_width = 120,
        max_height = 25,
        adjust_window = true,
        keymaps = {
          close = "q",
          next_match = "n",
          prev_match = "N",
          replace_confirm = "<cr>",
          replace_all = "<leader><cr>",
        },
      }
    end
  },
  {
    'numToStr/Comment.nvim',
    opts = {},
    lazy = false,
  }
}

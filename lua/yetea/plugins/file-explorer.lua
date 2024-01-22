return {
  {
    "nvim-tree/nvim-tree.lua",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
    },

    config = function()
      vim.g.loaded_netrw = 1
      vim.g.loaded_netrwPlugin = 1

      local nvimtree = require("nvim-tree")

      nvimtree.setup({
        sync_root_with_cwd = true,
        respect_buf_cwd = true,
        update_focused_file = {
          enable = true,
          update_root = true
        },
        view = {
          width = 28,
          relativenumber = true,
          signcolumn = "no",
        },
        renderer = {
          indent_markers = {
            enable = true,
          },
          icons = {
            glyphs = {
              default = '',
              symlink = '',
              bookmark = '◉',
              git = {
                unstaged = "U",
                staged = "S",
                unmerged = "UM",
                renamed = "R",
                deleted = "D",
                untracked = "UT",
                ignored = "I",
              },
              folder = {
                default = '',
                open = '',
                symlink = '',
              },
            },
            show = {
              git = true,
              file = true,
              folder = true,
              folder_arrow = false,
            },
          },
        },
        -- disable window_picker for
        -- explorer to work well with
        -- window splits
        actions = {
          open_file = {
            quit_on_open = true,
            window_picker = {
              enable = false,
            },
          },
        },
        filters = {
          custom = { ".DS_Store" },
        },
        git = {
          ignore = false,
        },
      })
      -- set keymaps
      local keymap = vim.keymap -- for conciseness

      keymap.set("n", "<leader>ee", "<cmd>NvimTreeToggle<CR>")
      keymap.set("n", "<leader>ef", "<cmd>NvimTreeFindFileToggle<CR>")
      keymap.set("n", "<leader>fe", "<cmd>NvimTreeFocus<CR>")
      keymap.set("n", "<leader>ec", "<cmd>NvimTreeCollapse<CR>")
      keymap.set("n", "<leader>er", "<cmd>NvimTreeRefresh<CR>")
    end,
  }
}

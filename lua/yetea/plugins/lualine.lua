return {
  {
    'nvim-lualine/lualine.nvim',
    event = "VeryLazy",
    requires = { 'nvim-tree/nvim-web-devicons', opt = true },
    init = function()
      vim.g.lualine_laststatus = vim.o.laststatus
      if vim.fn.argc(-1) > 0 then
        -- set an empty statusline till lualine loads
        vim.o.statusline = " "
      else
        -- hide the statusline on the starter page
        vim.o.laststatus = 0
      end
    end,
    config = function()
      require('lualine').setup {
        options = {
          component_separators = '',
          section_separators = '',
          theme = "auto",
        },
        sections = {
          lualine_a = { 'mode', },
          lualine_b = { 'branch', 'diff', 'diagnostics' },
          lualine_c = { { 'filename', path = 3 } },
          lualine_x = {},
          lualine_y = { {
            'filetype',
            colored = true,             -- Displays filetype icon in color if set to true
            icon_only = false,          -- Display only an icon for filetype
            icon = { align = 'right' }, -- Display filetype icon on the right hand side
            -- icon =    {'X', align='right'}
            -- Icon string ^ in table is ignored in filetype component
          } },
          lualine_z = { "os.date('%c')" }
        },
        inactive_sections = {
          lualine_a = {},
          lualine_b = {},
          lualine_c = { 'filename' },
          lualine_x = { 'location' },
          lualine_y = {},
          lualine_z = {}
        },
      }
    end
  }
}

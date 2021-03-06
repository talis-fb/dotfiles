
require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'auto',
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {},
    always_divide_middle = true,
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {'filename'},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {
      lualine_a = {{
        'buffers',
        show_filename_only = false,
        mode = 2,
        max_length = vim.o.columns,
      }},
      lualine_b = {},
      lualine_c = {},
      lualine_x = {},
      lualine_y = {},
      lualine_z = {'tabs'}
  },
  extensions = {'fugitive'}
}

-- vim.api.nvim_set_keymap('n', '[cw', ':-tabmove<CR>', { noremap=noremap, silent = true })
-- vim.api.nvim_set_keymap('n', ']cw', ':+tabmove<CR>', { noremap=noremap, silent = true })


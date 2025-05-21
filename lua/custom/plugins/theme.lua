return {
  'catppuccin/nvim',
  name = 'catppuccin',
  priority = 1000, -- Load this early
  config = function()
    require('catppuccin').setup {
      flavour = 'mocha', -- latte, frappe, macchiato, mocha
      term_colors = true,
      transparent_background = true,
      no_italic = false,
      no_bold = false,
      integrations = {
        cmp = true,
        gitsigns = true,
        nvimtree = true,
        telescope = true,
        which_key = true,
        -- Add other integrations you use
      },
    }
    vim.cmd.colorscheme 'catppuccin'
  end,
}

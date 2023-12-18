return {
  'nvim-lualine/lualine.nvim',
  opts = {
    options = {
      theme = 'catppuccin'
    },
    sections = {
      lualine_c = { 'filename' },
      lualine_y = { vim.g['metals_status'] }
    }
  }
}

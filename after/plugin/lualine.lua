local status, lualine = pcall(require, 'lualine')

-- local nightfly = require('lualine.themes.nightfly')
--
-- local new_colors = {
--   blue = '#65D1FF',
--   green = "#3EFFDC",
--   violet = '#FF61EF',
--   yellow = '#FFDA7B',
--   black = '#000000'
-- }
--
-- nightfly.normal.a.bg = new_colors.blue
-- nightfly.insert.a.bg = new_colors.green
-- nightfly.visual.a.bg = new_colors.violet
-- nightfly.command = {
--   a = {
--     gui = 'bold',
--     bg = new_colors.yellow,
--     fg = new_colors.black
--   },
-- }

lualine.setup({
  options = {
    theme = 'catppuccin'
  },
  sections = { lualine_c = { 'filename' }, lualine_y = { vim.g['metals_status'] } }
})

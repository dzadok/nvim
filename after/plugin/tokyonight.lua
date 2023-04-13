local setup, tokyonight = pcall(require, 'tokyonight')
if not setup then
  return
end

tokyonight.setup({
  style = 'night',
  transparent = true,
  styles = {
    comments = { italic = true },
    keywords = {},
    functions = {},
    variables = {},
  }
})

-- vim.cmd [[colorscheme tokyonight]]
--
-- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

local augroup = vim.api.nvim_create_augroup("strdr4605", { clear = true })
vim.api.nvim_create_autocmd("FileType", {
  pattern = "typescript,typescriptreact",
  group = augroup,
  command = "compiler tsc | setlocal makeprg=npx\\ tsc",
})

vim.api.nvim_create_user_command('W', 'write', {})

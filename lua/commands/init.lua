local augroup = vim.api.nvim_create_augroup("strdr4605", { clear = true })
vim.api.nvim_create_autocmd("FileType", {
  pattern = "typescript,typescriptreact,javascript,javascriptreact",
  group = augroup,
  command =
  "setlocal errorformat=%A%f:%l:%c:%m,%-G%.%# | setlocal makeprg=yarn\\ eslint\\ --quiet\\ -f\\ unix",

})

vim.api.nvim_create_user_command('W', 'write', {})

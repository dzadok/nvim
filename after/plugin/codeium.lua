local setup, codeium = pcall(require, 'Codeium')

if not setup then
  return
end

vim.cmd(codeium.auth)

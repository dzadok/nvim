local test = require("neotest")

test.setup({
  adapters = {
    require('neotest-vitest'),
    require('neotest-scala'),
    require('neotest-vim-test'),
  }
})

vim.keymap.set("n", "<leader>t", function() test.run.run(vim.fn.expand("%")) end);
vim.keymap.set("n", "<leader>T", function() test.run.run() end);

require('neodev').setup()
local lsp = require('lsp-zero')

lsp.preset('recommended')

lsp.ensure_installed({
  'tsserver',
  'bashls'
})

lsp.nvim_workspace()

local cmp = require('cmp')
local cmp_select = { behavior = cmp.SelectBehavior.Select }
local cmp_mappings = lsp.defaults.cmp_mappings({
  ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
  ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
  ['<C-y>'] = cmp.mapping.confirm({ select = true }),
  ['C-space'] = cmp.mapping.complete(),
})

lsp.on_attach(function(client, bufnr)
  local opts = { buffer = bufnr, remap = false }

  vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
  vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
  vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
  vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
  vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
  vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
  vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
  vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts)
  vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
  vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
end)

local lspconfig = require('lspconfig')

lspconfig.bashls.setup({
  name = "bashls",
  cmd = { "bash-language-server", "start" },
  filetypes = { "bash", "sh", "zsh" },
  settings = {
    bashIde = {
      globPattern = "*@(.sh|.inc|.bash|.command)",
    },
  },
  single_file_support = true,
})

-- local configs = require 'lspconfig.configs'
--
-- if not configs.snyk then
--   configs.snyk = {
--     default_config = {
--       cmd = { '/usr/local/bin/snyk-ls', '-f', '/Users/davidzadok/snyk/lsp.log' },
--       root_dir = function(name)
--         return lspconfig.util.find_git_ancestor(name) or vim.loop.os_homedir()
--       end,
--       init_options = {
--         activateSnykCode = "true",
--         activateSnykIac = "false",
--         enableTelemetry = "false",
--         manageBinariesAutomatically = "true",
--         automaticAuthentication = "true"
--       }
--     },
--   }
-- end
-- lspconfig.snyk.setup {
-- }

lsp.setup()

vim.diagnostic.config({
  virtual_text = true
})

-- vim.cmd [[autocmd BufWritePre * lua vim.lsp.buf.format({async = false})]]

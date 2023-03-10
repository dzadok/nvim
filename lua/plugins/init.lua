vim.cmd.packadd('packer.nvim')

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    -- or                              , branch = '0.1.x',
    requires = { { 'nvim-lua/plenary.nvim' } }
  }

  use { 'codota/tabnine-nvim', run = "./dl_binaries.sh" }

  --  use({
  --    'rose-pine/neovim',
  --    as = 'rose-pine',
  --    config = function()
  --      vim.cmd('colorscheme rose-pine')
  --    end
  --  })

  use 'rose-pine/neovim'
  use 'folke/tokyonight.nvim'
  use("nvim-treesitter/nvim-treesitter", { run = ':TSUpdate' })
  use("nvim-treesitter/playground")
  use('theprimeagen/harpoon')
  use('mbbill/undotree')
  use('tpope/vim-fugitive')
  use('christoomey/vim-tmux-navigator')
  use('tpope/vim-surround')
  use('numToStr/Comment.nvim')
  use('nvim-lualine/lualine.nvim')
  use('lewis6991/gitsigns.nvim')
  use("marilari88/twoslash-queries.nvim")

  use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v1.x',
    requires =
    {                                          -- LSP Supporo
      { 'neovim/nvim-lspconfig' },             -- Required
      { 'williamboman/mason.nvim' },           -- Optional
      { 'williamboman/mason-lspconfig.nvim' }, -- Optional

      -- Autocompletion
      { 'hrsh7th/nvim-cmp' },         -- Required
      { 'hrsh7th/cmp-nvim-lsp' },     -- Required
      { 'hrsh7th/cmp-buffer' },       -- Optional
      { 'hrsh7th/cmp-path' },         -- Optional
      { 'saadparwaiz1/cmp_luasnip' }, -- Optional
      { 'hrsh7th/cmp-nvim-lua' },     -- Optional

      -- Snippets
      { 'L3MON4D3/LuaSnip' },             -- Required
      { 'rafamadriz/friendly-snippets' }, -- Optional
    }
  }
end)

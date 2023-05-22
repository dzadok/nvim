vim.cmd.packadd('packer.nvim')

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
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
  use 'folke/neodev.nvim'
  use 'folke/tokyonight.nvim'
  use { "catppuccin/nvim", as = "catppuccin" }
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
  -- use 'tpope/vim-vinegar'
  use 'stevearc/oil.nvim'
  use 'tpope/vim-dadbod'

  use 'jay-babu/mason-nvim-dap.nvim'
  use "mfussenegger/nvim-dap"
  use "rcarriga/nvim-dap-ui"
  use "theHamsta/nvim-dap-virtual-text"
  use "nvim-telescope/telescope-dap.nvim"

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

  use({
    'nvim-neotest/neotest',
    requires = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
      "antoinemadec/FixCursorHold.nvim",
      "vim-test/vim-test",
      "marilari88/neotest-vitest",
      "stevanmilic/neotest-scala",
      "nvim-neotest/neotest-vim-test"
    },
    config = function()
      require('neotest').setup({
        adapters = {
          require('neotest-vitest'),
          require('neotest-scala'),
          require('neotest-vim-test')
        }
      })
    end
  })
end)

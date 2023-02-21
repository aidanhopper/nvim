return require("packer").startup(function(use)

	use "wbthomason/packer.nvim"

	use "christoomey/vim-tmux-navigator"

  use { "shaunsingh/nord.nvim",
    config = function ()
      vim.g.nord_disable_background = true
      vim.g.nord_borders = true
      vim.g.nord_contrast = true
      require("nord").set()
    end
  }

  use {
    "nvim-treesitter/nvim-treesitter",
    "nvim-treesitter/nvim-treesitter-textobjects",
    run = ":TSUpdate"
  }

  use {
    'windwp/nvim-autopairs',
    config = function ()
      require('nvim-autopairs').setup {}
    end
  }

  use {
    'VonHeikemen/lsp-zero.nvim',
    requires = {
      -- LSP Support
      {'neovim/nvim-lspconfig'},
      {'williamboman/mason.nvim'},
      {'williamboman/mason-lspconfig.nvim'},

      -- Autocompletion
      {'hrsh7th/nvim-cmp'},
      {'hrsh7th/cmp-buffer'},
      {'hrsh7th/cmp-path'},
      {'saadparwaiz1/cmp_luasnip'},
      {'hrsh7th/cmp-nvim-lsp'},
      {'hrsh7th/cmp-nvim-lua'},

      -- Snippets
      {'L3MON4D3/LuaSnip'},
      {'rafamadriz/friendly-snippets'},
    }
  }

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  use {
    'nvim-treesitter/playground'
  }

  use {
      'tpope/vim-fugitive'
  }

   use {
      'mbbill/undotree'
   }

  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  use {
    "RRethy/vim-illuminate"
  }

  use {
    "SmiteshP/nvim-navic",
    requires = "neovim/nvim-lspconfig"
  }

  use {
    "folke/zen-mode.nvim"
  }

  use {
    'akinsho/bufferline.nvim',
    tag = "v3.*",
    requires = 'nvim-tree/nvim-web-devicons'
  }

  use {
    "folke/which-key.nvim"
  }

  use {
    "windwp/nvim-ts-autotag"
  }

end)

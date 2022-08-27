return require('packer').startup(function()
  use 'wbthomason/packer.nvim'

  -- theme
  use {
    'shaunsingh/nord.nvim',
    config = function ()
      vim.g.nord_disable_background = true
      vim.g.nord_borders = true      
      vim.g.nord_contrast = true
      require('nord').set()
    end
  }

  -- telescope for fuzzy finding 
  use {
    'nvim-telescope/telescope.nvim', 
    tag = '0.1.0',
    requires = { {'nvim-lua/plenary.nvim'} },
    cmd = "Telescope"
  }     

  -- treesitter for all its goodness
  use {
   'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate', 
    config = function ()
      require('nvim-treesitter.configs').setup {
        auto_install = true, 
        highlight = {
          enable = true 
        },
        indent = {
          enable = true 
        }
      }
    end
  }

  -- autopairs
  use {
    'windwp/nvim-autopairs',
    config = function ()
      require('nvim-autopairs').setup {} 
    end
  }
  
  -- align text
  use {
    'RRethy/nvim-align',
    --cmd = "'<,'>Align"
  }

  -- formatter
  use {
    'sbdchd/neoformat',
    cmd = 'Neoformat'
  }

  -- completions
  use {
    'hrsh7th/nvim-cmp',
    config = function ()
      require('completions')
    end
  }
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'saadparwaiz1/cmp_luasnip'
  
  -- snippets
  use 'L3MON4D3/LuaSnip'
  use 'rafamadriz/friendly-snippets'
  
  -- which key
  use {
    'folke/which-key.nvim',
    config = function ()
      require('which-key').setup {
        window = {
          border = "none",
          margin = { 1, 0, 0, 0 },
        }
      }
    end
  }

  -- tmux integration
  use "christoomey/vim-tmux-navigator"

  -- lualine
  use {
    'nvim-lualine/lualine.nvim',
    requries = { 'kyazdani42/nvim-web-devicons', opt = true },
    config = function ()
      require('statusline')
    end
  }

  -- comments
  use {
    'numToStr/Comment.nvim',
    config = function()
        require('Comment').setup()
    end
  }

  -- indent lines
  use {
    'lukas-reineke/indent-blankline.nvim',
    config = function ()
      require('indent_blankline').setup {
        indent_blankline_use_treesitter = true
      }
    end
  }
  
  -- dashboard
  use {
    'goolord/alpha-nvim',
    requires = { 'kyazdani42/nvim-web-devicons' },
    config = function ()
      require('dashboard')
    end
  }

  -- filetree
  use {
    'kyazdani42/nvim-tree.lua',
    requires = {'kyazdani42/nvim-web-devicons'},
    config = function ()
      require('nvim-tree').setup {
        view = {
          hide_root_folder = true
        }
      }
    end
  }

  -- bufferline
  use {
    'akinsho/bufferline.nvim', 
    tag = "v2.*", 
    requires = 'kyazdani42/nvim-web-devicons',
    config = function ()
      require('bufferline').setup {
        options = {
          offsets = {{filetype = "NvimTree", text = "", padding = 1}},
          always_show_bufferline = false,
        }
      }
    end
  }

  use{
    "Pocco81/true-zen.nvim",
    config = function()
       require("true-zen").setup {
        -- your config goes here
        -- or just leave it empty :)
       }
    end,
  }

end)


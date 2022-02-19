return require('packer').startup(function()
  local use = use

  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- packer dependent
  use 'nvim-lua/plenary.nvim'
  use 'nvim-lua/popup.nvim'
  use 'kyazdani42/nvim-web-devicons'

  -- window change
  use {
    'sindrets/winshift.nvim',
    config = function()
      require("setting.winshift")
    end
  }

  -- terminal
  use {
    "akinsho/toggleterm.nvim",
    config = function()
      require("setting.toggleterm")
    end
  }

  -- terminal
  use {
    'voldikss/vim-floaterm',
    config = function()
      require("setting.vim-floaterm")
    end
  }

  -- dashboard
  use {
    'goolord/alpha-nvim',
    config = function()
      require("setting.alpha-nvim")
    end
  }

  -- blankline 缩进线
  use {
    "lukas-reineke/indent-blankline.nvim",
    config = function()
      require("setting.indent-blankline")
    end
  }

  -- bufferline
  use {
    'akinsho/bufferline.nvim',
    config = function()
      require('setting.bufferline-nvim')
    end
  }

  -- which key
  use {
    'folke/which-key.nvim',
    config = function()
      require('setting.which-key')
    end
  }

  -- Comment 注释
  use {
    'numToStr/Comment.nvim',
    config = function()
      require('setting.comment')
    end
  }

  -- 符号配对 []{}()''""
  use {
    'windwp/nvim-autopairs',
    config = function()
      require('setting.nvim-autopairs')
    end
  }

  -- color theme
  use {
    "ellisonleao/gruvbox.nvim",
    config = function()
      require('setting.gruvbox')
    end
  }

  -- filemanager
  use {
    'kyazdani42/nvim-tree.lua',
    config = function()
      require('setting.nvim-tree')
    end
  }

  use {
    'nvim-lualine/lualine.nvim',
    config = function()
      require('setting.lualine')
    end
  }

  -- treesitter 语法高亮
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
    config = function()
      require('setting.nvim-treesitter')
    end
  }

  -- lsp
  use {
    'neovim/nvim-lspconfig',
    'williamboman/nvim-lsp-installer',
    config = function()
      require('setting.lsp')
    end
  }
  -- 函数参数提示
  use {
    "ray-x/lsp_signature.nvim",
    config = function()
      require('setting.lsp_signature')
    end
  }



  -- nvim-cmp
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp' -- { name = nvim_lsp }
  use 'hrsh7th/cmp-buffer'   -- { name = 'buffer' },
  use 'hrsh7th/cmp-path'     -- { name = 'path' }
  use 'hrsh7th/cmp-cmdline'  -- { name = 'cmdline' }
  -- use 'hrsh7th/cmp-nvim-lua'
  -- vsnip
  use 'hrsh7th/cmp-vsnip'    -- { name = 'vsnip' }
  use 'hrsh7th/vim-vsnip'
  use 'rafamadriz/friendly-snippets'
  use 'onsails/lspkind-nvim' -- 代码补全提示的图标

  -- 代码段 bilibili https://www.bilibili.com/s/video/BV1iL4y1B7gH
  -- 示例代码 https://www.codeleading.com/article/21256072499/
  use {'L3MON4D3/LuaSnip'}
  use {'saadparwaiz1/cmp_luasnip'}


  -- error list
  use {
  "folke/trouble.nvim",
  config = function()
    require('setting.trouble')
  end
  }
  -- use {
  --   'kevinhwang91/nvim-bqf',
  --   ft = 'qf'
  -- }

  -- 右侧边栏函数, 变量
  use {
    'simrat39/symbols-outline.nvim',
    config = function()
      require('setting.symbols-outline')
    end
  }

  -- code format
  -- 方式1
  use {
    'mhartington/formatter.nvim',
    config = function()
      require('setting.formatter')
    end
  }
  -- 方式2
  use 'sbdchd/neoformat'


  -- dap
  use {
    'mfussenegger/nvim-dap',
    config = function()
      require('setting.dap')
    end
  }
  use {
    "rcarriga/nvim-dap-ui",
    config = function()
      require('setting.dap-ui')
    end
  }

  -- dap pyhton
  use {
    'mfussenegger/nvim-dap-python',
    config = function()
      require('setting.dap-python')
    end
  }
  -- dap java
  use {
    'mfussenegger/nvim-jdtls',
    config = function()
      require('setting.nvim-jdtls')
    end
  }

  -- 虚拟文本
  use {
    'theHamsta/nvim-dap-virtual-text',
    config = function()
      require('setting.nvim-dap-virtual-text')
    end
  }




  -- translat
  use {
    'voldikss/vim-translator',
    config = function()
      require('setting.vim-translator')
    end
  }

  -- markdown
  -- use {
  --   'preservim/vim-markdown',
  --   requires = {'godlygeek/tabular'},
  --   -- config = function()
  --   --   require("setting.alpha-nvim")
  --   -- end
  -- }
  -- -- markdown preview
  -- use {
  --   'iamcco/markdown-preview.nvim',
  --   config = function()
  --     require('setting.markdown-preview')
  --   end
  -- }

  -- 望远镜
  use {
    'nvim-telescope/telescope.nvim',
    config = function()
      require('setting.telescope')
    end
  }
  -- 模糊查询
  use {
    'nvim-telescope/telescope-fzf-native.nvim',
    run = 'make'
  }
  use{
    "nvim-telescope/telescope-project.nvim",
    config = function()
      require('setting.telescope-project')
    end
  }
  use 'nvim-telescope/telescope-dap.nvim'

  -- move window
  use {
    'hoschi/yode-nvim',
    config = function()
      require('setting.yode-nvim')
    end
  }

  -- pick window
  use {
    'https://gitlab.com/yorickpeterse/nvim-window',
    config = function()
      require('setting.nvim-window')
    end
  }

  -- ranger
  use {
    'kevinhwang91/rnvimr',
    config = function()
      require('setting.rnvimr')
    end
  }



end)

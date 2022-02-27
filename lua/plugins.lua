require('packer').startup(function()
  local use = use
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- dependent
  use 'nvim-lua/plenary.nvim'
  use 'nvim-lua/popup.nvim'
  use 'kyazdani42/nvim-web-devicons'

  -- window
  use 'sindrets/winshift.nvim' -- window change
  use 'hoschi/yode-nvim' -- move window
  use 'https://gitlab.com/yorickpeterse/nvim-window' -- pick window

  -- terminal
  use "akinsho/toggleterm.nvim"
  use 'voldikss/vim-floaterm'

  -- UI
  use 'goolord/alpha-nvim' -- dashboard
  use 'akinsho/bufferline.nvim'
  use 'nvim-lualine/lualine.nvim' -- status line
  use 'folke/which-key.nvim'
  use "ellisonleao/gruvbox.nvim" -- color theme
  use 'kevinhwang91/rnvimr' -- ranger
  -- use "lukas-reineke/indent-blankline.nvim" -- blankline 缩进线

  -- lsp
  use 'neovim/nvim-lspconfig'
  use 'williamboman/nvim-lsp-installer'
  use "ray-x/lsp_signature.nvim" -- 函数参数提示

  -- nvim-cmp
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/cmp-nvim-lua'
  use 'hrsh7th/cmp-vsnip' -- vsnip
  use 'hrsh7th/vim-vsnip' -- vsnip
  use 'rafamadriz/friendly-snippets'
  use 'onsails/lspkind-nvim' -- 代码补全提示的图标

  -- 代码段 bilibili https://www.bilibili.com/s/video/BV1iL4y1B7gH
  -- 示例代码 https://www.codeleading.com/article/21256072499/
  use 'L3MON4D3/LuaSnip'
  use 'saadparwaiz1/cmp_luasnip'

  -- code format
  -- 方式1
  use 'mhartington/formatter.nvim'
  -- 方式2
  use 'sbdchd/neoformat'

  -- dap
  use 'mfussenegger/nvim-dap'
  use 'mfussenegger/nvim-dap-python' -- dap pyhton
  use 'mfussenegger/nvim-jdtls' -- dap java
  use "rcarriga/nvim-dap-ui"


  -- markdown
  -- use {
  --   'preservim/vim-markdown',
  --   requires = {'godlygeek/tabular'},
  --   -- config = function()
  --   --   require("setting.alpha-nvim")
  --   -- end
  -- }
  -- use 'iamcco/markdown-preview.nvim' -- markdown preview

  -- 望远镜
  use 'nvim-telescope/telescope.nvim'
  use "nvim-telescope/telescope-project.nvim"
  use 'nvim-telescope/telescope-dap.nvim'
  use 'nvim-telescope/telescope-ui-select.nvim'
  use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' } -- 模糊查询

  -- tool
  use "folke/trouble.nvim" -- error list
  use 'simrat39/symbols-outline.nvim' -- 右侧边栏函数, 变量
  use 'theHamsta/nvim-dap-virtual-text' -- 虚拟文本
  use 'voldikss/vim-translator' -- translat
  use 'numToStr/Comment.nvim' -- Comment 注释
  use 'windwp/nvim-autopairs' -- 符号配对 []{}()''""
  use 'kyazdani42/nvim-tree.lua' -- filemanager
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate', } -- treesitter 语法高亮
  -- use { 'kevinhwang91/nvim-bqf', ft = 'qf' }

end)


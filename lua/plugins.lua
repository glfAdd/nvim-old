require('packer').startup(function()
  local use = use
  local vim = vim
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
  use 'akinsho/toggleterm.nvim'
  use 'voldikss/vim-floaterm'

  -- UI
  use 'mhinz/vim-startify' -- dashboard
  use 'akinsho/bufferline.nvim'
  use 'nvim-lualine/lualine.nvim' -- status line
  use 'folke/which-key.nvim'
  use 'ellisonleao/gruvbox.nvim' -- color theme
  use 'kevinhwang91/rnvimr' -- ranger
  -- use 'lukas-reineke/indent-blankline.nvim' -- blankline 缩进线

  -- lsp
  use 'neovim/nvim-lspconfig'
  use 'williamboman/nvim-lsp-installer' -- 方便的 lsp 安装工具
  use 'ray-x/lsp_signature.nvim' -- 函数参数提示
  use 'nvim-lua/lsp-status.nvim'
  use 'glepnir/lspsaga.nvim' -- LSP 代码提示文档等浮动窗口

  -- nvim-cmp
  use 'rafamadriz/friendly-snippets'
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp' -- Neovim 内置 LSP 客户端的 nvim-cmp 源
  use 'hrsh7th/cmp-buffer' -- 缓冲区的 nvim-cmp 源
  use 'hrsh7th/cmp-path' -- 文件系统路径的 nvim-cmp 源
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/cmp-nvim-lua' -- Neovim Lua API 的 nvim-cmp 源
  use 'hrsh7th/cmp-vsnip' -- vsnip
  use 'hrsh7th/vim-vsnip' -- vsnip
  use 'onsails/lspkind-nvim' -- 代码补全提示的图标
  use 'lukas-reineke/cmp-under-comparator' -- nvim-cmp 一个或多个下划线开头的完成项进行排序(效果待测试)

  -- 代码段 bilibili https://www.bilibili.com/s/video/BV1iL4y1B7gH
  -- 示例代码 https://www.codeleading.com/article/21256072499/
  use 'L3MON4D3/LuaSnip'
  use 'saadparwaiz1/cmp_luasnip'

  -- dap
  use 'mfussenegger/nvim-dap'
  use 'mfussenegger/nvim-dap-python' -- dap pyhton
  use 'mfussenegger/nvim-jdtls' -- dap java
  use 'rcarriga/nvim-dap-ui'

  -- markdown
  -- use {
  --   'preservim/vim-markdown',
  --   requires = {'godlygeek/tabular'},
  --   -- config = function()
  --   --   require('setting.alpha-nvim')
  --   -- end
  -- }
  -- use 'iamcco/markdown-preview.nvim' -- 浏览器预览 markdown


  -- 望远镜
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-telescope/telescope-project.nvim'
  use 'nvim-telescope/telescope-dap.nvim'
  use 'nvim-telescope/telescope-ui-select.nvim'
  use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make'} -- 模糊查询
  use 'nvim-telescope/telescope-fzf-writer.nvim'
  use 'nvim-telescope/telescope-hop.nvim'
  use 'sudormrfbin/cheatsheet.nvim'
  -- 搜做结果排序优化
  -- use {
  --   "nvim-telescope/telescope-frecency.nvim",
  --   requires = {"tami5/sqlite.lua"}
  -- }

  -- tool
  use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'} -- 语法高亮
  use 'p00f/nvim-ts-rainbow' -- 彩虹括号 (nvim-treesitter 的扩展)
  use 'dstein64/vim-startuptime' -- 启动时间统计
  use 'folke/trouble.nvim' -- error list
  use 'simrat39/symbols-outline.nvim' -- 右侧边栏函数, 变量
  use 'theHamsta/nvim-dap-virtual-text' -- 虚拟文本
  use 'voldikss/vim-translator' -- translat
  use 'numToStr/Comment.nvim' -- Comment 注释
  use 'windwp/nvim-autopairs' -- 符号配对 [] {} () '' ""
  use 'kyazdani42/nvim-tree.lua' -- filemanager
  -- use 'kdheepak/lazygit.nvim' -- lazygit
  use 'lewis6991/gitsigns.nvim' -- git
  use 'mhartington/formatter.nvim' -- code format
  use 'sbdchd/neoformat' -- code format
  -- use { 'kevinhwang91/nvim-bqf', ft = 'qf' } -- quickfix 窗口
  -- use neovim in browser
  use {
    'glacambre/firenvim',
    run = function() vim.fn['firenvim#install'](0) end
  }
  use {'phaazon/hop.nvim', branch = 'v1'} -- 快速选择单词

end)


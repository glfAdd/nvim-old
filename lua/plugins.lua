return require('packer').startup(function(use)
  local is_lock = true
  local is_disable = true


  -- ############################################ dependent
  -- Packer can manage itself
  use {'wbthomason/packer.nvim', lock=is_lock}
  use {'kyazdani42/nvim-web-devicons', lock=is_lock}
  use {'nvim-lua/plenary.nvim', lock=is_lock}
  use {'nvim-lua/popup.nvim', lock=is_lock}


  -- ############################################ UI
  -- dashboard
  use { 'mhinz/vim-startify', lock = is_lock,
    config = function() require("setting.init-vim-startify") end
  }
  -- color theme
  use{ 'ellisonleao/gruvbox.nvim', lock = is_lock,
    config = function() require("setting.init-gruvbox") end
  }


  -- ############################################ TOOL
  -- 上面 buffer
  use{ 'akinsho/bufferline.nvim', lock = is_lock,
    config = function() require("setting.init-bufferline-nvim") end
  }
  -- 下面 status
  use{ 'nvim-lualine/lualine.nvim', lock = is_lock,
    config = function() require("setting.init-lualine") end
  }
  -- 文件管理
  use{ 'kyazdani42/nvim-tree.lua', lock = is_lock,
    config = function() require("setting.init-nvim-tree") end
  }
  -- 快捷键提示
  use { 'folke/which-key.nvim', lock = is_lock,
    config = function() require("setting.init-which-key") end
  }
  -- 缩进线
--  use{
--    'lukas-reineke/indent-blankline.nvim', lock = is_lock,
--    disable = is_disable
--  }


  -- ############################################ LSP
  use{ 'neovim/nvim-lspconfig', lock = is_lock,
    config = function() require("setting.init-lsp") end
  }
  -- 方便的 lsp 安装工具
  use{ 'williamboman/nvim-lsp-installer', lock = is_lock,
    config = function() require("setting.init-lsp") end
  }
  -- 函数参数提示
  use{ 'ray-x/lsp_signature.nvim', lock = is_lock,
    config = function() require("setting.init-lsp_signature") end
  }

  use{ 'nvim-lua/lsp-status.nvim', lock = is_lock }
  -- LSP 代码提示文档等浮动窗口
  use{ 'glepnir/lspsaga.nvim', lock = is_lock,
    config = function() require("setting.init-lspsaga-nvim") end
  }


  -- ############################################ CMP
  -- Neovim 内置 LSP 客户端的 nvim-cmp 源
  use{ 'hrsh7th/cmp-nvim-lsp', lock = is_lock }
  -- 缓冲区的 nvim-cmp 源
  use{ 'hrsh7th/cmp-buffer', lock = is_lock }
  -- 文件系统路径的 nvim-cmp 源
  use{ 'hrsh7th/cmp-path', lock = is_lock }
  use{ 'hrsh7th/cmp-cmdline', lock = is_lock }
  use{ 'hrsh7th/nvim-cmp', lock = is_lock,
--    config = function() require("setting.init-cmp") end -- 这个有问题
  }
  -- Neovim Lua API 的 nvim-cmp 源
  use{ 'hrsh7th/cmp-nvim-lua', lock = is_lock }
  -- 代码补全提示的图标
  use{ 'onsails/lspkind-nvim', lock = is_lock }
--  use 'lukas-reineke/cmp-under-comparator' -- nvim-cmp 一个或多个下划线开头的完成项进行排序(效果待测试)
  use{ 'rafamadriz/friendly-snippets', lock = is_lock }
  -- 代码段 bilibili https://www.bilibili.com/s/video/BV1iL4y1B7gH
  -- 示例代码 https://www.codeleading.com/article/21256072499/
  use{ 'L3MON4D3/LuaSnip', lock = is_lock }
  use{ 'saadparwaiz1/cmp_luasnip', lock = is_lock }


  -- ############################################ DAP
  use{ 'mfussenegger/nvim-dap', lock = is_lock,
    --config = function() require("setting.init-dap") end  -- 打开这个配置有问题
  }
  use{ 'rcarriga/nvim-dap-ui', lock = is_lock }
  -- python
  use{ 'mfussenegger/nvim-dap-python', lock = is_lock }
--  use 'mfussenegger/nvim-jdtls' -- dap java




  -- ############################################ 望远镜
  use{ 'nvim-telescope/telescope.nvim', lock = is_lock }
  use{ 'nvim-telescope/telescope-project.nvim', lock = is_lock }
  use{ 'nvim-telescope/telescope-dap.nvim', lock = is_lock }
  use{ 'nvim-telescope/telescope-ui-select.nvim', lock = is_lock }
  use{ 'nvim-telescope/telescope-fzf-native.nvim', lock = is_lock, run = 'make' } -- 模糊查询
  use{ 'nvim-telescope/telescope-fzf-writer.nvim', lock = is_lock }
  use{ 'nvim-telescope/telescope-hop.nvim', lock = is_lock }
  use{ 'sudormrfbin/cheatsheet.nvim', lock = is_lock }
  -- 搜做结果排序优化
  use { 'tami5/sqlite.lua', lock = false }
  use { 'nvim-telescope/telescope-frecency.nvim', lock = false }




--  use 'kevinhwang91/rnvimr' -- ranger

--
--  -- window
--  use 'sindrets/winshift.nvim' -- window change
--  use 'hoschi/yode-nvim' -- move window
--  use 'https://gitlab.com/yorickpeterse/nvim-window' -- pick window
--
--  -- terminal
--  use 'akinsho/toggleterm.nvim'
--  use 'voldikss/vim-floaterm'
--
-- markdown
-- use {
--   'preservim/vim-markdown',
--   requires = {'godlygeek/tabular'},
--   -- config = function()
--   --   require('setting.alpha-nvim')
--   -- end
-- }
-- use 'iamcco/markdown-preview.nvim' -- 浏览器预览 markdown
--
--
--
--  -- tool
--  use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'} -- 语法高亮
--  use 'p00f/nvim-ts-rainbow' -- 彩虹括号 (nvim-treesitter 的扩展)
--  use 'dstein64/vim-startuptime' -- 启动时间统计
--  use 'folke/trouble.nvim' -- error list
--  use 'simrat39/symbols-outline.nvim' -- 右侧边栏函数, 变量
--  use 'theHamsta/nvim-dap-virtual-text' -- 虚拟文本
--  use 'voldikss/vim-translator' -- translat
--  use 'numToStr/Comment.nvim' -- Comment 注释
--  use 'windwp/nvim-autopairs' -- 符号配对 [] {} () '' ""
--  -- use 'kdheepak/lazygit.nvim' -- lazygit
--  use 'lewis6991/gitsigns.nvim' -- git
--  use 'mhartington/formatter.nvim' -- code format
--  use 'sbdchd/neoformat' -- code format
--  -- use { 'kevinhwang91/nvim-bqf', ft = 'qf' } -- quickfix 窗口
--  -- use neovim in browser
--  use {
--    'glacambre/firenvim',
--    run = function() vim.fn['firenvim#install'](0) end
--  }
--  use {'phaazon/hop.nvim', branch = 'v1'} -- 快速选择单词
--  -- use 'junegunn/vim-easy-align'


end)


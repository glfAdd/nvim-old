return require('packer').startup(function(use)
  local is_lock = true


  -- ##########################################################
  -- dependent
  -- ##########################################################
  -- Packer can manage itself
  use {'wbthomason/packer.nvim', lock=is_lock}
  use {'kyazdani42/nvim-web-devicons', lock=is_lock,
    config = function() require("setting.init-nvim-web-devicons") end
  }
  use {'nvim-lua/plenary.nvim', lock=is_lock}
  use {'nvim-lua/popup.nvim', lock=is_lock}


  -- ##########################################################
  -- ui
  -- ##########################################################
  -- dashboard
  use { 'mhinz/vim-startify', lock = is_lock,
    config = function() require("setting.init-vim-startify") end
  }
  -- color theme
  use{ 'ellisonleao/gruvbox.nvim', lock = is_lock,
    config = function() require("setting.init-gruvbox") end
  }


  -- ##########################################################
  -- lsp 
  -- ##########################################################
  -- base
  use{ 'neovim/nvim-lspconfig', lock = is_lock,
    config = function() require("setting.init-lsp") end
  }
  -- lsp 安装工具
  use{ 'williamboman/nvim-lsp-installer', lock = is_lock }
  -- 函数参数提示
  use{ 'ray-x/lsp_signature.nvim', lock = is_lock,
    config = function() require("setting.init-lsp_signature") end
  }
  use{ 'nvim-lua/lsp-status.nvim', lock = is_lock }
  -- LSP 代码提示文档等浮动窗口
  use{ 'glepnir/lspsaga.nvim', lock = is_lock,
    config = function() require("setting.init-lspsaga-nvim") end
  }


  -- ##########################################################
  -- cmp
  -- ##########################################################
  use{ 'hrsh7th/cmp-nvim-lsp', lock = is_lock }
  use{ 'hrsh7th/cmp-buffer', lock = is_lock }
  use{ 'hrsh7th/cmp-path', lock = is_lock }
  use{ 'hrsh7th/cmp-cmdline', lock = is_lock }
  use{ 'hrsh7th/nvim-cmp', lock = is_lock,
    config = function() require("setting.init-cmp") end
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


  -- ##########################################################
  -- dap
  -- ##########################################################
  use{ 'mfussenegger/nvim-dap', lock = is_lock,
    config = function() require("setting.init-dap") end
  }
  use{ 'rcarriga/nvim-dap-ui', lock = is_lock,
    config = function() require("setting.init-dap-ui") end
  }
  -- 虚拟文本
  --  dap (自动加载 ftplugin 目录下 .lua 的语言配置文件)
  use{ 'theHamsta/nvim-dap-virtual-text', lock = is_lock }
  -- python
  use{ 'mfussenegger/nvim-dap-python', lock = is_lock }
--  use 'mfussenegger/nvim-jdtls' -- dap java


  -- ##########################################################
  -- 望远镜
  -- ##########################################################
  use{ 'nvim-telescope/telescope.nvim', lock = is_lock }
  use{ 'nvim-telescope/telescope-project.nvim', lock = is_lock }
  use{ 'nvim-telescope/telescope-dap.nvim', lock = is_lock }
  use{ 'nvim-telescope/telescope-ui-select.nvim', lock = is_lock }
  use{ 'nvim-telescope/telescope-fzf-native.nvim', lock = is_lock, run = 'make' } -- 模糊查询
  use{ 'nvim-telescope/telescope-fzf-writer.nvim', lock = is_lock }
  use{ 'nvim-telescope/telescope-hop.nvim', lock = is_lock }
  use{ 'sudormrfbin/cheatsheet.nvim', lock = is_lock }
--  use{ 'tami5/sqlite.lua', lock = is_lock } -- 搜做结果排序优化 (依赖)
--  use{ 'nvim-telescope/telescope-frecency.nvim', lock = is_lock } -- 搜做结果排序优化


  -- ##########################################################
  -- window
  -- ##########################################################
--  use{ 'sindrets/winshift.nvim', lock = is_lock } -- window change
--  use{ 'https://gitlab.com/yorickpeterse/nvim-window', lock = is_lock } -- 编号选择窗口
--  use{ 'hoschi/yode-nvim', lock = is_lock } -- 有问题


  -- ##########################################################
  -- terminal
  -- ##########################################################
  use{ 'akinsho/toggleterm.nvim', lock = is_lock }
  use{ 'voldikss/vim-floaterm', lock = is_lock }


  -- ##########################################################
  -- tool
  -- ##########################################################
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
  -- 语法高亮
  use{ 'nvim-treesitter/nvim-treesitter', lock = is_lock,
    run = ':TSUpdate'
  }
  -- 启动时间统计
  use{ 'dstein64/vim-startuptime', lock = is_lock }
  -- error list
  use{ 'folke/trouble.nvim', lock = is_lock }
  -- 右侧边栏函数, 变量
  use{ 'simrat39/symbols-outline.nvim', lock = is_lock }
  -- quickfix 窗口
  use{ 'kevinhwang91/nvim-bqf', lock = is_lock,
    ft = 'qf'
  }
  -- 快速选择单词
  use{'phaazon/hop.nvim', lock = is_lock,
    branch = 'v1'
  }
  -- ranger
  use{ 'kevinhwang91/rnvimr', lock = is_lock }
  -- code format
  use{ 'mhartington/formatter.nvim', lock = is_lock }
  -- code format
  use{ 'sbdchd/neoformat', lock = is_lock }
  -- lazygit
  use{ 'kdheepak/lazygit.nvim', lock = is_lock }
  -- git
  use{ 'lewis6991/gitsigns.nvim', lock = is_lock }
  -- Comment 注释
  use{ 'numToStr/Comment.nvim', lock = is_lock }
  -- translat
  use{ 'voldikss/vim-translator', lock = is_lock }
  -- 文本对齐
  use{ 'junegunn/vim-easy-align', lock = is_lock }

-- use neovim in browser
--  use {
--    'glacambre/firenvim',
--    run = function() vim.fn['firenvim#install'](0) end
--  }

-- markdown
-- use {
--   'preservim/vim-markdown',
--   requires = {'godlygeek/tabular'},
--   -- config = function()
--   --   require('setting.alpha-nvim')
--   -- end
-- }
-- use 'iamcco/markdown-preview.nvim' -- 浏览器预览 markdown


end)


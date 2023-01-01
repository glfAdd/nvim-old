return require("packer").startup(function(use)
	local is_lock = true

	-- ##########################################################
	-- dependent
	-- ##########################################################
	-- Packer can manage itself
	use({ "wbthomason/packer.nvim", lock = is_lock })
	use({
		"kyazdani42/nvim-web-devicons",
		lock = is_lock,
		config = function()
			require("setting.init-nvim-web-devicons")
		end,
	})
	use({ "nvim-lua/plenary.nvim", lock = is_lock })
	use({ "nvim-lua/popup.nvim", lock = is_lock })

	-- ##########################################################
	-- ui
	-- ##########################################################
	use({ -- dashboard
		"goolord/alpha-nvim",
		lock = is_lock,
		config = function()
			require("setting.init-alpha-nvim")
		end,
	})
	use({ -- color theme
		"ellisonleao/gruvbox.nvim",
		lock = is_lock,
		config = function()
			require("setting.init-gruvbox")
		end,
	})
	use({ -- 通知栏
		"rcarriga/nvim-notify",
		lock = is_lock,
		config = function()
			require("setting.init-nvim-notify")
		end,
	})

	-- ##########################################################
	-- lsp
	-- ##########################################################
	use({ -- base
		"neovim/nvim-lspconfig",
		lock = is_lock,
		config = function()
			require("setting.init-lsp")
		end,
	})
	use({ "williamboman/nvim-lsp-installer", lock = is_lock }) -- lsp 安装工具
	use({ -- 函数参数提示
		"ray-x/lsp_signature.nvim",
		lock = is_lock,
		config = function()
			require("setting.init-lsp_signature")
		end,
	})
	use({ "nvim-lua/lsp-status.nvim", lock = is_lock })
	use({ -- LSP UI 增强
		"glepnir/lspsaga.nvim",
		lock = is_lock,
		config = function()
			require("setting.init-lspsaga-nvim")
		end,
	})

	-- ##########################################################
	-- cmp
	-- ##########################################################
	use({
		"hrsh7th/nvim-cmp",
		lock = is_lock,
		config = function()
			require("setting.init-cmp")
		end,
	})
	use({ "hrsh7th/cmp-nvim-lsp", lock = is_lock })
	use({ "hrsh7th/cmp-buffer", lock = is_lock })
	use({ "hrsh7th/cmp-path", lock = is_lock })
	use({ "hrsh7th/cmp-cmdline", lock = is_lock })
	use({ "hrsh7th/cmp-nvim-lua", lock = is_lock }) -- Neovim Lua API 的 nvim-cmp 源
	use({ "hrsh7th/cmp-emoji", lock = is_lock }) -- 显示表情 待验证
	use({ "onsails/lspkind-nvim", lock = is_lock }) -- 美化
	-- nvim-cmp 一个或多个下划线开头的完成项进行排序(效果待测试)
	--  use 'lukas-reineke/cmp-under-comparator'
	use({ "rafamadriz/friendly-snippets", lock = is_lock })
	-- 代码段 bilibili https://www.bilibili.com/s/video/BV1iL4y1B7gH
	-- 示例代码 https://www.codeleading.com/article/21256072499/
	use({ "L3MON4D3/LuaSnip", lock = is_lock })
	use({ "saadparwaiz1/cmp_luasnip", lock = is_lock })

	-- ##########################################################
	-- dap
	-- ##########################################################
	use({
		"mfussenegger/nvim-dap",
		lock = is_lock,
		config = function()
			require("setting.init-dap")
		end,
	})
	use({
		"rcarriga/nvim-dap-ui",
		lock = is_lock,
		config = function()
			require("setting.init-dap-ui")
		end,
	})
	-- 虚拟文本
	--  dap (自动加载 ftplugin 目录下 .lua 的语言配置文件)
	use({ "theHamsta/nvim-dap-virtual-text", lock = is_lock })
	use({ "mfussenegger/nvim-dap-python", lock = is_lock }) -- python
	-- use{ 'mfussenegger/nvim-jdtls'} -- dap java

	-- ##########################################################
	-- 望远镜
	-- ##########################################################
	use({ "nvim-telescope/telescope.nvim", lock = is_lock })
	use({ "nvim-telescope/telescope-project.nvim", lock = is_lock })
	use({ "nvim-telescope/telescope-dap.nvim", lock = is_lock })
	use({ "nvim-telescope/telescope-ui-select.nvim", lock = is_lock })
	use({ "nvim-telescope/telescope-fzf-native.nvim", lock = is_lock, run = "make" }) -- 模糊查询
	use({ "nvim-telescope/telescope-fzf-writer.nvim", lock = is_lock })
	use({ "nvim-telescope/telescope-hop.nvim", lock = is_lock })
	use({ "sudormrfbin/cheatsheet.nvim", lock = is_lock })
	--  use{ 'tami5/sqlite.lua', lock = is_lock } -- 搜做结果排序优化 (依赖)
	--  use{ 'nvim-telescope/telescope-frecency.nvim', lock = is_lock } -- 搜做结果排序优化

	-- ##########################################################
	-- window
	-- ##########################################################
	use({ -- window change
		"sindrets/winshift.nvim",
		lock = is_lock,
		config = function()
			require("setting.init-winshift")
		end,
	})
	-- 编号选择窗口
	use({ "https://gitlab.com/yorickpeterse/nvim-window", lock = is_lock })
	--  use{ 'hoschi/yode-nvim', lock = false } -- 有问题

	-- ##########################################################
	-- terminal
	-- ##########################################################
	use({
		"akinsho/toggleterm.nvim",
		lock = is_lock,
		config = function()
			require("setting.init-toggleterm")
		end,
	})
	use({
		"voldikss/vim-floaterm",
		lock = is_lock,
		config = function()
			require("setting.init-vim-floaterm")
		end,
	})

	-- ##########################################################
	-- tool
	-- ##########################################################
	use({ -- 快捷键提示
		"folke/which-key.nvim",
		lock = is_lock,
		config = function()
			require("setting.init-which-key")
		end,
	})
	use({ -- 上面 buffer
		"akinsho/bufferline.nvim",
		lock = is_lock,
		config = function()
			require("setting.init-bufferline-nvim")
		end,
	})
	use({ -- 下面 status
		"nvim-lualine/lualine.nvim",
		lock = is_lock,
		config = function()
			require("setting.init-lualine")
		end,
	})
	use({ -- 文件管理
		"kyazdani42/nvim-tree.lua",
		lock = is_lock,
		config = function()
			require("setting.init-nvim-tree")
		end,
	})
	use({ "nvim-treesitter/nvim-treesitter", lock = is_lock }) -- 语法高亮
	use({ "dstein64/vim-startuptime", lock = is_lock }) -- 启动时间统计
	use({ -- error list
		"folke/trouble.nvim",
		lock = is_lock,
		config = function()
			require("setting.init-trouble")
		end,
	})
	use({ -- 边栏显示函数对象
		"simrat39/symbols-outline.nvim",
		lock = is_lock,
		config = function()
			require("setting.init-symbols-outline")
		end,
	}) -- 右侧边栏函数, 变量
	use({ "kevinhwang91/nvim-bqf", lock = is_lock, ft = "qf" }) -- quickfix 窗口
	use({ -- 快速选择单词
		"phaazon/hop.nvim",
		lock = is_lock,
		branch = "v2",
		config = function()
			require("setting.init-hop-nvim")
		end,
	})
	use({ -- ranger
		"kevinhwang91/rnvimr",
		lock = is_lock,
		config = function()
			require("setting.init-rnvimr")
		end,
	})
	use({ -- code format
		"mhartington/formatter.nvim",
		lock = is_lock,
		config = function()
			require("setting.init-formatter")
		end,
	})
	use({ "kdheepak/lazygit.nvim", lock = is_lock }) -- lazygit
	use({ "lewis6991/gitsigns.nvim", lock = is_lock }) -- git
	use({ -- Comment 注释
		"numToStr/Comment.nvim",
		lock = is_lock,
		config = function()
			require("setting.init-comment")
		end,
	})
	use({ "voldikss/vim-translator", lock = is_lock }) -- translat
	use({ "junegunn/vim-easy-align", lock = is_lock }) -- 文本对齐
	use({ "mbbill/undotree", lock = is_lock }) -- undo tree

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

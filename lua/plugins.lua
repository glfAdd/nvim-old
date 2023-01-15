return require("packer").startup(function(use)
	local is_lock = true

	-- ##########################################################
	-- dependent
	-- ##########################################################
	-- ......................................... Packer can manage itself
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
	-- ......................................... 启动页面
	use({
		"goolord/alpha-nvim",
		lock = is_lock,
		config = function()
			require("setting.init-alpha-nvim")
		end,
	})

	-- ......................................... 主题
	use({
		"ellisonleao/gruvbox.nvim",
		lock = is_lock,
		config = function()
			require("setting.init-gruvbox")
		end,
	})

	-- ##########################################################
	-- lsp 语言服务
	-- ##########################################################
	-- ......................................... 核心
	use({
		"neovim/nvim-lspconfig",
		lock = is_lock,
		config = function()
			require("setting.init-lsp")
		end,
	})

	-- ......................................... lsp ui 增强
	use({
		"glepnir/lspsaga.nvim",
		lock = is_lock,
		config = function()
			require("setting.init-lspsaga-nvim")
		end,
	})

	-- ......................................... 函数参数提示
	use({
		"ray-x/lsp_signature.nvim",
		lock = is_lock,
		config = function()
			require("setting.init-lsp_signature")
		end,
	})

	-- ......................................... lsp 安装工具
	use({ "williamboman/nvim-lsp-installer", lock = is_lock })

	-- ##########################################################
	-- cmp 代码补全
	-- ##########################################################
	-- ......................................... 核心
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
	-- ......................................... lua 源
	use({ "hrsh7th/cmp-nvim-lua", lock = is_lock })
	-- ......................................... 显示表情 待验证
	use({ "hrsh7th/cmp-emoji", lock = is_lock })
	-- ......................................... 美化
	use({ "onsails/lspkind-nvim", lock = is_lock })
	-- 一个或多个下划线开头的完成项进行排序(效果待测试)
	--  use 'lukas-reineke/cmp-under-comparator'
	use({ "rafamadriz/friendly-snippets", lock = is_lock })
	-- 代码段 bilibili https://www.bilibili.com/s/video/BV1iL4y1B7gH
	-- 示例代码 https://www.codeleading.com/article/21256072499/
	use({ "L3MON4D3/LuaSnip", lock = is_lock })
	use({ "saadparwaiz1/cmp_luasnip", lock = is_lock })

	-- ##########################################################
	-- dap
	-- 自动加载 ftplugin 目录下 .lua 的语言配置文件
	-- ##########################################################
	-- ......................................... 核心
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

	-- ......................................... dap lsp 安装管理工具
	use({
		"williamboman/mason.nvim",
		lock = is_lock,
		config = function()
			require("setting.init-mason")
		end,
	})

	-- ......................................... 虚拟文本
	use({ "theHamsta/nvim-dap-virtual-text", lock = is_lock })
	-- ......................................... python
	use({ "mfussenegger/nvim-dap-python", lock = is_lock })
	-- ......................................... java
	-- use{ 'mfussenegger/nvim-jdtls'}

	-- ##########################################################
	-- 望远镜
	-- ##########################################################
	use({
		"nvim-telescope/telescope.nvim",
		lock = is_lock,
		config = function()
			require("setting.init-telescope")
		end,
	})
	use({
		"nvim-telescope/telescope-project.nvim",
		lock = is_lock,
		config = function()
			require("setting.init-telescope-project")
		end,
	})
	use({ "nvim-telescope/telescope-dap.nvim", lock = is_lock })
	use({
		"nvim-telescope/telescope-ui-select.nvim",
		lock = is_lock,
		config = function()
			require("setting.init-telescope-ui-select")
		end,
	})
	use({ "nvim-telescope/telescope-fzf-native.nvim", lock = is_lock, run = "make" }) -- 模糊查询
	use({ "nvim-telescope/telescope-fzf-writer.nvim", lock = is_lock })
	use({ "nvim-telescope/telescope-hop.nvim", lock = is_lock })
	use({ "sudormrfbin/cheatsheet.nvim", lock = is_lock })
	--  use{ 'tami5/sqlite.lua', lock = is_lock } -- 搜做结果排序优化 (依赖)
	--  use{ 'nvim-telescope/telescope-frecency.nvim', lock = is_lock } -- 搜做结果排序优化

	-- ##########################################################
	-- window
	-- ##########################################################
	-- ......................................... 启动窗口
	use({
		"sindrets/winshift.nvim",
		lock = is_lock,
		config = function()
			require("setting.init-winshift")
		end,
	})

	-- ......................................... 编号选择窗口
	use({ "https://gitlab.com/yorickpeterse/nvim-window", lock = is_lock })

	-- ##########################################################
	-- terminal
	-- ##########################################################

	-- .........................................
	use({
		"akinsho/toggleterm.nvim",
		lock = is_lock,
		config = function()
			require("setting.init-toggleterm")
		end,
	})
	-- .........................................
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
	-- ......................................... 快捷键提示
	use({
		"folke/which-key.nvim",
		lock = is_lock,
		config = function()
			require("setting.init-which-key")
		end,
	})

	-- ......................................... 上面 buffer
	use({
		"akinsho/bufferline.nvim",
		lock = is_lock,
		config = function()
			require("setting.init-bufferline-nvim")
		end,
	})

	-- .........................................下面 status
	use({
		"nvim-lualine/lualine.nvim",
		lock = is_lock,
		config = function()
			require("setting.init-lualine")
		end,
	})

	-- ......................................... 文件树
	use({
		"kyazdani42/nvim-tree.lua",
		lock = is_lock,
		config = function()
			require("setting.init-nvim-tree")
		end,
	})

	-- ......................................... 语法高亮 (效果不明显是否用 ???)
	use({
		"nvim-treesitter/nvim-treesitter",
		lock = is_lock,
		config = function()
			require("setting.init-nvim-treesitter")
		end,
	})
	-- ......................................... 启动时间统计
	use({ "dstein64/vim-startuptime", lock = is_lock })

	-- ......................................... error list
	use({
		"folke/trouble.nvim",
		lock = is_lock,
		config = function()
			require("setting.init-trouble")
		end,
	})

	-- ......................................... 边栏函数, 变量
	use({
		"simrat39/symbols-outline.nvim",
		lock = is_lock,
		config = function()
			require("setting.init-symbols-outline")
		end,
	})

	-- ......................................... quickfix 窗口
	use({ "kevinhwang91/nvim-bqf", lock = is_lock, ft = "qf" })

	-- ......................................... 快速选择单词
	use({
		"phaazon/hop.nvim",
		lock = is_lock,
		branch = "v2",
		config = function()
			require("setting.init-hop-nvim")
		end,
	})

	-- ......................................... ranger
	use({
		"kevinhwang91/rnvimr",
		lock = is_lock,
		config = function()
			require("setting.init-rnvimr")
		end,
	})

	-- ......................................... 代码格式化
	use({
		"mhartington/formatter.nvim",
		lock = is_lock,
		config = function()
			require("setting.init-formatter")
		end,
	})

	-- ......................................... lazygit
	use({
		"kdheepak/lazygit.nvim",
		lock = is_lock,

		config = function()
			require("setting.init-lazygit")
		end,
	})
	-- ......................................... git
	use({ "lewis6991/gitsigns.nvim", lock = is_lock })
	-- ......................................... 注释
	use({
		"numToStr/Comment.nvim",
		lock = is_lock,
		config = function()
			require("setting.init-comment")
		end,
	})

	-- ......................................... 字典
	use({
		"voldikss/vim-translator",
		lock = is_lock,
		config = function()
			require("setting.init-vim-translator")
		end,
	})
	-- ......................................... 文本对齐
	use({ "junegunn/vim-easy-align", lock = is_lock })

	-- ......................................... undo tree
	use({
		"mbbill/undotree",
		lock = is_lock,
		config = function()
			require("setting.init-undotree")
		end,
	})

	-- ......................................... 通知栏
	use({
		"rcarriga/nvim-notify",
		lock = is_lock,
		config = function()
			require("setting.init-nvim-notify")
		end,
	})

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

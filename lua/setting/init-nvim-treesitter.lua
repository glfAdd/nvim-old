--[[
:TSUpdate
:TSInstallInfo
:TSBufToggle highlight
:TSInstall python


help c python java json yaml vim comment lua go make markdown LLVM
    :TSBufEnable {module}           当前 buffer
    :TSBufDisable {module}
    :TSEnable {module} [{ft}]       每个 buffer
    :TSDisable {module} [{ft}]
    :TSModuleInfo [{module}]        查看信息


代码格式化 { }
    zc  折叠代码
    zo  打开

]]

local vim = vim
local install_path = "~/.config/nvim/source/treesitter"
local config = {
	-- 默认安装的解析器
	ensure_installed = {},
	-- 开启默认安装
	sync_install = false,
	-- 打开 buffer 时自动安装没有的解析器
	auto_install = true,
	-- 忽略安装的解析器
	ignore_install = { "javascript" },
	-- 修改解析器安装路径
	parser_install_dir = install_path,
	-- 代码高亮
	highlight = {
		-- 是否可用
		enable = true,
		-- 禁用解析器 (不是文件扩展名)
		disable = {},
		-- 设为 false 即可
		additional_vim_regex_highlighting = false,
	},

	-- Treesitter 的代码格式化
	-- 选中后按 = 格式化
	indent = {
		enable = true,
	},

	-- 增量选择
	-- 选择一行后按 CR / BS / TAB 增加或减小选中的代码块
	incremental_selection = {
		enable = true,
		keymaps = {
			init_selection = "<CR>",
			node_incremental = "<CR>",
			node_decremental = "<BS>",
			scope_incremental = "<TAB>",
		},
	},
}

require("nvim-treesitter.configs").setup(config)
-- 修改解析器安装路径必须添加这个
vim.opt.runtimepath:append(install_path)

--
--
-- 	-- 彩虹括号这是
-- 	-- https://github.com/p00f/nvim-ts-rainbow
-- 	rainbow = {
-- 		enable = true,
-- 		-- disable = { "jsx", "cpp" }, list of languages you want to disable the plugin for
-- 		extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
-- 		max_file_lines = nil, -- Do not enable for files with more than n lines, int
-- 		-- colors = {}, -- table of hex strings
-- 		-- termcolors = {} -- table of colour name strings
-- 	},
-- })
--

-- 打开文件时认不折叠代码
vim.wo.foldlevel = 99
-- 折叠方式
vim.wo.foldmethod = "expr"
vim.wo.foldexpr = "nvim_treesitter#foldexpr()"

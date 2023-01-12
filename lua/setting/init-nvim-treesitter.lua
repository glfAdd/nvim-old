--[[
:TSUpdate
:TSInstallInfo

网速慢可以自己下载放在目录下


]]

local vim = vim
local install_path = "~/.config/nvim/source/treesitter"

require("nvim-treesitter.configs").setup({
	-- 默认安装的解析器
	ensure_installed = { "help", "c", "python", "java", "json", "yaml", "vim",  "comment", "lua" },
	-- 开启默认安装
	sync_install = false,
	-- 打开 buffer 时自动安装没有的解析器
	auto_install = true,
	-- 忽略安装的解析器
	ignore_install = { "javascript" },
	-- 修改解析器安装路径
	parser_install_dir = install_path,
	highlight = {
		-- 整个扩展是否可用
		enable = true,
		-- 禁用解析器 (不是文件扩展名)
		disable = {},
		-- 设为 false 即可
		additional_vim_regex_highlighting = false,
	},
})
-- 修改解析器安装路径必须添加这个
vim.opt.runtimepath:append(install_path)

-- 	-- 启用增量选择
-- 	incremental_selection = {
-- 		enable = true,
-- 		keymaps = {
-- 			init_selection = "<CR>",
-- 			node_incremental = "<CR>",
-- 			node_decremental = "<BS>",
-- 			scope_incremental = "<TAB>",
-- 		},
-- 	},
--
-- 	-- 启用基于Treesitter的代码格式化(=) . NOTE: This is an experimental feature.
-- 	indent = {
-- 		enable = true,
-- 	},
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
-- -- 开启 Folding
-- vim.wo.foldmethod = "expr"
-- vim.wo.foldexpr = "nvim_treesitter#foldexpr()"
-- -- 默认不要折叠
-- -- https://stackoverflow.com/questions/8316139/how-to-st-the-default-to-unfolded-when-you-open-a-file
-- vim.wo.foldlevel = 99

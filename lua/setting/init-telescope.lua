require("telescope").setup({
	defaults = {
		layout_strategy = "horizontal",
		layout_config = {
			height = 0.95, -- 边框距离
			width = 0.95, -- 边框距离
			preview_width = 0.4, -- 左右比例
		},
	},
	pickers = {
		find_files = {
			-- theme = "dropdown", -- 上下样式
			-- theme = "cursor", -- 小悬浮窗口
			-- theme = "ivy", -- 下部窗口
		},
	},
	extensions = {
		fzf = {
			fuzzy = true, -- false will only do exact matching
			override_generic_sorter = true, -- override the generic sorter
			override_file_sorter = true, -- override the file sorter
			case_mode = "smart_case", -- or 'ignore_case' or 'respect_case'
		},
	},
})

require("telescope").load_extension("fzf")
require("telescope").load_extension("dap")
-- require'telescope'.load_extension('frecency') -- 搜做结果排序优化

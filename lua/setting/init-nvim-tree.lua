require("nvim-tree").setup({
	--auto_close = true, -- 关闭文件时自动关闭
	sort_by = "name",
	view = {
		-- width = 40,
		-- height = 30,
		hide_root_folder = false, -- 隐藏顶部的根目录显示
		adaptive_size = true,
		side = "left",
	},
	-- 是否启用 git 信息
	git = {
		enable = true,
		ignore = true,
		timeout = 500,
	},
})

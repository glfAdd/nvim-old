--[[
命令
    Trouble [mode]: open the list
    TroubleClose [mode]: close the list
    TroubleToggle [mode]: toggle the list
    TroubleRefresh          刷新


模式
    document_diagnostics    LSP 文档诊断
    workspace_diagnostics   LSP 工作区诊断
    lsp_references          LSP 对游标下单词的引用
    lsp_definitions         LSP 游标下单词的定义
    lsp_type_definitions    LSP 游标下单词的类型定义
    quickfix                快速修复
    loclist                 窗口位置列表中的项目

--]]

local config = {
	position = "bottom", -- bottom, top, left, right
	height = 10,
	width = 50,
	mode = "workspace_diagnostics", -- workspace_diagnostics | document_diagnostics | quickfix | lsp_references | loclist"
	icons = true, -- 启动图标
	fold_open = "", -- 打开图标
	fold_closed = "", -- 关闭图标
	signs = {
		error = "",
		warning = "",
		hint = "",
		information = "",
		other = "﫠",
	},
	group = true, -- 启动分组
	padding = true, -- add an extra new line on top of the list
	action_keys = {
		close = "q",
		cancel = "<esc>",
		refresh = "r",
		jump = { "<cr>", "<tab>" }, -- jump to the diagnostic or open / close folds
		open_split = { "<c-x>" }, -- open buffer in new split
		open_vsplit = { "<c-v>" }, -- open buffer in new vsplit
		open_tab = { "<c-t>" }, -- open buffer in new tab
		jump_close = { "o" }, -- jump to the diagnostic and close the list
		toggle_mode = "m", -- toggle between "workspace" and "document" diagnostics mode
		toggle_preview = "P", -- toggle auto_preview
		hover = "K", -- opens a small popup with the full multiline message
		preview = "p", -- preview the diagnostic location
		close_folds = { "zM", "zm" }, -- close all folds
		open_folds = { "zR", "zr" }, -- open all folds
		toggle_fold = { "zA", "za" }, -- toggle fold of current file
		previous = "k",
		next = "j",
	},
	indent_lines = true, -- add an indent guide below the fold icons
	auto_open = false, -- automatically open the list when you have diagnostics
	auto_close = false, -- automatically close the list when you have no diagnostics
	auto_preview = true, -- automatically preview the location of the diagnostic. <esc> to close preview and go back to last window
	auto_fold = false, -- automatically fold a file trouble list at creation
	auto_jump = { "lsp_definitions" }, -- for the given modes, automatically jump if there is only a single result
	use_diagnostic_signs = false, -- enabling this will use the signs defined in your lsp client
}

require("trouble").setup(config)

vim.opt.termguicolors = true

require("bufferline").setup({
	options = {
		always_show_bufferline = false,
		numbers = "ordinal",
		show_buffer_icons = false,
		show_buffer_close_icons = false,
		show_close_icon = false,
		max_prefix_length = 20,
		max_name_length = 40, -- 文件名最大宽度
		-- 左侧让出 nvim-tree 的位置
		offsets = {
			{
				filetype = "NvimTree",
				text = "File Explorer",
				highlight = "Directory",
				text_align = "left",
			},
		},

		-- diagnostics = "nvim_lsp", -- 使用 nvim 内置lsp
		-- 显示lsp报错图标
		-- diagnostics_indicator = function(count, level, diagnostics_dict, context)
		--   local s = " "
		--   for e, n in pairs(diagnostics_dict) do
		--     local sym = e == "error" and "e"
		--       or (e == "warning" and "w" or "w" )
		--     s = s .. n .. sym
		--   end
		--   return s
		-- end
	},
})

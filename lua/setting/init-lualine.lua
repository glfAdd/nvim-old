--[[
a b c x y z 区域位置
+-------------------------------------------------+
| A | B | C                             X | Y | Z |
+-------------------------------------------------+

区域名称
    branch` (git branch)
    buffers` (shows currently available buffers)
    diagnostics` (diagnostics count from your preferred source)
    diff` (git diff status)
    encoding` (file encoding)
    fileformat` (file format)
    filename`
    filesize`
    filetype`
    hostname`
    location` (location in file in line:column format)
    mode` (vim mode)
    progress` (%progress in file)
    searchcount` (number of search matches when hlsearch is active)
    tabs` (shows currently available tabs)
    windows` (shows currently available windows)

--]]

require("lualine").setup({
	options = {
		icons_enabled = true,
		theme = "auto",
		component_separators = { left = "", right = "" },
		section_separators = { left = "", right = "" },
		disabled_filetypes = {
			statusline = {},
			winbar = {},
		},
		ignore_focus = {},
		always_divide_middle = true,
		globalstatus = false,
		refresh = {
			statusline = 1000,
			tabline = 1000,
			winbar = 1000,
		},
	},
	sections = {
		lualine_a = {},
		lualine_b = {},
		lualine_c = { "filename", "progress", "location", "diff", "diagnostics" },
		lualine_x = {},
		lualine_y = {},
		lualine_z = {},
	},
	inactive_sections = {
		lualine_a = {},
		lualine_b = {},
		lualine_c = { "filename" },
		lualine_x = { "location" },
		lualine_y = {},
		lualine_z = {},
	},
	tabline = {},
	winbar = {},
	inactive_winbar = {},
	extensions = {},
})

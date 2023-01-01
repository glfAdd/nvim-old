--[[
:ToggleTerm size=40 dir=~/Desktop direction=horizontal

:ToggleTermSendCurrentLine <T_ID>: 发送当前行
:ToggleTermSendVisualLines <T_ID>: 发送选中行
:ToggleTermSendVisualSelection <T_ID>: sends only the visually selected text (this can be a block of text or a selection in a single line)


--]]

local vim = vim
require("toggleterm").setup({
	-- size can be a number or function which is passed the current terminal
	size = function(term)
		if term.direction == "horizontal" then
			return 20
		elseif term.direction == "vertical" then
			return vim.o.columns * 0.5
		end
	end,
	open_mapping = [[<c-\>]],
	--   on_create = fun(t: Terminal), -- function to run when the terminal is first created
	--   on_open = fun(t: Terminal), -- function to run when the terminal opens
	--   on_close = fun(t: Terminal), -- function to run when the terminal closes
	--   on_stdout = fun(t: Terminal, job: number, data: string[], name: string) -- callback for processing output on stdout
	--   on_stderr = fun(t: Terminal, job: number, data: string[], name: string) -- callback for processing output on stderr
	--   on_exit = fun(t: Terminal, job: number, exit_code: number, name: string) -- function to run when terminal process exits
	hide_numbers = true, -- hide the number column in toggleterm buffers
	shade_filetypes = {},
	autochdir = false, -- when neovim changes it current directory the terminal will change it's own when next it's opened
	--   highlights = {
	--     -- highlights which map to a highlight group name and a table of it's values
	--     -- NOTE: this is only a subset of values, any group placed here will be set for the terminal window split
	--     Normal = {
	--       guibg = "<VALUE-HERE>",
	--     },
	--     NormalFloat = {
	--       link = 'Normal'
	--     },
	--     FloatBorder = {
	--       guifg = "<VALUE-HERE>",
	--       guibg = "<VALUE-HERE>",
	--     },
	--   },
	shade_terminals = true, -- NOTE: this option takes priority over highlights specified so if you specify Normal highlights you should set this to false
	shading_factor = "1", -- the degree by which to darken to terminal colour, default: 1 for dark backgrounds, 3 for light
	start_in_insert = true,
	insert_mappings = true, -- whether or not the open mapping applies in insert mode
	terminal_mappings = true, -- whether or not the open mapping applies in the opened terminals
	persist_size = true, -- 保证水平或垂直终端大小相同
	persist_mode = true, -- if set to true (default) the previous terminal mode will be remembered
	direction = "tab", -- vertical | horizontal | tab(buffer中) | float(内部窗口)
	close_on_exit = true, -- close the terminal window when the process exits
	shell = vim.o.shell, -- change the default shell
	auto_scroll = true, -- automatically scroll to the bottom on terminal output
	float_opts = {
		border = "single", -- 'single' | 'double' | 'shadow' | 'curved' |
		width = 40,
		height = 40,
		winblend = 3,
		highlights = {
			border = "Normal",
			background = "Normal",
		},
	},
	winbar = {
		enabled = false,
		name_formatter = function(term) --  term: Terminal
			return term.name
		end,
	},
})

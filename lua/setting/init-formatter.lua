--[[
格式化 json, 打开 json 文件后输入:
    :%!python -m json.tool


--]]

local util = require("formatter.util")
require("formatter").setup({
	logging = true,
	log_level = vim.log.levels.WARN,
	filetype = {

		-- ##########################################################
		-- lua
		-- ##########################################################
		lua = {
			function()
				if util.get_current_buffer_file_name() == "special.lua" then
					return nil
				end
				return {
					exe = "~/.config/nvim/source/stylua-v0.15.3/stylua",
					-- args = {
					-- 	"--search-parent-directories",
					-- 	"--stdin-filepath",
					-- 	util.escape_path(util.get_current_buffer_file_path()),
					-- 	"--",
					-- 	"-",
					-- },
					-- stdin = true,
				}
			end,
		},

		-- ##########################################################
		-- python
		-- ##########################################################
		python = {
			-- 方式1: 直接使用系统定义好的
			-- require("formatter.filetypes.python").black,
			-- require("formatter.filetypes.python").yapf,

			--方式2: 自定义, 可以设置参数
			function()
				return {
					exe = "~/.config/nvim/source/p3.11.0-venv/bin/python -m black",
					-- exe = "~/.config/nvim/source/p3.11.0-venv/bin/python -m autopep8",
					-- args = {
					-- 	"--in-place --aggressive --aggressive",
					-- 	vim.fn.fnameescape(vim.api.nvim_buf_get_name(0)),
					-- },
					-- stdin = false,
				}
			end,
		},

		-- ##########################################################
		-- json
		-- ##########################################################
		-- json = {
		-- 	function()
		-- 		return {
		-- 			exe = "~/.config/nvim/source/prettierd-0.23.2/bin/prettierd",
		-- 			args = {
		-- 				"--stdin-filepath",
		-- 				vim.fn.fnameescape(vim.api.nvim_buf_get_name(0)),
		-- 				"--double-quote",
		-- 			},
		-- 			stdin = true,
		-- 		}
		-- 	end,
		-- },

		-- Use the special "*" filetype for defining formatter configurations on
		-- any filetype
		["*"] = {
			-- "formatter.filetypes.any" defines default configurations for any
			require("formatter.filetypes.any").remove_trailing_whitespace,
		},
	},
})

-- 配置保存文件自动格式化代码
-- vim.api.nvim_exec(
-- 	[[
--     augroup FormatAutogroup
--     autocmd!
--     autocmd BufWritePost *.go,*.lua,*.py,*.vue,*.json,*.js FormatWrite
--     augroup END
-- ]],
-- 	true
-- )

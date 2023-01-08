--[[
ftplugin 配置文件目录
    python.lua

路径不能使用相对路径, 必须用绝对路径

-- 当前路径
local cwd = vim.fn.getcwd()
--]]
local dap = require("dap")
local vim = vim

-- ##########################################################
-- ui
-- ##########################################################
local dap_breakpoint_color = {
	breakpoint = {
		ctermbg = 0,
		fg = "#993939",
		bg = "#31353f",
	},
	logpoing = {
		ctermbg = 0,
		fg = "#61afef",
		bg = "#31353f",
	},
	stopped = {
		ctermbg = 0,
		fg = "#98c379",
		bg = "#31353f",
	},
}

vim.api.nvim_set_hl(0, "DapBreakpoint", dap_breakpoint_color.breakpoint)
vim.api.nvim_set_hl(0, "DapLogPoint", dap_breakpoint_color.logpoing)
vim.api.nvim_set_hl(0, "DapStopped", dap_breakpoint_color.stopped)

local dap_breakpoint = {
	error = {
		text = "",
		texthl = "DapBreakpoint",
		linehl = "DapBreakpoint",
		numhl = "DapBreakpoint",
	},
	condition = {
		text = "ﳁ",
		texthl = "DapBreakpoint",
		linehl = "DapBreakpoint",
		numhl = "DapBreakpoint",
	},
	rejected = {
		text = "",
		texthl = "DapBreakpint",
		linehl = "DapBreakpoint",
		numhl = "DapBreakpoint",
	},
	logpoint = {
		text = "",
		texthl = "DapLogPoint",
		linehl = "DapLogPoint",
		numhl = "DapLogPoint",
	},
	stopped = {
		text = "",
		texthl = "DapStopped",
		linehl = "DapStopped",
		numhl = "DapStopped",
	},
}

vim.fn.sign_define("DapBreakpoint", dap_breakpoint.error)
vim.fn.sign_define("DapBreakpointCondition", dap_breakpoint.condition)
vim.fn.sign_define("DapBreakpointRejected", dap_breakpoint.rejected)
vim.fn.sign_define("DapLogPoint", dap_breakpoint.logpoint)
vim.fn.sign_define("DapStopped", dap_breakpoint.stopped)

-- ##########################################################
-- python
-- ##########################################################
-- 调试器使用 debugpy
dap.adapters.python = {
	-- type 表示启动调试器的方式
	-- executable 表示由客户端自行启动调试器
	type = "executable",
	-- 启动调试器的命令
	command = "/home/gong/.config/nvim/source/p3.11.0-venv/bin/python",
	-- python 调试工具 debugpy 是一个 Python 的第三方模块, 使用 python -m debugpy.adapter 来启动这个调试器
	args = { "-m", "debugpy.adapter" },
}

-- 启动配置
dap.configurations.python = {
	{
		-- 使用哪个调试器，跟我们之前配置的 dap.adapters相关
		type = "python",
		-- 调试的方式
		-- request = "attach", -- 附加到一个已有的进程
		request = "launch", -- 启动新进程调试
		name = "python base",
		-- 当前文件
		program = "${file}",
		pythonPath = function()
			return "/usr/bin/python"
		end,
	},
	{
		type = "python",
		request = "launch",
		name = "python base venv",
		program = "${file}",
		pythonPath = function()
			return os.getenv("VIRTUAL_ENV") .. "/bin/python"
		end,
	},
}

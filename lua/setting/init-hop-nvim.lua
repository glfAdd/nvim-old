--[[
HopWord 转到当前缓冲区中的任何单词
HopChar1 转到当前缓冲区中的任意字符(:)。
HopChar2 转到当前缓冲区中的任何bigrams (:)。
HopPattern 进行类似于/的任意搜索，并转到任何出现的位置(:)。
HopLine
HopLineStart
去任何一行和任何行开始
HopAnywhere 去任何地方
使用具有多窗口支持的跳跨窗口(:Hop*MW)。
]]
local config = {
	keys = "etovxqpdygfblzhckisuran",
}

require("hop").setup(config)

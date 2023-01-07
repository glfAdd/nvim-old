local vim = vim

-- 弹窗样式
-- popup 悬浮窗口
-- preview 屏幕底部窗口
vim.g.translator_window_type = "popup"
vim.g.translator_target_lang = "zh" -- 目标语言为中文
vim.g.translator_source_lang = "auto" -- 源语言自动识别
vim.g.translator_default_engines = { "bing" } -- 使用的翻译工具 (youdao 不可用)
vim.g.translator_window_borderchars = { "─", "│", "─", "│", "┌", "┐", "┘", "└" } -- 边框样式
vim.g.translator_window_max_width = 0.6
vim.g.translator_window_max_height = 0.6

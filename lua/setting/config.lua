-- lsp
require('setting.init-lsp')
require('setting.init-lsp_signature')

-- dap (自动加载 ftplugin 目录下 .lua 的语言配置文件)
require('setting.init-dap')
require('setting.init-dap-ui')
require('setting.init-nvim-dap-virtual-text')

-- cmp
require('setting.init-cmp')

-- UI
require('setting.init-gruvbox') -- color
require('setting.init-vim-startify') -- dashboard
require('setting.init-lualine') -- status line
require('setting.init-bufferline-nvim') -- bufferline
require('setting.init-which-key') -- which-key
require('setting.init-comment')
require('setting.init-nvim-tree') -- file tree
require('setting.init-vim-translator')
require('setting.init-formatter')
require('setting.init-symbols-outline')
require('setting.init-trouble')
require('setting.init-nvim-treesitter')
require('setting.init-nvim-autopairs')
require('setting.init-rnvimr')

-- terminal
require("setting.init-toggleterm")
require("setting.init-vim-floaterm")

-- window
require("setting.init-winshift")
require('setting.init-nvim-window')
require('setting.init-yode-nvim')

-- telescope
require('setting.init-telescope')
require('setting.init-telescope-ui-select')
require('setting.init-telescope-project')

-- tool
require('setting.init-gitsigns') -- git



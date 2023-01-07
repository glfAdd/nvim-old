-- ......................................... 自定义 vim-startify 样式
local alpha = require("alpha")
local startify = require("alpha.themes.startify")
startify.section.header.val = {
	[[                ████▌█████▌█ ████████▐▀██▀  ]],
	[[              ▄█████ █████▌ █ ▀██████▌█▄▄▀▄ ]],
	[[              ▌███▌█ ▐███▌▌  ▄▄ ▌█▌███▐███ ▀]],
	[[             ▐ ▐██  ▄▄▐▀█   ▐▄█▀▌█▐███▐█    ]],
	[[               ███ ▌▄█▌  ▀  ▀██  ▀██████▌   ]],
	[[                ▀█▌▀██▀ ▄         ███▐███   ]],
	[[                 ██▌             ▐███████▌  ]],
	[[                 ███     ▀█▀     ▐██▐███▀▌  ]],
	[[                 ▌█▌█▄         ▄▄████▀ ▀    ]],
	[[                   █▀██▄▄▄ ▄▄▀▀▒█▀█         ]],
}
startify.section.header.opts = {
	position = "left", -- left center right
}
alpha.setup(startify.config)

-- ......................................... 使用 vim-startify 的默认样式
-- require("alpha").setup(require("alpha.themes.startify").config)

-- ......................................... 使用另一种样式
-- local dashboard = require("alpha.themes.dashboard")
-- require("alpha").setup(dashboard.opts)
-- dashboard.section.header.val = {
-- 	"",
-- 	"    ████▌█████▌█ ████████▐▀██▀    ",
-- 	"  ▄█████ █████▌ █ ▀██████▌█▄▄▀▄   ",
-- 	"  ▌███▌█ ▐███▌▌  ▄▄ ▌█▌███▐███ ▀  ",
-- 	" ▐ ▐██  ▄▄▐▀█   ▐▄█▀▌█▐███▐█      ",
-- 	"   ███ ▌▄█▌  ▀  ▀██  ▀██████▌     ",
-- 	"    ▀█▌▀██▀ ▄         ███▐███     ",
-- 	"     ██▌             ▐███████▌    ",
-- 	"     ███     ▀█▀     ▐██▐███▀▌    ",
-- 	"     ▌█▌█▄         ▄▄████▀ ▀      ",
-- 	"       █▀██▄▄▄ ▄▄▀▀▒█▀█           ",
-- 	"",
-- }
--
-- dashboard.section.footer.val = {
-- 	"Highlord Mograine . The Ashbringer",
-- }

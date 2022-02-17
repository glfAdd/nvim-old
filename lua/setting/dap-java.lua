-- java 项目启动失败的时候要删除 workspace 对应的项目文件后重试

require('dap.ext.vscode').load_launchjs('/home/glfadd/.config/nvim/vscode-launch/java.json')



-- 使用 vscode 的 lauch.json 文件, 更方便
-- local dap = require('dap')
-- dap.configurations.java = {
--   {
--     -- 不可用
--     type= "java",
--     name= "java-script",
--     request= "launch",
--     mainClass= "${file}"
--   },
--   {
--     -- 可用(单个文件)
--     type= "java",
--     name= "java-current-file",
--     request= "launch",
--     mainClass= "A",
--   },
-- }

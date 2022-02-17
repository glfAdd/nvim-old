-- 1. 如果导入空的 json 文件会报错
-- 2. java 项目启动失败的时候要删除 workspace 对应的项目文件后重试

-- dap jvava config
require('dap.ext.vscode').load_launchjs('/home/glfadd/.config/nvim/vscode-launch/java.json');
-- dap python config
require('dap.ext.vscode').load_launchjs('/home/glfadd/.config/nvim/vscode-launch/python.json');

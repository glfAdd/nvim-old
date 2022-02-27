local vim = vim
local project_name = vim.fn.fnamemodify(vim.fn.getcwd(), ':p:h:t')
local workspace_dir = '/opt/neovim-dap/dap_auto_create' .. project_name
local maver_setting = '/opt/apache-maven-3.8.1/conf/settings.xml'

local bundles = {
  vim.fn.glob("/opt/neovim-dap/java-debug/com.microsoft.java.debug.plugin/target/com.microsoft.java.debug.plugin-*.jar"),
}
vim.list_extend(bundles, vim.split(vim.fn.glob("/opt/neovim-dap/vscode-java-test/server/*.jar"), "\n"))

local config = {
  cmd = {
    'java',
    '-Declipse.application=org.eclipse.jdt.ls.core.id1',
    '-Dosgi.bundles.defaultStartLevel=4',
    '-Declipse.product=org.eclipse.jdt.ls.core.product',
    '-Dlog.protocol=true',
    '-Dlog.level=ALL',
    '-Xms1g',
    '--add-modules=ALL-SYSTEM',
    '--add-opens', 'java.base/java.util=ALL-UNNAMED',
    '--add-opens', 'java.base/java.lang=ALL-UNNAMED',
    '-jar', '/opt/neovim-dap/jdt-language-server-1.9.0/plugins/org.eclipse.equinox.launcher_1.6.400.v20210924-0641.jar',
    '-configuration', '/opt/neovim-dap/jdt-language-server-1.9.0/config_linux',
    '-data', workspace_dir -- 项目配置文件保存在这里
  },
  root_dir = require('jdtls.setup').find_root({'.git', 'mvnw', 'gradlew'}),
  settings = {
    java = {
      home = '/opt/jdk-11.0.12',
      eclipse = {
        downloadSources = true,
      },
      server = {
        launchMode = "Hybrid",
      },
      maven = {
        downloadSources = true,
        updateSnapshots = true,
      },
      configuration = {
        maven = {
          userSettings = maver_setting,
          globalSettings = maver_setting
        },
        runtimes = {
          {
            name = "JavaSE-11",
            path = "/opt/jdk-11.0.12",
          },
          -- {
          --   name = "JavaSE-17",
          --   path = "/Library/Java/JavaVirtualMachines/zulu-17.jdk/Contents/Home",
          -- },
        }
      }
    }
  },
  init_options = {
    bundles = bundles
  },
}


config['on_attach'] = function(client, bufnr)
  require('jdtls').setup_dap({ hotcodereplace = 'auto' })
end

require('jdtls').start_or_attach(config)



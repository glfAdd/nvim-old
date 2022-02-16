local vim = vim
local project_name = vim.fn.fnamemodify(vim.fn.getcwd(), ':p:h:t')
local workspace_dir = '/opt/neovim-dap/dap-java/' .. project_name

local bundles = {
  vim.fn.glob("/opt/neovim-dap/java-debug/com.microsoft.java.debug.plugin/target/com.microsoft.java.debug.plugin-*.jar")
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
    '-data', workspace_dir
  },
  root_dir = require('jdtls.setup').find_root({'.git', 'mvnw', 'gradlew'}),

  -- Here you can configure eclipse.jdt.ls specific settings
  -- See https://github.com/eclipse/eclipse.jdt.ls/wiki/Running-the-JAVA-LS-server-from-the-command-line#initialize-request
  settings = {
    java = {
    }
  },

  init_options = {
    bundles = bundles;
  },
}

config['on_attach'] = function(client, bufnr)
  -- With `hotcodereplace = 'auto' the debug adapter will try to apply code changes
  -- you make during a debug session immediately.
  -- Remove the option if you do not want that.
  require('jdtls').setup_dap({ hotcodereplace = 'auto' })
end



-- This starts a new client & server,
-- or attaches to an existing client & server depending on the `root_dir`.
require('jdtls').start_or_attach(config)


local dap = require('dap')
dap.configurations.java = {
  {
    type= "java",
    name= "java-script",
    request= "launch",
    mainClass= "${file}"
  },
  {
    type= "java",
    name= "java-script2",
    request= "launch",
    mainClass= "${file}"
  },

  -- {
  --   -- classPaths = {},
  --   -- projectName = "yourProjectName",
  --   --
  --   -- javaExec = "/home/glfadd/.sdkman/candidates/java/current/bin/java",
  --   --
  --   -- -- If using the JDK9+ module system, this needs to be extended
  --   -- -- `nvim-jdtls` would automatically populate this property
  --   -- modulePaths = {},
  --   -- request = "launch",
  --   type= "java",
  --   name= "Launch Current File2",
  --   request= "launch",
  --   -- mainClass= "${file}"
  --   mainClass= "A"
  -- },
}
require'jdtls'.test_class()
require'jdtls'.test_nearest_method()

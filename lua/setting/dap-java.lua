local bundles = {
  vim.fn.glob("/opt/neovim-dap/java-debug/com.microsoft.java.debug.plugin/target/com.microsoft.java.debug.plugin-*.jar"),
};
vim.list_extend(bundles, vim.split(vim.fn.glob("/opt/neovim-dap/vscode-java-test/server/*.jar"), "\n"))

-- See `:help vim.lsp.start_client` for an overview of the supported `config` options.
local config = {
  -- The command that starts the language server
  -- See: https://github.com/eclipse/eclipse.jdt.ls#running-from-the-command-line
  cmd = {

    -- 💀
    'java', -- or '/path/to/java11_or_newer/bin/java'
    '-Declipse.application=org.eclipse.jdt.ls.core.id1',
    '-Dosgi.bundles.defaultStartLevel=4',
    '-Declipse.product=org.eclipse.jdt.ls.core.product',
    '-Dlog.protocol=true',
    '-Dlog.level=ALL',
    '-Xms1g',
    '--add-modules=ALL-SYSTEM',
    '--add-opens', 'java.base/java.util=ALL-UNNAMED',
    '--add-opens', 'java.base/java.lang=ALL-UNNAMED',
    '-jar', '/opt/neovim-dap/jdt-language-server-1.8.0-202201261434/plugins/org.eclipse.equinox.launcher_1.6.400.v20210924-0641.jar',
    '-configuration', '/opt/neovim-dap/jdt-language-server-1.8.0-202201261434/config_linux',
    -- 💀
    -- See `data directory configuration` section in the README
    -- '-data', '/path/to/unique/per/project/workspace/folder'
    '-data', '~/Desktop/learn/test'
  },

  -- 💀
  -- This is the default if not provided, you can remove it. Or adjust as needed.
  -- One dedicated LSP server & client will be started per unique root_dir
  -- root_dir = require('jdtls.setup').find_root({'.git', 'mvnw', 'gradlew'}),

  -- Here you can configure eclipse.jdt.ls specific settings
  -- See https://github.com/eclipse/eclipse.jdt.ls/wiki/Running-the-JAVA-LS-server-from-the-command-line#initialize-request
  -- for a list of options
  -- settings = {
  --   java = {
  --   }
  -- },

  -- Language server `initializationOptions`
  -- You need to extend the `bundles` with paths to jar files
  -- if you want to use additional eclipse.jdt.ls plugins.
  --
  -- See https://github.com/mfussenegger/nvim-jdtls#java-debug-installation
  --
  -- If you don't plan on using the debugger or other eclipse.jdt.ls plugins you can remove this
  init_options = {
    bundles = bundles
  },
}
-- This starts a new client & server,
-- or attaches to an existing client & server depending on the `root_dir`.
require('jdtls').start_or_attach(config)

local dap = require('dap')
dap.configurations.java = {
    -- classPaths = {},
    -- projectName = "yourProjectName",
    --
    javaExec = "/home/glfadd/.sdkman/candidates/java/current/bin/java",
    --
    -- -- If using the JDK9+ module system, this needs to be extended
    -- -- `nvim-jdtls` would automatically populate this property
    -- modulePaths = {},
    -- request = "launch",
            type= "java",
            name= "Launch Current File",
            request= "launch",
            mainClass= "${file}"
}




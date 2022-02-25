local project_name = vim.fn.fnamemodify(vim.fn.getcwd(), ':p:h:t')
local workspace_dir = '/opt/neovim-dap/dap-autocreate/' .. project_name

local config = {
  cmd = {
    '/opt/jdk-11.0.12/bin/java', -- or '/path/to/java11_or_newer/bin/java'
    '-Declipse.application=org.eclipse.jdt.ls.core.id1',
    '-Dosgi.bundles.defaultStartLevel=4',
    '-Declipse.product=org.eclipse.jdt.ls.core.product',
    '-Dlog.protocol=true',
    '-Dlog.level=ALL',
    '-XX:+UseParallelGC',
    '-XX:GCTimeRatio=4',
    '-XX:AdaptiveSizePolicyWeight=90',
    '-Dsun.zip.disableMemoryMapping=true',
    '-Xms100m',
    '-Xmx2g',
    '-javaagent:/opt/software/lsp/lombok.jar',
    '--add-modules=ALL-SYSTEM',
    '--add-opens', 'java.base/java.util=ALL-UNNAMED',
    '--add-opens', 'java.base/java.lang=ALL-UNNAMED',
    '-jar', '/opt/neovim-dap/jdt-language-server-1.9.0/plugins/org.eclipse.jdt.launching_3.19.500.v20220125-2008.jar',
    '-configuration', '/opt/neovim-dap/jdt-language-server-1.9.0/config_linux',
    '-data', workspace_dir,
  },
  root_dir = require('jdtls.setup').find_root({'.git', 'mvnw', 'gradlew'}),
  settings = {
    java = {
      home = "/opt/jdk-11.0.12",
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
          userSettings = "/opt/apache-maven-3.8.1/conf/settings.xml",
          globalSettings = "/opt/apache-maven-3.8.1/conf/settings.xml",
        },
        runtimes = {
          -- {
          --   name = "JavaSE-1.8",
          --   path = "/Library/Java/JavaVirtualMachines/zulu-8.jdk/Contents/Home",
          -- },
          {
            name = "JavaSE-11",
            path = "/opt/jdk-11.0.12",
          },
        }
      },
    }
  },
}


local bundles = {
  vim.fn.glob("/opt/neovim-dap/java-debug/com.microsoft.java.debug.plugin/target/com.microsoft.java.debug.plugin-*.jar")
};
vim.list_extend(bundles, vim.split(vim.fn.glob("/opt/neovim-dap/vscode-java-test/server/*.jar"), "\n"))
config['init_options'] = {
  bundles = bundles;
}

config['on_attach'] = function(client, bufnr)
  require('jdtls').setup_dap({ hotcodereplace = 'auto' })
end


local jdtls = require('jdtls')
local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
-- capabilities.experimental = {
--   hoverActions = true,
--   hoverRange = true,
--   serverStatusNotification = true,
--   snippetTextEdit = true,
--   codeActionGroup = true,
--   ssr = true,
-- }

config.capabilities = capabilities;
jdtls.start_or_attach(config)

-- local map = vim.api.nvim_set_keymap
-- require('keybindings').maplsp(map)
--
vim.cmd([[
command! -nargs=0 OR   :lua require'jdtls'.organize_imports()
command! -nargs=0 Format  :lua vim.lsp.buf.formatting()
nnoremap crv <Cmd>lua require('jdtls').extract_variable()<CR>
vnoremap crv <Esc><Cmd>lua require('jdtls').extract_variable(true)<CR>
nnoremap crc <Cmd>lua require('jdtls').extract_constant()<CR>
vnoremap crc <Esc><Cmd>lua require('jdtls').extract_constant(true)<CR>
vnoremap crm <Esc><Cmd>lua require('jdtls').extract_method(true)<CR>
function! s:jdtls_test_class_ui()
  lua require'jdtls'.test_class()
  lua require'dapui'.open()
endfunction
function! s:jdtls_test_method_ui()
  lua require'jdtls'.test_nearest_method()
  lua require'dapui'.open()
endfunction
command! -nargs=0 TestClass  :lua require'jdtls'.test_class()
command! -nargs=0 TestMethod  :lua require'jdtls'.test_nearest_method()
command! -nargs=0 TestClassUI  :call s:jdtls_test_class_ui()
command! -nargs=0 TestMethodUI :call s:jdtls_test_method_ui()
" nnoremap <leader>dc <Cmd>lua require'jdtls'.test_class()<CR>
" nnoremap <leader>dm <Cmd>lua require'jdtls'.test_nearest_method()<CR>
command! -nargs=0 JdtRefreshDebugConfigs :lua require('jdtls.dap').setup_dap_main_class_configs()
command! -buffer -nargs=? -complete=custom,v:lua.require'jdtls'._complete_compile JdtCompile lua require('jdtls').compile(<f-args>)
command! -buffer -nargs=? -complete=custom,v:lua.require'jdtls'._complete_set_runtime JdtSetRuntime lua require('jdtls').set_runtime(<f-args>)
command! -buffer JdtUpdateConfig lua require('jdtls').update_project_config()
command! -buffer JdtJol lua require('jdtls').jol()
command! -buffer JdtBytecode lua require('jdtls').javap()
command! -buffer JdtJshell lua require('jdtls').jshell()
]])


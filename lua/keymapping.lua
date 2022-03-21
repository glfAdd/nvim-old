local vim = vim
local map = vim.api.nvim_set_keymap
local opt = { noremap = true, silent = true }

-- base setting
map('n', '<C-u>', '9k', opt)
map('n', '<C-d>', '9j', opt)
map('v', '<', '<gv', opt)
map('v', '>', '>gv', opt)


-- lsp
-- map('n', '<leader>fc', '<cmd>lua vim.lsp.buf.formatting()<CR>', opt)
map('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opt)
map('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opt)
map('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opt) -- document
-- map('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opt)
-- map('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opt)
-- map('n', '[d', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', opt)
-- map('n', ']d', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', opt)
-- map('n', '<leader>law', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opt)
-- map('n', '<leader>lrw', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opt)
-- map('n', '<leader>llw', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opt)
-- map('n', '<leader>lt', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opt)
-- map('n', '<leader>lrn', '<cmd>lua vim.lsp.buf.rename()<CR>', opt)
-- map('n', '<leader>lrf', '<cmd>lua vim.lsp.buf.references()<CR>', opt)
-- map('n', '<leader>ld', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', opt)
-- map('n', '<leader>ll', '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>', opt)
-- map('n', '<leader>lca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opt)


-- dap
map('n', '<leader>dc', '<cmd>lua require"dap".continue()<CR>', opt)
map('n', '<leader>dk', '<cmd>lua require"dap".step_over()<CR>', opt)
map('n', '<leader>di', '<cmd>lua require"dap".step_into()<CR>', opt)
map('n', '<leader>do', '<cmd>lua require"dap".step_out()<CR>', opt)
map('n', '<leader>dp', '<cmd>lua require"dap".toggle_breakpoint()<CR>', opt)
map('v', '<leader>ds', '<ESC> <cmd>lua require("dap-python").debug_selection()<CR>', opt) -- run select python code

map('n', '<leader>d1', '<cmd>lua require"dap".set_breakpoint(vim.fn.input("Breakpoint condition: "))<CR>', opt)
map('n', '<leader>d2', '<cmd>lua require"dap".set_breakpoint(nil, nil, vim.fn.input("Log point message: "))<CR>', opt)
map('n', '<leader>d3', '<cmd>lua require"dap".repl.open()<CR>', opt)
map('n', '<leader>d4', '<cmd>lua require"dap".run_last()<CR>', opt)

-- dap ui
map('n', '<leader>du', '<cmd>lua require("dapui").toggle()<CR>', opt)

-- cmp
-- map('n', '<CR>', ':cmp.mapping.confirm({ select = true })<CR>', opt)

-- telescope
map('n', '<leader>fb', '<cmd>Telescope buffers<CR>', opt)
map('n', '<leader>ff', '<cmd>Telescope find_files<CR>', opt)
map('n', '<leader>fg', '<cmd>Telescope live_grep<CR>', opt)
map('n', '<leader>fh', '<cmd>Telescope help_tags<CR>', opt)
map('n', '<leader>fo', '<cmd>Telescope oldfiles<CR>', opt)
map('n', '<leader>fp', '<cmd>Telescope project<CR>', opt)
-- map('n', '<leader>fm', '<cmd>Telescope media_files<CR>', opt)

-- error list
map('n', '<leader>xh', '<cmd>TroubleToggle<CR>', opt)
map('n', '<leader>xw', '<cmd>Trouble workspace_diagnostics<CR>', opt)
map('n', '<leader>xd', '<cmd>Trouble document_diagnostics<CR>', opt)
map('n', '<leader>xl', '<cmd>Trouble loclist<CR>', opt)
map('n', '<leader>xq', '<cmd>Trouble quickfix<CR>', opt)
map('n', '<leader>xr', '<cmd>Trouble lsp_references<CR>', opt)

-- bufferline
map('n', '<leader>[', '<cmd>BufferLineCyclePrev<CR>', opt)
map('n', '<leader>]', '<cmd>BufferLineCycleNext<CR>', opt)
map('n', '<leader>bc', '<cmd>bd<CR>', opt) -- close
map('n', '<leader>bn', '<cmd>enew<CR>', opt) -- new

-- nvimTree
map('n', '<leader>tl', '<cmd>NvimTreeToggle<CR>', opt)

-- fun map
map('n', '<leader>tr', '<cmd>SymbolsOutline<CR>', opt)

-- term toggle
function _G.set_terminal_keymaps()
  local opts = {noremap = true}
  vim.api.nvim_buf_set_keymap(0, 't', '<esc>', [[<C-\><C-n>]], opts)
  -- vim.api.nvim_buf_set_keymap(0, 't', 'jk', [[<C-\><C-n>]], opts)
  vim.api.nvim_buf_set_keymap(0, 't', '<C-h>', [[<C-\><C-n><C-W>h]], opts)
  vim.api.nvim_buf_set_keymap(0, 't', '<C-j>', [[<C-\><C-n><C-W>j]], opts)
  vim.api.nvim_buf_set_keymap(0, 't', '<C-k>', [[<C-\><C-n><C-W>k]], opts)
  vim.api.nvim_buf_set_keymap(0, 't', '<C-l>', [[<C-\><C-n><C-W>l]], opts)
end
-- 使这些按键用于 toggle
vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')
map('n', '<leader>ht', ':ToggleTermToggleAll<CR>', opt)


-- term 2
map('n', '<leader>tt', '<cmd>FloatermNew<CR>', opt)
map('n', '<leader>tn', '<cmd>FloatermNext<CR>', opt)
map('n', '<leader>tp', '<cmd>FloatermPrev<CR>', opt)
map('n', '<leader>th', '<cmd>FloatermToggle<CR>', opt)
map('n', '<leader>tk', '<cmd>FloatermKill<CR>', opt)

-- range
map('n', '<leader>tf', '<cmd>RnvimrToggle<CR>', opt)

-- translator
map('n', '<leader>w', '<cmd>TranslateW<CR>', opt)

-- undotree
map('n', '<leader>tu', '<cmd>UndotreeToggle<CR>', opt)

-- markdown preview
-- map('n', '<leader>mb', '<cmd>MarkdownPreview<CR>', opt) -- 开始预览
-- map('n', '<leader>ms', '<cmd>MarkdownPreviewStop<CR>', opt) -- 停止预览
-- map('n', '<leader>mh', '<cmd>MarkdownPreviewToggle<CR>', opt) -- 隐藏

-- move window
map('n', '<C-m>', '<cmd>WinShift<CR>', opt) -- move window
-- map('n', '<C-c>', '<cmd>WinShift swap<CR>', opt) -- swap window

-- nvim-window
map('n', '<C-p>', '<cmd>lua require("nvim-window").pick()<CR>', opt) -- change window
map('i', '<C-p>', '<cmd>lua require("nvim-window").pick()<CR>', opt) -- change window

-- dap jdtls
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
nnoremap <leader>dq <Cmd>lua require'jdtls'.test_class()<CR>
nnoremap <leader>dw <Cmd>lua require'jdtls'.test_nearest_method()<CR>
command! -nargs=0 JdtRefreshDebugConfigs :lua require('jdtls.dap').setup_dap_main_class_configs()
command! -buffer -nargs=? -complete=custom,v:lua.require'jdtls'._complete_compile JdtCompile lua require('jdtls').compile(<f-args>)
command! -buffer -nargs=? -complete=custom,v:lua.require'jdtls'._complete_set_runtime JdtSetRuntime lua require('jdtls').set_runtime(<f-args>)
command! -buffer JdtUpdateConfig lua require('jdtls').update_project_config()
command! -buffer JdtJol lua require('jdtls').jol()
command! -buffer JdtBytecode lua require('jdtls').javap()
command! -buffer JdtJshell lua require('jdtls').jshell()
" nnoremap <silent> <space>p <cmd>call lighttree#plugin#jdt#toggle_win()<cr>
]])


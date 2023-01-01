local vim = vim
local map = vim.api.nvim_set_keymap
local opt = { noremap = true, silent = true }

-- ########################################################## base
map("n", "<C-u>", "9k", opt)
map("n", "<C-d>", "9j", opt)
map("v", "<", "<gv", opt)
map("v", ">", ">gv", opt)

-- ########################################################## nvimTree
map("n", "<leader>tl", "<cmd>NvimTreeToggle<CR>", opt)
map("n", "<leader>tf", "<cmd>NvimTreeFindFile<CR>", opt)

-- ########################################################## range
map("n", "<leader>rf", "<cmd>RnvimrToggle<CR>", opt)
map("n", "<leader>rr", "<cmd>RnvimrResize<CR>", opt) -- 打开文件后设置窗口尺寸

-- ########################################################## 函数名地图
map("n", "<leader>tr", "<cmd>SymbolsOutline<CR>", opt)

-- ########################################################## bufferline
map("n", "<leader>[", "<cmd>BufferLineCyclePrev<CR>", opt)
map("n", "<leader>]", "<cmd>BufferLineCycleNext<CR>", opt)
map("n", "<leader>bc", "<cmd>bd<CR>", opt) -- close
map("n", "<leader>bn", "<cmd>enew<CR>", opt) -- new
map("n", "<leader>bp", "<cmd>BufferLinePickClose<CR>", opt)
map("n", "<leader>bl", "<cmd>BufferLineCloseLeft<CR>", opt) -- 关闭左边
map("n", "<leader>br", "<cmd>BufferLineCloseRight<CR>", opt) -- 关闭右边
map("n", "<leader>ba", "<cmd>BufferLineCloseLeft<CR><cmd>BufferLineCloseRight<CR>", opt) -- 关闭除当前所有

map("n", "<leader>1", "<cmd>BufferLineGoToBuffer 1<CR>", opt)
map("n", "<leader>2", "<cmd>BufferLineGoToBuffer 2<CR>", opt)
map("n", "<leader>3", "<cmd>BufferLineGoToBuffer 3<CR>", opt)
map("n", "<leader>4", "<cmd>BufferLineGoToBuffer 4<CR>", opt)
map("n", "<leader>5", "<cmd>BufferLineGoToBuffer 5<CR>", opt)
map("n", "<leader>6", "<cmd>BufferLineGoToBuffer 6<CR>", opt)
map("n", "<leader>7", "<cmd>BufferLineGoToBuffer 7<CR>", opt)
map("n", "<leader>8", "<cmd>BufferLineGoToBuffer 8<CR>", opt)
map("n", "<leader>9", "<cmd>BufferLineGoToBuffer 9<CR>", opt)
map("n", "<leader>0", "<cmd>BufferLineGoToBuffer 10<CR>", opt)

-- ########################################################## lsp
-- map('n', '<leader>fc', '<cmd>lua vim.lsp.buf.formatting()<CR>', opt)
map("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", opt)
map("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", opt)
map("n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>", opt) -- document
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

-- ########################################################## dap
map("n", "<leader>dc", '<cmd>lua require"dap".continue()<CR>', opt)
map("n", "<leader>dk", '<cmd>lua require"dap".step_over()<CR>', opt)
map("n", "<leader>di", '<cmd>lua require"dap".step_into()<CR>', opt)
map("n", "<leader>do", '<cmd>lua require"dap".step_out()<CR>', opt)
map("n", "<leader>dp", '<cmd>lua require"dap".toggle_breakpoint()<CR>', opt)
map("v", "<leader>ds", '<ESC> <cmd>lua require("dap-python").debug_selection()<CR>', opt) -- run select python code

map("n", "<leader>d1", '<cmd>lua require"dap".set_breakpoint(vim.fn.input("Breakpoint condition: "))<CR>', opt)
map("n", "<leader>d2", '<cmd>lua require"dap".set_breakpoint(nil, nil, vim.fn.input("Log point message: "))<CR>', opt)
map("n", "<leader>d3", '<cmd>lua require"dap".repl.open()<CR>', opt)
map("n", "<leader>d4", '<cmd>lua require"dap".run_last()<CR>', opt)

-- dap ui
map("n", "<leader>du", '<cmd>lua require("dapui").toggle()<CR>', opt)

-- ########################################################## cmp
-- cmp 的补全在这里设置失败, 放在 config 文件中

-- ########################################################## telescope
map("n", "<leader>fb", "<cmd>Telescope buffers<CR>", opt)
map("n", "<leader>ff", "<cmd>Telescope find_files<CR>", opt)
map("n", "<leader>fg", "<cmd>Telescope live_grep<CR>", opt)
map("n", "<leader>fh", "<cmd>Telescope help_tags<CR>", opt)
map("n", "<leader>fo", "<cmd>Telescope oldfiles<CR>", opt)
map("n", "<leader>fp", "<cmd>Telescope project<CR>", opt)
-- map('n', '<leader>fm', '<cmd>Telescope media_files<CR>', opt)

-- ########################################################## error list
map("n", "<leader>eh", "<cmd>TroubleToggle<CR>", opt)
map("n", "<leader>ew", "<cmd>Trouble workspace_diagnostics<CR>", opt)
map("n", "<leader>ed", "<cmd>Trouble document_diagnostics<CR>", opt)
map("n", "<leader>el", "<cmd>Trouble loclist<CR>", opt)
map("n", "<leader>eq", "<cmd>Trouble quickfix<CR>", opt)
map("n", "<leader>er", "<cmd>Trouble lsp_references<CR>", opt)

-- ########################################################## toggleterm
-- function _G.set_terminal_keymaps()
--   local opts = {noremap = true}
--   vim.api.nvim_buf_set_keymap(0, 't', '<esc>', [[<C-\><C-n>]], opts)
--   -- vim.api.nvim_buf_set_keymap(0, 't', 'jk', [[<C-\><C-n>]], opts)
--   vim.api.nvim_buf_set_keymap(0, 't', '<C-h>', [[<C-\><C-n><C-W>h]], opts)
--   vim.api.nvim_buf_set_keymap(0, 't', '<C-j>', [[<C-\><C-n><C-W>j]], opts)
--   vim.api.nvim_buf_set_keymap(0, 't', '<C-k>', [[<C-\><C-n><C-W>k]], opts)
--   vim.api.nvim_buf_set_keymap(0, 't', '<C-l>', [[<C-\><C-n><C-W>l]], opts)
-- end

function _G.set_terminal_keymaps()
	local opts = { buffer = 0 }
	vim.keymap.set("t", "<esc>", [[<C-\><C-n>]], opts)
	vim.keymap.set("t", "jk", [[<C-\><C-n>]], opts)
	vim.keymap.set("t", "<C-h>", [[<Cmd>wincmd h<CR>]], opts)
	vim.keymap.set("t", "<C-j>", [[<Cmd>wincmd j<CR>]], opts)
	vim.keymap.set("t", "<C-k>", [[<Cmd>wincmd k<CR>]], opts)
	vim.keymap.set("t", "<C-l>", [[<Cmd>wincmd l<CR>]], opts)
end

-- 使这些按键用于 toggle
vim.cmd("autocmd! TermOpen term://* lua set_terminal_keymaps()")
map("n", "<leader>ht", ":ToggleTermToggleAll<CR>", opt)

-- ########################################################## vim-floaterm
-- 悬浮窗口
map("n", "<leader>tt", "<cmd>FloatermNew<CR>", opt)
map("n", "<leader>tn", "<cmd>FloatermNext<CR>", opt)
map("n", "<leader>tp", "<cmd>FloatermPrev<CR>", opt)
map("n", "<leader>th", "<cmd>FloatermToggle<CR>", opt)
map("n", "<leader>tk", "<cmd>FloatermKill<CR>", opt)

-- ########################################################## translator
map("n", "<leader>w", "<cmd>TranslateW<CR>", opt)

-- ########################################################## undotree
map("n", "<leader>tu", "<cmd>UndotreeToggle<CR>", opt)

-- ########################################################## markdown preview
-- map('n', '<leader>mb', '<cmd>MarkdownPreview<CR>', opt) -- 开始预览
-- map('n', '<leader>ms', '<cmd>MarkdownPreviewStop<CR>', opt) -- 停止预览
-- map('n', '<leader>mh', '<cmd>MarkdownPreviewToggle<CR>', opt) -- 隐藏

-- ########################################################## winshift.nvim (窗口移动)
map("n", "<C-m>", "<cmd>WinShift<CR>", opt) -- move window
-- map('n', '<C-c>', '<cmd>WinShift swap<CR>', opt) -- swap window

-- " Start Win-Move mode:
-- nnoremap <C-W><C-M> <Cmd>WinShift<CR>
-- nnoremap <C-W>m <Cmd>WinShift<CR>
--
-- " Swap two windows:
-- nnoremap <C-W>X <Cmd>WinShift swap<CR>
--
-- " If you don't want to use Win-Move mode you can create mappings for calling the
-- " move commands directly:
-- nnoremap <C-M-H> <Cmd>WinShift left<CR>
-- nnoremap <C-M-J> <Cmd>WinShift down<CR>
-- nnoremap <C-M-K> <Cmd>WinShift up<CR>
-- nnoremap <C-M-L> <Cmd>WinShift right<CR>

-- ########################################################## nvim-window
map("n", "<C-p>", '<cmd>lua require("nvim-window").pick()<CR>', opt) -- change window
map("i", "<C-p>", '<cmd>lua require("nvim-window").pick()<CR>', opt) -- change window

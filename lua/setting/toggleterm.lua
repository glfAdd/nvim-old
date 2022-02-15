-- terminal
local vim = vim

require("toggleterm").setup{
  -- size can be a number or function which is passed the current terminal
  size = function(term)
    if term.direction == "horizontal" then
      return 18
    elseif term.direction == "vertical" then
      return vim.o.columns * 0.5
    end
  end,
  open_mapping = [[<c-\>]],

  -- on_open = fun(t: Terminal), -- function to run when the terminal opens
  -- on_close = fun(t: Terminal), -- function to run when the terminal closes
  hide_numbers = true, -- hide the number column in toggleterm buffers
  shade_filetypes = {},
  shade_terminals = true,
  -- the degree by which to darken to terminal colour, default: 1 for dark backgrounds, 3 for light
  shading_factor = '1',
  start_in_insert = true,
  insert_mappings = true, -- whether or not the open mapping applies in insert mode
  terminal_mappings = true, -- whether or not the open mapping applies in the opened terminals
  persist_size = true, -- 保证水平或垂直终端大小相同
  -- vertical | horizontal | window | float
  direction = 'horizontal',
  close_on_exit = true, -- close the terminal window when the process exits
  shell = vim.o.shell, -- change the default shell

  float_opts = {
    -- 'single' | 'double' | 'shadow' | 'curved' |
    border = 'single',
    width = 40,
    height = 40,
    winblend = 3,
    highlights = {
      border = "Normal",
      background = "Normal",
    }
  }
}




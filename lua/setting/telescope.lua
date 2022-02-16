require('telescope').setup {
  defaults = {
    layout_strategy = 'horizontal',
    layout_config = {
      height = 0.95,
      width = 0.95,
      preview_width = 0.6 -- 左右比例
    },
  },

  extensions = {
    fzf = {
      fuzzy = true,                    -- false will only do exact matching
      override_generic_sorter = true,  -- override the generic sorter
      override_file_sorter = true,     -- override the file sorter
      case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
    },
  },

  pickers = {
    find_files = {
      -- theme = "dropdown",
    }
  },

}

require'telescope'.load_extension('fzf')
require('telescope').load_extension('dap')




-- local telescope = require("telescope")
-- local action = require("telescope.actions")
-- telescope.load_extension("media_files")
-- telescope.load_extension("bibtex")
-- telescope.load_extension("dotfiles")
-- telescope.load_extension("asynctasks")

-- telescope.setup({
  -- defaults = {
  --   extensions = {
  --     media_files = {
  --       filetypes = { "png", "webp", "jpg", "jpeg" },
  --       find_cmd = "rg", -- find command (defaults to `fd`)
  --     }
  --   },
  --   vimgrep_arguments = {
  --     "rg",
  --     "--color=never",
  --     "--no-heading",
  --     "--with-filename",
  --     "--line-number",
  --     "--column",
  --     "--smart-case",
  --   },
  --   prompt_prefix = " ➤ ",
  --   selection_caret = " • ",
  --   color_devicons = true,
  --   layout_strategy = "flex",
  --   layout_config = {
  --     flex = {
  --       flip_columns = 130,
  --     },
  --     horizontal = {
  --       mirror = false,
  --       width = 0.8,
  --     },
  --     vertical = {
  --       mirror = false,
  --     },
  --   },
  --   path_display = { "absolute" },
  --   file_ignore_patterns = {
  --     "__pycache__/*",
  --     "__init__.py",
  --     "%.env",
  --     "node_modules/*",
  --     "scratch/.*",
  --     "%.dll",
  --     "go/pkg/*",
  --   },
  --   use_less = false,
  --   mappings = {
  --     i = {
  --       ["<C-j>"] = action.move_selection_next,
  --       ["<C-k>"] = action.move_selection_previous,
  --       ["<esc>"] = action.close,
  --     },
  --   },
  -- },
  -- pickers = {
  --   find_files = {
  --     layout_strategy = "flex",
  --     layout_config = {
  --       flex = {
  --         flip_columns = 130,
  --       },
  --       horizontal = {
  --         mirror = false,
  --         width = 0.8,
  --       },
  --       vertical = {
  --         mirror = false,
  --       },
  --     },
  --   },
  --   lsp_definitions = {
  --     theme = "ivy",
  --     layout_config = { height = 13 },
  --   },
  --   lsp_references = {
  --     theme = "ivy",
  --     layout_config = { height = 13 },
  --   },
  --   lsp_workspace_diagnostics = {
  --     theme = "ivy",
  --     layout_config = { height = 13 },
  --   },
  -- },
-- })

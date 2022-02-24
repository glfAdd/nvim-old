require("formatter").setup({
  filetype = {
    python = {
      function()
        return {
          exe = "/Users/glfadd/.pyenv/shims/python -m autopep8",
          args = {
            "--in-place --aggressive --aggressive",
            vim.fn.fnameescape(vim.api.nvim_buf_get_name(0))
          },
          stdin = false
        }
      end
    }
  }
})

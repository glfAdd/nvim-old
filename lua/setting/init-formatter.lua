require("formatter").setup({
  filetype = {
    python = {
      function()
        return {
          exe = "/home/glfadd/.pyenv/versions/3.9.2/envs/p-3.9.2-learn/bin/python3.9 -m autopep8",
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

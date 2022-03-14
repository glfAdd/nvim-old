require'nvim-tree'.setup {
  auto_close = true, -- 关闭文件时自动关闭
  view = {
    width = 40,
    height = 30,
    hide_root_folder = true, -- 隐藏顶部的根目录显示
    auto_resize = true, -- 自动调整大小
    side = 'left'
  },
  -- 是否启用 git 信息
  git = {
    enable = true,
    ignore = true,
    timeout = 500
  }
}


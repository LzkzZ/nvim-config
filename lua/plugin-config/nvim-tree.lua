require'nvim-tree'.setup {
    -- 不显示 git 状态图标
    git = {
        enable = false
    },
    update_focused_file = {
      enable = true,
      update_root = false,  -- 不更新定位非当前根目录的文件
    }
}

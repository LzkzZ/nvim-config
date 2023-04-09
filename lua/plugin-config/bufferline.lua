require("bufferline").setup {
    options = {
        -- 左侧让出 nvim-tree 的位置
        offsets = {
            {
                filetype = "NvimTree",
                text = " ",
                highlight = "Directory",
                text_align = "left"
            }
        },
        separator_style = "padded_slant"
    }
}

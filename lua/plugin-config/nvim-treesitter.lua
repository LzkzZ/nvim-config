-- require("nvim-treesitter.install").prefer_git = true

-- https://zhuanlan.zhihu.com/p/441818052
require'nvim-treesitter.configs'.setup {
    -- 安装 language parser
    -- :TSInstallInfo 命令查看支持的语言
    ensure_installed = {"c", "cpp", "javascript", "typescript", "vim", "lua"},

    -- 启用代码高亮功能
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false
    },

    -- 启用增量选择
    -- Enter选择区域外扩, Backspace内缩
    incremental_selection = {
        enable = true,
        keymaps = {
            init_selection = '<CR>',
            node_incremental = '<CR>',
            node_decremental = '<BS>',
            scope_incremental = '<TAB>',
        }
    },

    -- 启用基于Treesitter的代码格式化(=) . NOTE: This is an experimental feature.
    -- gg=G格式化整个文件
    indent = {
        enable = true
    },

    -- 彩虹括号, 需要插件: p00f/nvim-ts-rainbow
    rainbow = {
        enable = true,
        extended_mode = true,
        max_file_lines = 10000
    }
}

-- 开启 Folding
-- normal模式, zc折叠{}, zo打开{}
vim.wo.foldmethod = 'expr'
vim.wo.foldexpr = 'nvim_treesitter#foldexpr()'
-- 默认不要折叠
-- https://stackoverflow.com/questions/8316139/how-to-set-the-default-to-unfolded-when-you-open-a-file
vim.wo.foldlevel = 99

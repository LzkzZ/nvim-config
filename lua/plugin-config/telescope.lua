require('telescope').setup({
    defaults = {
        mappings = {
            i = {
                ['<Esc>'] = 'close',
                ['<C-j>'] = 'move_selection_next',
                ['<C-k>'] = 'move_selection_previous',
                ['<C-d>'] = 'preview_scrolling_down',
                ['<C-u>'] = 'preview_scrolling_up',
                ['<Down>'] = 'cycle_history_next',
                ['<Up>'] = 'cycle_history_prev'
            }
        }
    },
    pickers = {},
    extensions = {}
})

-- 保存本地变量
-- 之后就可以这样映射按键了
-- map('模式','按键','映射为XX',opt)
local map = vim.api.nvim_set_keymap
local opt = {noremap = true, silent = false }  -- options
local opt_silent = {noremap = true, silent = true }

-- ctrl + u/d一次移动10行
map('n', '<C-u>', '10k', opt)
map('n', '<C-d>', '10j', opt)
-- 粘贴快捷键替换，P粘贴到光标前，g光标移动到粘贴结束位置
map('n', 'p', 'gP', opt)

-- 高亮搜索
map ('n', '*',':set hlsearch<CR>*', opt_silent)
map ('n', '#',':set hlsearch<CR>#', opt_silent)
map ('n', 'n',':set hlsearch<CR>n', opt_silent)
map ('n', 'N',':set hlsearch<CR>N', opt_silent)
map ('n', '/',':set hlsearch<CR>/', opt)
map ('n', '?',':set hlsearch<CR>?', opt)

-- nvimTree
map('n', '<F1>', ':NvimTreeToggle<CR> | :wincmd w<CR>', opt_silent)

-- coc.nvim
map('n', '<C-h>', '<Plug>(coc-declaration)', opt)  -- :execute "normal \<Plug>(coc-declaration)"
map('n', '<C-j>', '<Plug>(coc-definition)', opt)
map('n', '<C-l>', '<Plug>(coc-references)', opt)
map('n', '<Leader>fx', '<Plug>(coc-fix-current)', opt)

-- Use K to show documentation in preview window
function _G.show_docs()
    local cw = vim.fn.expand('<cword>')
    if vim.fn.index({'vim', 'help'}, vim.bo.filetype) >= 0 then
        vim.api.nvim_command('h ' .. cw)
    elseif vim.api.nvim_eval('coc#rpc#ready()') then
        vim.fn.CocActionAsync('doHover')
    else
        vim.api.nvim_command('!' .. vim.o.keywordprg .. ' ' .. cw)
    end
end
map("n", "K", '<CMD>lua _G.show_docs()<CR>', opt)

-- bufferline
map('n', '<A-w>', ':Bdelete<CR>', opt_silent)  -- require vim-bbye
map('n', '<A-l>', ':BufferLineCycleNext<CR>', opt_silent)
map('n', '<A-h>', ':BufferLineCyclePrev<CR>', opt_silent)
map('n', '<A-p>', ':BufferLineTogglePin<CR>', opt_silent)
map('n', '<A-backspace>', ':BufferLineCloseLeft<CR> | :BufferLineCloseRight<CR>', opt_silent)

-- vim-quickhl
map('n', 'mm', '<Plug>(quickhl-manual-this)', opt_silent)
map('x', 'mm', '<Plug>(quickhl-manual-this)', opt_silent)
map('n', 'mM', '<Plug>(quickhl-manual-reset)', opt_silent)
map('n', 'mw', '<Plug>(quickhl-manual-this-whole-word)', opt_silent)

-- gitgutter
map('n', 'gj', '<Plug>(GitGutterNextHunk)', opt_silent)
map('n', 'gk', '<Plug>(GitGutterPrevHunk)', opt_silent)
map('n', 'gp', '<Plug>(GitGutterPreviewHunk)', opt_silent)
map('n', 'gs', '<Plug>(GitGutterStageHunk)', opt_silent)
map('n', 'gu', '<Plug>(GitGutterUndoHunk)', opt_silent)

-- telescope
map('n', '<C-p>', ':Telescope find_files<CR>', opt_silent)
map('n', '<C-n>', ':Telescope oldfiles<CR>', opt_silent)
map('n', '<C-c>', ':Telescope buffers<CR>', opt_silent)
map('n', '<leader>s', ':Telescope grep_string<CR>', opt_silent)
map('n', '<leader>fs', ':Telescope live_grep<CR>', opt_silent)

-- aerial
map('n', '<leader>a', ':AerialToggle!<CR>', opt_silent)


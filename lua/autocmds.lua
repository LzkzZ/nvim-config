-- 打开文件记住上次浏览位置
-- adapted from https://github.com/ethanholz/nvim-lastplace/blob/main/lua/nvim-lastplace/init.lua
local ignore_buftype = { "quickfix", "nofile", "help" }
local ignore_filetype = { "gitcommit", "gitrebase", "svn", "hgcommit" }

local function run()
  if vim.tbl_contains(ignore_buftype, vim.bo.buftype) then
    return
  end

  if vim.tbl_contains(ignore_filetype, vim.bo.filetype) then
    -- reset cursor to first line
    vim.cmd[[normal! gg]]
    return
  end

  -- If a line has already been specified on the command line, we are done
  --   nvim file +num
  if vim.fn.line(".") > 1 then
    return
  end

  local last_line = vim.fn.line([['"]])
  local buff_last_line = vim.fn.line("$")

  -- If the last line is set and the less than the last line in the buffer
  if last_line > 0 and last_line <= buff_last_line then
    local win_last_line = vim.fn.line("w$")
    local win_first_line = vim.fn.line("w0")
    -- Check if the last line of the buffer is the same as the win
    if win_last_line == buff_last_line then
      -- Set line to last line edited
      vim.cmd[[normal! g`"]]
      -- Try to center
    elseif buff_last_line - last_line > ((win_last_line - win_first_line) / 2) - 1 then
      vim.cmd[[normal! g`"zz]]
    else
      vim.cmd[[normal! G'"<c-e>]]
    end
  end
end

vim.api.nvim_create_autocmd({"BufWinEnter", "FileType"}, {
    group = vim.api.nvim_create_augroup('nvim-lastplace', {}),
    callback = run
})
-- end 打开文件记住上次浏览位置

-- 关闭高亮
vim.api.nvim_create_autocmd({"InsertEnter", "BufLeave"}, {
    pattern = '',
    command = "set nohlsearch"
})

-- 保存时删除行尾空格
vim.api.nvim_create_autocmd({"BufWritePre"}, {
    pattern = '',
    command = [[%s/\s\+$//e]]
})

-- WSL复制共享到Windows clip.exe
vim.api.nvim_create_autocmd({"TextYankPost"}, {
    pattern = '',
    command = "call system('/mnt/c/Windows/system32/clip.exe ', @0)"
})

-- 打开目录或者[No Name] buffer时，开启nvim-tree
vim.api.nvim_create_autocmd("VimEnter", {
    callback = function(data)
        local directory = vim.fn.isdirectory(data.file) == 1
        if directory then
            -- NvimTreeOpen
            require("nvim-tree.api").tree.open()
            return
        end

        local no_name = data.file == "" and vim.bo[data.buf].buftype == ""
        if no_name then
            -- NvimTreeOpen
            require("nvim-tree.api").tree.open()
            -- move cursor to buffer
            vim.cmd([[wincmd w]])
            return
        end
    end
})

-- 退出关闭 nvim-tree
vim.api.nvim_create_autocmd("QuitPre", {
    callback = function() vim.cmd("NvimTreeClose") end,
})


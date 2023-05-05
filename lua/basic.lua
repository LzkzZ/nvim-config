-- utf8
vim.g.encoding = "UTF-8"
vim.o.fileencoding = "utf-8"
-- jkhl 移动时光标周围保留8行
vim.o.scrolloff = 8
vim.o.sidescrolloff = 8
-- 显示行号
vim.wo.number = true
-- 高亮所在行
vim.wo.cursorline = true
-- 显示左侧图标指示列
-- vim.wo.signcolumn = "yes"
-- 右侧列标尺
vim.wo.colorcolumn = "121"
-- 空格替代tab
vim.o.expandtab = true
vim.bo.expandtab = true
-- 缩进4个空格
vim.o.tabstop = 4
vim.bo.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftround = true
vim.o.shiftwidth = 4
vim.bo.shiftwidth = 4
-- 自动缩进
vim.o.autoindent = true
vim.bo.autoindent = true
vim.o.smartindent = true
-- 搜索大小写不敏感，除非包含大写
vim.o.ignorecase = true
vim.o.smartcase = true
-- 搜索高亮
vim.o.hlsearch = true
-- 边输入边搜索
vim.o.incsearch = true
-- 命令行高为2，提供足够的显示空间
vim.o.cmdheight = 2
-- 当文件被外部程序修改时，自动更新
vim.o.autoread = true
vim.bo.autoread = true
-- 关闭鼠标, 开启="a"
vim.o.mouse = ""
-- 禁止创建备份文件
vim.o.backup = false
vim.o.writebackup = false
vim.o.swapfile = false
-- 设置updatetime, 默认为4000，:h updatetime
vim.o.updatetime = 3000
-- 拆分窗口从下边和右边出现
vim.o.splitbelow = true
vim.o.splitright = true
-- 样式增强
vim.o.termguicolors = true
vim.opt.termguicolors = true
-- 是否显示不可见字符
vim.o.list = true
-- 不可见字符的显示
vim.o.listchars = "tab:>-"
-- 补全增强
vim.o.wildmenu = true
-- 补全最多显示10行
vim.o.pumheight = 10
-- 永远显示 tabline
vim.o.showtabline = 2
-- 配置剪切板
vim.opt.clipboard = "unnamedplus"
-- 配置leader键
vim.g.mapleader = ","
-- 关闭autopair开关快捷键
vim.g.AutoPairsShortcutToggle = ""
-- 总是显示2列侧标记图标(gitsigns, coc.nvim diagnostics)
vim.o.signcolumn = "yes:2"

-- colorscheme
local colorscheme = "zephyr"
local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  vim.notify("colorscheme: " .. colorscheme .. " 没有找到！")
  return
end


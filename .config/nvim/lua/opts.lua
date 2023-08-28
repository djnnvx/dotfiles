-- Colors and UI:
vim.o.bg = 'dark'
vim.o.termguicolors = true
vim.o.syntax = 'on'
vim.o.number = true
vim.wo.wrap = false
vim.wo.colorcolumn = '80'
vim.cmd [[highlight ColorColumn ctermbg=8 guibg=white]]
vim.cmd [[hi Normal guibg=None ctermbg=None]]

-- backup handling
vim.o.swapfile = false
vim.o.backup = false
vim.o.undodir = '/home/djnn/.config/nvim/undodir'
vim.o.undofile = true

-- Misc settings
vim.o.nocompatible = true
vim.o.splitbelow = true
vim.o.splitright = true
vim.o.expandtab = true
vim.o.shiftwidth = 4
vim.o.softtabstop = 4
vim.o.tabstop = 4
vim.o.encoding = 'utf-8'
vim.o.noerrorbells = true
vim.o.nowrap = true
vim.o.wildmode = 'longest,list,full'
vim.o.updatetime = 200
vim.o.mouse = 'a'
vim.o.nohlsearch = true
vim.o.clipboard = 'unnamedplus'
vim.o.hidden = true
vim.o.nowritebackup = true
vim.o.cmdheight = 2
vim.o.shortmess = vim.o.shortmess .. 'c'
vim.o.incsearch = true
vim.o.relativenumber = true

vim.cmd [[filetype plugin on]]


-- VARIABLES
vim.g.asmsyntax = 'nasm'

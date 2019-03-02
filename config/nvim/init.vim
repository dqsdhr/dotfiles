"
"                ╔══════════════════════════════════════════╗
"                ║       ⎋ PERSONAL VIM CONFIG FILE ⎋       ║
"                ╚══════════════════════════════════════════╝
"
" Author    : Ren Chunhui
" Website   : https://renchunhui.github.io
" Repo      : https://github.com/renchunhui/dotfile

if (!isdirectory(expand("$HOME/.config/nvim/repos/github.com/Shougo/dein.vim")))
  call system(expand("mkdir -p $HOME/.config/nvim/repos/github.com"))
  call system(expand("git clone https://github.com/Shougo/dein.vim $HOME/.config/nvim/repos/github.com/Shougo/dein.vim"))
endif

set runtimepath+=~/.config/nvim/repos/github.com/Shougo/dein.vim/
call dein#begin(expand('~/.config/nvim'))

call dein#add('dracula/vim')

if dein#check_install()
  call dein#install()
  let pluginsExist=1
endif

call dein#end()

" System Settings  ---------------------------------------------------------{{{
set noshowmatch                     " 括号匹配
set cursorline                      " 高亮当前行
set shell=/bin/zsh                  " 将shell设置为zsh
set wildmenu                        " vim 自身命令行模式智能补全

" General
set encoding=utf-8                  " 编码
set termguicolors
set autoread                        " 文件修改后自动载入
set mouse=a                         " 启用鼠标

" Appearance
set ruler                           " 显示光标位置
set title
set number                          " 显示行号
set showmode
syntax enable
colorscheme dracula                 " 主题

" Tabs and Indents
set textwidth=80
set tabstop=2
set shiftwidth=2
set expandtab
set showtabline=2                   " 显示标签栏
set laststatus=2                    " 显示状态栏

" Custom statusline
set statusline=
set statusline+=%#DiffAdd#%{(mode()=='n')?'\ \ NORMAL\ ':''}
set statusline+=%#DiffChange#%{(mode()=='i')?'\ \ INSERT\ ':''}
set statusline+=%#DiffDelete#%{(mode()=='r')?'\ \ RPLACE\ ':''}
set statusline+=%#Cursor#%{(mode()=='v')?'\ \ VISUAL\ ':''}
set statusline+=\ %n\           " buffer number
set statusline+=%#Visual#       " colour
set statusline+=%{&paste?'\ PASTE\ ':''}
set statusline+=%{&spell?'\ SPELL\ ':''}
set statusline+=%#CursorIM#     " colour
set statusline+=%R                        " readonly flag
set statusline+=%M                        " modified [+] flag
set statusline+=%#Cursor#               " colour
set statusline+=%#CursorLine#     " colour
set statusline+=\ %t\                   " short file name
set statusline+=%=                          " right align
set statusline+=%#CursorLine#   " colour
set statusline+=\ %Y\                   " file type
set statusline+=%#CursorIM#     " colour
set statusline+=\ %3l:%-2c\         " line + column
set statusline+=%#Cursor#       " colour
set statusline+=\ %3p%%\                " percentage

" Search
set noignorecase
set hlsearch                        " 高亮search命中的文本
" }}}



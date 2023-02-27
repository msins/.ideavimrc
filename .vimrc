set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'joshdick/onedark.vim'

call vundle#end()
filetype plugin indent on

let mapleader=","

set novisualbell
set noerrorbells
set t_vb=
set tm=500
set scrolloff=5
set clipboard+=unnamedplus
set number
set relativenumber
set showmode
set incsearch
set hlsearch
set ignorecase
set smartcase
set wildmenu
set wildmode=longest:full,full
set history=500
set backspace=eol,start,indent
set whichwrap+=<,>,h,l
set showmatch
set mat=2

set gfn=JetBrains\ Mono\ Regular:h13
nmap <leader>w: w!<cr>

nnoremap x "_x
vnoremap x "_x

if (has("nvim"))
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif
if (has("termguicolors"))
  set termguicolors
endif

syntax on
colorscheme onedark

command Greview :Git diff --staged
nnoremap <leader>gr :Greview<cr>
map q <Nop>

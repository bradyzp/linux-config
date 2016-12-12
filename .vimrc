set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
"Add all plugins here:
"Install plugin with :PluginInstall
Plugin 'tmhedberg/SimpylFold'
Plugin 'Valloric/YouCompleteMe'
Plugin 'alfredodeza/pytest.vim'

"End plugin section
call vundle#end()
filetype plugin indent on

set encoding=utf-8
color desert
let g:ycm_python_binary_path = '/usr/bin/python3.5'
syntax on
set number
set hidden

set wildmenu

set showcmd

set hlsearch
"Enable code folding
set foldmethod=indent
set foldlevel=99
let g:SimpylFold_docstring_preview = 1
nnoremap <space> za

set ignorecase
set smartcase
set backspace=indent,eol,start
set autoindent

set nostartofline
set ruler
set laststatus=2

set confirm

set visualbell

set t_vb=

set cmdheight=2

set notimeout ttimeout ttimeoutlen=200
set pastetoggle=<F11>

set shiftwidth=4
set softtabstop=4
set expandtab

set tabstop=4

map Y y$
nnoremap <C-L> :nohl<CR><C-L>



autocmd FileType python set makeprg=pylint\ --reports=n\ --msg-template=\"{path}:{line}:\ {msg_id}\ {symbol},\ {obj}\ {msg}\"\ %:p
autocmd FileType python set errorformat=%f:%l:\ %m

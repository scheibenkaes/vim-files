call pathogen#runtime_append_all_bundles() 
call pathogen#helptags() 

let vimclojure#NailgunClient = "/Users/b6n/Code/vimclojure-nailgun-client/ng"
let vimclojure#WantNailgun = 1
let vimclojure#ParenRainbow = 1

imap ;rb Best Regards,<return>Benjamin
imap ;. self.
set ignorecase
set nu
nnoremap <C-K> <C-V>
let mapleader = ","
let maplocalleader = ","
set tabstop=4 
set shiftwidth=4 
set expandtab 

set hlsearch

syn on

set ai

set incsearch

set autoindent 

set backspace=2

set foldmethod=syntax
set foldlevelstart=20

set smartcase
set nocp
set nocompatible
filetype plugin indent on

:color desert

set cursorline
set wildmenu

nmap <Leader>l V"+y
nmap <Leader>a ggVG"+y

nmap <F3> :NERDTreeToggle<CR>
nmap <Leader>c :e $MYVIMRC<Return>
nmap <Leader>u :.s/\\/\//g<Return>:nohlsearch<Return>
nmap <Leader>\ :.s/\//\\/g<Return>:nohlsearch<Return>

if has("win32")
    set rtp=C:\vimfiles,$VIMRUNTIME
    let Tlist_Ctags_Cmd="C:\ctags58\ctags.exe"
    set tags+=~\tags
endif

au BufRead,BufNewFile *.html.erb set ft=eruby.eruby-rails.html


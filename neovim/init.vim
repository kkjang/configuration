set termguicolors
call plug#begin('~/.config/nvim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'kien/ctrlp.vim'
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'majutsushi/tagbar'
Plug 'chase/vim-ansible-yaml'
Plug 'zchee/deoplete-jedi'
Plug 'Shougo/deoplete.nvim'
Plug 'Vimjas/vim-python-pep8-indent'
Plug 'hashivim/vim-terraform'
call plug#end()
:set autoread
set clipboard+=unnamed

filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

colorscheme gruvbox
set background=dark
let g:airline_theme='bubblegum'

set number

let g:ctrlp_working_path_mode = 0

" Set leader key to space
let mapleader="\<SPACE>"

" Ctrlp ignore
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc,*.html

set inccommand=split

" CtrlP map CtrlPBufTag to <C-t>
nmap <C-t> :CtrlPBufTag<CR>

" Map tagbar toggle to F8
nmap <F8> :TagbarToggle<CR>

" Show filename in title
set title

let g:deoplete#enable_at_startup=1

" Hide NERD_tree files
let NERDTreeIgnore=['\.pyc$']

" NERD_tree show hidden files
let NERDTreeShowHidden=1

autocmd BufNewFile,BufReadPost *.yaml,*.yml set filetype=ansible

set noswapfile

" Automatically format terraform files
let g:terraform_fmt_on_save=1

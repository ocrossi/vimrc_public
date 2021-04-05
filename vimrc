set nocompatible              " be iMproved, required
filetype off                  " required

" !!!  Need neovim for blamer plugin !!! "

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'morhetz/gruvbox'
Plugin 'Valloric/YouCompleteMe'
Plugin 'itchyny/lightline.vim'
Plugin 'prettier/vim-prettier'
Plugin 'gcmt/taboo.vim'
Plugin 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plugin 'junegunn/fzf.vim'
Plugin 'APZelos/blamer.nvim'
Plugin 'tpope/vim-fugitive'
call vundle#end()

set runtimepath^=~/.vim/bundle/ctrlp.vim
set laststatus=2
let g:ycm_path_to_python_interpreter='/usr/local/bin/python3'

filetype plugin indent on
let g:ycm_server_keep_logfiles = 1
let g:ycm_server_log_level = 'debug'
"basic stuff
set mouse=a
set nu
sy on
set noswapfile
set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey
"better lines
	set number relativenumber
"auto completion
	set wildmode=longest,list,full
"better splits
	set splitbelow splitright
"indent + indent size
	set smartindent
	set tabstop=2 softtabstop=2
    set shiftwidth=2
	set ignorecase smartcase
	set incsearch
	set hlsearch

"backups
set nobackup
set undodir=~/.vim/undodir
set undofile
"colorscheme
	colorscheme gruvbox
	set background=dark

let mapleader = " "

" Personnal binding
"search from a dir
nnoremap  <Leader>sf :CtrlP<space>
vnoremap  <Leader>sf <esc>:CtrlP<space>

"tab  in vim? really ?? mind=blown
nnoremap <Leader><left> :tabprev<cr>
nnoremap <Leader><right> :tabnext<cr>
nnoremap <F5> :tabnew<cr>

"JS
inoremap <Leader>jj console.log();<left><left>
inoremap <Leader>jjj console.log("");<left><left><left>
"end of JS

noremap <F9> <esc>:Prettier<cr>:w<cr>

nnoremap <F2> :NERDTreeToggle<cr>
nnoremap <F3> :sp<cr>
nnoremap <F4> :vsp<cr>
nnoremap <F12> :qall<cr>
nnoremap <F10> :w<cr>
inoremap <F10> <esc>:w<cr>
vnoremap <F10> <esc>:w<cr>
nnoremap <C-f> :NERDTreeFocus<cr>
noremap <C-a> 0
noremap <C-e> $
inoremap <C-a> <esc>0i<right>
inoremap <C-e> <esc>$i
inoremap ( ()<left>
inoremap ' ''<left>
inoremap " ""<left>
inoremap [ []<left>
inoremap <leader>' '
inoremap <leader>" "
inoremap <leader>[ [
inoremap <leader>{ {

" le C c trop genial
inoremap <leader>pf printf("\n");<left><left><left><left><left>

" Move between windows
noremap <C-j> <C-W>j
noremap <C-k> <C-W>k
noremap <C-h> <C-W>h
noremap <C-l> <C-W>l

"withdraw highlights
nnoremap <Leader>h :nohlsearch<CR>

let g:ycm_server_python_interpreter = '/usr/bin/python3.8'

"fzf personnal shortcuts
nnoremap <leader>o :Files<cr>
nnoremap <leader>ff :Rg<cr>

" git vim shortcuts
nnoremap <leader>g :BlamerShow<cr>
nnoremap <leader>G :BlamerToggle<cr>
let g:blamer_delay = 500

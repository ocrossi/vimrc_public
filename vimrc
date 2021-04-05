set nocompatible              " be iMproved, required
filetype off                  " required

set laststatus=2

filetype plugin indent on
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


"fzf personnal shortcuts
nnoremap <leader>o :Files<cr>
nnoremap <leader>ff :Rg<cr>

" git vim shortcuts
nnoremap <leader>g :BlamerShow<cr>
nnoremap <leader>G :BlamerToggle<cr>
let g:blamer_delay = 500

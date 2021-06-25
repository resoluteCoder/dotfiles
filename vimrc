set nocompatible

call plug#begin('~/.vim/plugged')
    " gruvbox color scheme
    Plug 'gruvbox-community/gruvbox'
    " collection of language syntax packs 
    Plug 'sheerun/vim-polyglot'
    " LSP, Completion
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    " File search
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
call plug#end()

" auto set tab to 2 spaces
set tabstop=2 softtabstop=2
set shiftwidth=2
set expandtab
set smartindent
set nowrap

" shows active filename
set statusline+=%f
set laststatus=2


" disables auto comment
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Remap for vim windows
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Remap for FZF
nnoremap <C-f> :Files<CR>

" Remap windows selection keys for FZF
let g:fzf_action = {
      \ 'ctrl-t': 'tab split',
  \ 'ctrl-v': 'split',
  \ 'ctrl-h': 'vsplit' }

set exrc "allows vimrc to be sourced in current proj

set relativenumber "shows relative number from cursor
set nu "shows current number from cursor
set nohlsearch "turns off highlight after search
set noerrorbells "turns off error sounds
set incsearch "highlights as you search
set scrolloff=8 "as you scroll towards bottom of file starts scrolling 8 from bottom
set signcolumn=yes "adds bar to left for msgs
set colorcolumn=80 "adds bar 80 from left
set splitbelow "opens new window below :sp
set splitright "opens new window right :vsp

" remove arrow keys - all modes
noremap  <Up> ""
noremap! <Up> <Esc>
noremap  <Down> ""
noremap! <Down> <Esc>
noremap  <Left> ""
noremap! <Left> <Esc>
noremap  <Right> ""
noremap! <Right> <Esc>
colorscheme gruvbox "sets colorscheme on bootup

set background=dark

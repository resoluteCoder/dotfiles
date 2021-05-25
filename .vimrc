set nocompatible

call plug#begin('~/.vim/plugged')
    Plug 'gruvbox-community/gruvbox'
    Plug 'pangloss/vim-javascript'
    Plug 'leafgarland/typescript-vim'
    Plug 'maxmellon/vim-jsx-pretty'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

"plugins
"gruvbox theme
"js syntax support
"ts syntax support
"jsx/tsx syntax support
"intellisense/linter/code completion

let g:coc_global_extensions = [ 'coc-tsserver' ]

"formatter
autocmd FileType typescript setlocal formatprg=prettier\ --parser\ typescript

" auto set tab to 4 spaces
set tabstop=2 softtabstop=2
set shiftwidth=2
set expandtab
set smartindent
set nowrap

set exrc "allows vimrc to be sourced in current proj

set relativenumber "shows relative number from cursor
set nu "shows current number from cursor
set nohlsearch "turns off highlight after search
set noerrorbells "turns off error sounds
set incsearch "highlights as you search
set scrolloff=8 "as you scroll towards bottom of file starts scrolling 8 from bottom
set signcolumn=yes "adds bar to left for msgs
set colorcolumn=80 "adds bar 80 from left
set splitbelow "opens new window below

" remove arrow keys
" noremap <left> <nop>
" noremap <up> <nop>
" noremap <down> <nop>
" noremap <right> <nop>

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

"rename tmux window to filename
"autocmd BufReadPost,FileReadPost,BufNewFile,BufEnter * call system("tmux rename-window 'vim | " . expand("%:t") . "'")

set background=dark

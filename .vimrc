call plug#begin('~/.vim/plugged')
    Plug 'gruvbox-community/gruvbox'
    Plug 'preservim/nerdtree'
    Plug 'dense-analysis/ale'
    Plug 'sheerun/vim-polyglot'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()


" auto set tab to 4 spaces
set tabstop=4 softtabstop=4
set shiftwidth=4
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

" remove arrow keys
noremap <left> <nop>
noremap <up> <nop>
noremap <down> <nop>
noremap <right> <nop>

colorscheme gruvbox "sets colorscheme on bootup


set background=dark

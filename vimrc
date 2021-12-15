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
    " lightline for vim statusline
     Plug 'itchyny/lightline.vim'
     " snippets
     Plug 'SirVer/ultisnips'
     Plug 'honza/vim-snippets'
call plug#end()

set nocompatible
set noshowmode

" map leader to comma
let mapleader = ","

" Toggle Relative Number
nnoremap <silent> <leader>nb :set relativenumber!<CR>

" Make j and k move to the next row, not file line
nnoremap j gj
nnoremap k gk

" Move to beginning/end of line
nnoremap B ^
nnoremap E $

" Map jk to ESC in insert mode
" inoremap jk <esc>" Disable Esp key in insert mode
" inoremap <esc> <nop>

" auto set tab to 2 spaces
set tabstop=2 softtabstop=2
set shiftwidth=2
set expandtab
set smartindent
set nowrap

" shows active filename
set statusline+=%f
set laststatus=2

" Switch between tabs
nnoremap <Leader>1 1gt
nnoremap <Leader>2 2gt
nnoremap <Leader>3 3gt
nnoremap <Leader>4 4gt
nnoremap <Leader>5 5gt
nnoremap <Leader>6 6gt
nnoremap <Leader>7 7gt
nnoremap <Leader>8 8gt
nnoremap <Leader>9 9gt

" Easily create a new tab.
noremap <Leader>tN :tabnew<CR>
" Easily close a tab.
noremap <Leader>tc :tabclose<CR>
" Easily move a tab.
noremap <Leader>tm :tabmove<CR>
" Easily go to next tab.
noremap <Leader>tn :tabnext<CR>
" Easily go to previous tab.
noremap <Leader>tp :tabprevious<CR>

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

" commands for snippet plugin
let g:UltiSnipsExpandTrigger="<tab>"
" list all snippets for current filetype
let g:UltiSnipsListSnippets="<c-l>"

" manual ts hover doc
nnoremap <silent> K :call CocAction('doHover')<CR>

" typescript hover documentation
" function! ShowDocIfNoDiagnostic(timer_id)
"   if (coc#float#has_float() == 0 && CocHasProvider('hover') == 1)
"     silent call CocActionAsync('doHover')
"   endif
" endfunction
" 
" function! s:show_hover_doc()
"   call timer_start(500, 'ShowDocIfNoDiagnostic')
" endfunction
" 
" autocmd CursorHoldI * :call <SID>show_hover_doc()
" autocmd CursorHold * :call <SID>show_hover_doc()


" NEEDS TO BE TESTED
" nmap <silent> gd <Plug>(coc-definition)
" nmap <silent> gy <Plug>(coc-type-definition)
" nmap <silent> gr <Plug>(coc-references)
" 
" nmap <silent> [g <Plug>(coc-diagnostic-prev)
" nmap <silent> ]g <Plug>(coc-diagnostic-next)

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

" lightline config
let g:lightline = {
        \ 'colorscheme': 'gruvbox',
      \ 'active': {
        \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
        \   'gitbranch': 'FugitiveHead'
      \ },
      \ }


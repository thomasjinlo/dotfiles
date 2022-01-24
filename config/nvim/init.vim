" ======================================================
" PLUGINS
" ======================================================
call plug#begin('~/.config/nvim/plugged')

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'rking/ag.vim'

" vim color themes
Plug 'junegunn/seoul256.vim'

" linters
Plug 'dense-analysis/ale'

call plug#end()

" theme settings
"
" seoul256
" dark
" range 233 (darkest) ~ 239 (lightest)
let g:seoul256_background=233
colo seoul256

" light
" range 252 (darkest) ~ 256 (lightest)
" let g:seoul256_background=256
" colo seoul256-light

if (has("termguicolors"))
  set termguicolors
endif

let $NVIM_TUI_ENABLE_TRUE_COLOR=1

" ======================================================
" BINDINGS
" ======================================================

" navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" copy/pasta
vnoremap <C-y> "*y
nnoremap <C-p> "*p
vnoremap <C-Y> "+y
nnoremap <C-P> "+p

" copy file path
nnoremap <leader>rp :let @+ =expand("%")<CR>
nnoremap <leader>fp :let @+ =expand("%:p")<CR>

" search files
nnoremap <leader>t :Files<CR>

" folding
"set foldmethod  =indent

set tabstop     =2
set softtabstop =2
set shiftwidth  =2
set autoindent
set expandtab

" ======================================================
" FILE TYPE PLUGIN
" ======================================================

filetype plugin on

" ======================================================
" COMMAND T
" ======================================================
set wildignore=node_modules

" ======================================================
" ALE
" ======================================================
let g:ale_linters = {
\  'python': ['flake8']
\}

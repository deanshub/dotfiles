call plug#begin()
Plug 'junegunn/vim-easy-align'
Plug 'https://github.com/junegunn/vim-github-dashboard.git'
Plug 'sheerun/vim-polyglot'
Plug 'w0rp/ale'
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'oplatek/Conque-Shell'
Plug 'scrooloose/nerdtree'
call plug#end()

nmap <silent> [c <Plug>(ale_previous_wrap)
nmap <silent> ]c <Plug>(ale_next_wrap)
let g:ale_sign_error = '❌'
let g:ale_sign_warning = '⚠️'
" let g:ale_fixers['javascript'] = ['eslint']

" Fix files automatically on save
let g:ale_fix_on_save = 1
:set incsearch
:set hlsearch
:set number
filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab
nnoremap <C-Tab> <C-w>w
nnoremap <C-S-Tab> <C-w>W
:set mouse=a
command! -nargs=* Ter execute ":ConqueTermSplit " . <q-args>
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif
map <C-\> :NERDTreeToggle<CR>
map  <C-l> :tabn<CR>
map  <C-h> :tabp<CR>
map  <C-n> :tabnew<CR>

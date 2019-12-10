  1 call plug#begin()
  1 call plug#begin()
  2 Plug 'junegunn/vim-easy-align'
  3 Plug 'https://github.com/junegunn/vim-github-dashboard.git'
  4 Plug 'sheerun/vim-polyglot'
  5 Plug 'w0rp/ale'
  6 Plug '/usr/local/opt/fzf'
  7 Plug 'junegunn/fzf.vim'
  8 Plug 'neoclide/coc.nvim', {'branch': 'release'}
  9 Plug 'oplatek/Conque-Shell'
 10 Plug 'scrooloose/nerdtree'
 11 call plug#end()
 12
 13 nmap <silent> [c <Plug>(ale_previous_wrap)
 14 nmap <silent> ]c <Plug>(ale_next_wrap)
 15 let g:ale_sign_error = '❌'
 16 let g:ale_sign_warning = '⚠️'
 17 " let g:ale_fixers['javascript'] = ['eslint']
 18
 19 " Fix files automatically on save
 20 let g:ale_fix_on_save = 1
 21 :set incsearch
 22 :set hlsearch
 23 :set number
 24 filetype plugin indent on
 25 " show existing tab with 4 spaces width
 26 set tabstop=4
 27 " when indenting with '>', use 4 spaces width
 28 set shiftwidth=4
 29 " On pressing tab, insert 4 spaces
 30 set expandtab
 31 nnoremap <C-Tab> <C-w>w
 32 nnoremap <C-S-Tab> <C-w>W
 33 :set mouse=a
 34 command! -nargs=* Ter execute ":ConqueTermSplit " . <q-args>
 35 autocmd StdinReadPre * let s:std_in=1
 36 autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif
 37 map <C-\> :NERDTreeToggle<CR>
 38 map  <C-l> :tabn<CR>
 39 map  <C-h> :tabp<CR>
 40 map  <C-n> :tabnew<CR>
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
39 more lines; before #1  29 seconds ago

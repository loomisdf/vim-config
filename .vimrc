" Colors {{{
syntax enable	" Enable syntax processing
" }}}
" Spaces and tabs {{{
set tabstop=4 		" number of visual spaces per TAB
set softtabstop=4	" number of spaces in tab when editing
set expandtab		" tabs are spaces
set modelines=1
" }}}
" UI Config {{{
" press Ctrl-N twice to show/hide line numbers
:nmap <S-N><S-N> :set invnumber<CR>
set showcmd                             " show command in bottom bar
set cursorline                          " highlight current line
filetype indent on                      " load filetype-specifc indent files
set wildmenu                            " visual autocomplete for command menu
"set lazyredraw                         " redraw only when we need to, use for faster macros
set showmatch                           " highlight matching [{()}]
" }}}
" Searching {{{
set incsearch                               " search as characters are entered
set hlsearch                                " highlight matches
"nnoremap <leader><space> :nohlsearch<CR>    " press ,<space> to turn off search highlighting
" }}}
" Folding {{{
"" Press za to open/close folds
set foldenable          " enable folding
set foldlevelstart=10   " open most fold be default
set foldmethod=indent   " fold based on indent level
" }}}
" Movement {{{
"nnoremap j gj   " move vertically be visual line
"nnoremap k gk   " move vertically be visual line
" }}}
" Leader Shortcuts {{{
let mapleader = "\<Space>"
nnoremap <leader>w :write<cr>
"nnoremap <leader>u :GundoToggle<CR>    " toggle gundo.vim
"nnoremap <leader>a :Ag                 " open ag.vim
" }}}
" Backups {{{
set backup  " enable backup support
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup
" }}}
" vim:foldmethod=marker:foldlevel=0

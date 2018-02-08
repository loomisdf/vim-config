" Vundle Config
set nocompatible    " required for vundle
filetype off        " required for vundle

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" Plugin:Vim-airline
set laststatus=2    " make airline appear all the time
let g:airline_powerline_fonts=1

" Colors & Fonts
if has("gui_running")
    colorscheme desert
    " set gui font
    set gfn=Roboto\ Mono\ Medium\ Nerd\ Font\ Complete:h13
endif
syntax enable	" Enable syntax processing

" Spaces and tabs
set tabstop=4 		" number of visual spaces per TAB
set softtabstop=4	" number of spaces in tab when editing
set expandtab		" tabs are spaces
set modelines=1

" UI Config
" press Ctrl-N twice to show/hide line numbers
set showcmd                             " show command in bottom bar
set cursorline                          " highlight current line
set wildmenu                            " visual autocomplete for command menu
"set lazyredraw                         " redraw only when we need to, use for faster macros
set showmatch                           " highlight matching [{()}]

" Searching
set incsearch                               " search as characters are entered
set hlsearch                                " highlight matches
" press ,<space> to turn off search highlighting
nnoremap <leader><leader> :nohlsearch<CR>

" Folding
"" Press za to open/close folds
set foldenable          " enable folding
set foldlevelstart=10   " open most fold be default
set foldmethod=indent   " fold based on indent level

" Movement {{{
" move vertically be visual line
nnoremap j gj
nnoremap k gk

" Leader Shortcuts
let mapleader = "\<Space>"
nnoremap <leader>w :write<cr>
"nnoremap <leader>u :GundoToggle<CR>    " toggle gundo.vim
"nnoremap <leader>a :Ag                 " open ag.vim

" Backups
set backup  " enable backup support
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup

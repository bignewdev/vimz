"my vimrc https://github.com/bignewdev/vimz.git
"goto ~; git clone https://github.com/bignewdev/vimz.git
"clone me first from github
"git clone https://github.com/gmarik/vundle.git bundle/vundle
"ln -s .vim to thix vimz, .vimrc to this vimz/.vimrc
set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

Bundle 'tpope/vim-fugitive'
Bundle 'msanders/snipmate.vim'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-git'
Bundle 'ervandew/supertab'
Bundle 'sontek/minibufexpl.vim'
Bundle 'wincent/Command-T'
Bundle 'mitechie/pyflakes-pathogen.git'
Bundle 'mileszs/ack.vim'
Bundle 'sjl/gundo.vim'
Bundle 'vim-scripts/TaskList.vim'
Bundle 'vim-scripts/The-NERD-tree'
Bundle 'sontek/rope-vim'
Bundle 'altercation/vim-colors-solarized'
Bundle 'vim-scripts/taglist.vim'
Bundle 'scrooloose/syntastic'
Bundle 'tpope/vim-abolish'
Bundle 'mattn/emmet-vim'
Bundle 'vim-ruby/vim-ruby'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-repeat'
Bundle 'kchmck/vim-coffee-script'
Bundle 'Lokaltog/powerline'

filetype plugin indent on

 "
 " Brief vundle help
 " :BundleList          - list configured bundles
 " :BundleInstall(!)    - install(update) bundles
 " :BundleSearch(!) foo - search(or refresh cache first) for foo
 " :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
 "
 " see :h vundle for more details or wiki for FAQ
 " NOTE: comments after Bundle command are not allowed..



set shiftwidth=2
set tabstop=2
set expandtab
set autoindent
set selectmode=mouse
set nobackup
set nowritebackup
set history=50
set ruler
imap kj <Esc>
set wrapmargin=0
set textwidth=0
set wrap
set linebreak
set t_Co=256
"colorscheme xoria256
set background=dark
let g:solarized_termtrans = 1
let g:solarized_termcolors=256
colorscheme solarized
nmap <silent> <c-n> :NERDTreeToggle<CR>
set nu
set smartindent
set showcmd
set ruler
set hlsearch
set incsearch
set showmatch
set ignorecase
set smartcase
set visualbell t_vb=
set novisualbell
set backspace=indent,eol,start
syntax on
filetype on
filetype indent on
set t_RV=
map <F2> :NERDTreeToggle<cr>
compiler ant
setlocal makeprg=ant\ -find\ build.xml
set noswapfile

if has('gui_win32')
"set guifont=Lucida\ Console::h9:cANSI
  set guifont=Consolas::h8:cANSI
  set lines=80 columns=200
endif

"taglist ctags
if has("unix") " For environment at work (compiled locally)
  let Tlist_Ctags_Cmd = "~/mytools/bin/ctags"
elseif has("win32")
  let Tlist_Ctags_Cmd="C:/a/apps/ctags58/ctags.exe"
  set tags=R:/SomeFolder/tags
elseif has("win32unix") " For Cygwin
  let Tlist_Ctags_Cmd="/usr/bin/ctags"
endif

map <F4> :TlistToggle<cr>

let g:CommandTMaxFiles=200000


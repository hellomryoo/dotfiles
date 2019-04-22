
" Vundle setup
set nocompatible              " be iMproved, required
filetype off                  " required <<========== We can turn it on later
set laststatus=2

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'itchyny/lightline.vim'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/nerdtree'
Plugin 'townk/vim-autoclose'
Plugin 'tomtom/tcomment_vim'
" Plugin 'Valloric/YouCompleteMe'
" <============================================>
" Specify the plugins you want to install here.
" We'll come on that later
" <============================================>
" All of your Plugins must be added before the following line
call vundle#end()            " required

filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
" Put the rest of your .vimrc file here
" basic setup

colorscheme sublimemonokai
syntax enable 
set tabstop=4 
set softtabstop=4  
set showcmd
set cursorline
set wildmenu 
set lazyredraw
set showmatch
set mouse=a
set number
set incsearch
set ignorecase
set smartcase

" reopen file from the last edit

if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g'\"" | endif
endif
set ruler
syntax enable

" easy navigation between wrapped lines
vmap j gj
vmap k gk
nmap j gj
nmap k gk

" Split Panes Lookin Nice
hi VertSplit cterm=NONE ctermbg=NONE ctermfg=NONE
set splitbelow
set splitright

" Make it quick
set ttyfast

" Maps Ctrl-[h,j,k,l] to resizing and navigating window split
map <silent> <C-h> <C-w><
map <silent> <C-l> <C-w>>
map <silent> <C-k> <C-w><C-w>
map <silent> <C-j> <C-w><S-w>


map <silent> <C-t> <C-w>+
map <silent> <C-y> <C-w>-
map <silent> <C-o> <C-w><
map <silent> <C-p> <C-w>>


map <C-o> :NERDTreeToggle<CR>


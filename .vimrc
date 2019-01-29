
" basic setup
"
colorscheme sublimemonokai
syntax enable 
set tabstop=4 
set softtabstop=4  
set showcmd
set cursorline
filetype plugin indent on
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

" installing plugin

call plug#begin()
Plug 'scrooloose/nerdtree'
Plug 'christoomey/vim-tmux-navigator'
Plug 'tpope/vim-commentary'
call plug#end()



" Maps Ctrl-n
map <C-n> :NERDTreeToggle<CR>

" Show hidden files except for swp
let NERDTreeShowHidden=1
let NERDTreeIgnore = ['\.swp$', '\.swo$']

" Open NERDTree automatically on directory open
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

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


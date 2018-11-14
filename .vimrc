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
set hlsearch
set incsearch
set ignorecase
set smartcase
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g'\"" | endif
endif

" Enable syntax highlighting

execute pathogen#infect()
syntax on
filetype plugin indent on
set background=dark
colorscheme gruvbox

set hidden
set wildmenu
set showcmd
set hlsearch
set backspace=indent,eol,start
set autoindent
set nostartofline
set ruler
set visualbell
set confirm
set laststatus=2
set mouse=a
set cmdheight=2
set number
set shiftwidth=4
set softtabstop=4
set expandtab

:imap jj <Esc>
map <C-n> :NERDTreeToggle<CR>
autocmd vimenter * NERDTree

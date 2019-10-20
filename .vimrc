set autoread
" Auto-reload vimrc
autocmd! bufwritepost vimrc source ~/.vimrc

execute pathogen#infect()
syntax on
syntax enable
filetype plugin indent on
set background=dark
colorscheme gruvbox
set colorcolumn=80

" Whitespace
set list
set listchars=tab:\|\  

set wrap
set shiftwidth=4
set softtabstop=4
set tabstop=4
set expandtab
set smarttab
set cursorline
set cursorcolumn

" Indent
set autoindent
set smartindent
set cindent

set autoread
set hidden
set wildmenu
set showcmd
set backspace=indent,eol,start
set whichwrap+=<,>,h,l
set autoindent
set nostartofline
set ruler
set visualbell
set noerrorbells
set confirm
set laststatus=2
set mouse=a
set cmdheight=2
set number
set ai
set si
set hlsearch
set incsearch
set ignorecase
set smartcase
set encoding=utf-8
set title
set clipboard=unnamed
set showmatch
set mat=2
set magic
set foldcolumn=1
set foldmethod=syntax
set foldlevel=20

" Clang Format
let g:clang_format#style_options = {
                \ "AccessModifierOffset" : -4,
                \ "AllowShortIfStatementsOnASingleLine" : "true",
                \ "AlwaysBreakTemplateDeclarations" : "true",
                \ "Standard" : "C++11",
                \ "DerivePointerAlignment": "false",
                \ "PointerAlignment" : "Left",
                \ "ColumnLimit" : 80,
                \ "SpaceBeforeParens" : "ControlStatements",
                \ "BreakBeforeBraces" : "Attach",
                \ "SpaceBeforeAssignmentOperators" : "true"}

" map to <Leader>cf in C++ code
autocmd FileType c,cpp,h,objc nnoremap <buffer><Leader>cf :<C-u>ClangFormat<CR>
autocmd FileType c,cpp,h,objc vnoremap <buffer><Leader>cf :ClangFormat<CR>
" if you install vim-operator-user
autocmd FileType c,cpp,h,objc map <buffer><Leader>x <Plug>(operator-clang-format)
" Toggle auto formatting:
nmap <Leader>C :ClangFormatAutoToggle<CR>

" Key Remapping
:imap jj <Esc>
map <C-a> :%s/\t/    /g<CR>

" Directories for swp files
set backupdir=~/.vim/backup
set directory=~/.vim/backupf

" Nerdtree
map <C-n> :NERDTreeToggle<CR>
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
" let g:NERDTreeMapOpenInTab='<ENTER>'
:let g:NERDTreeWinSize=50

" NERDCommenter
map <Leader>/ <plug>NERDCommenterToggle

" FZF
set rtp+=~/.fzf
map <C-F> <C-O>:Files<CR>
nmap <C-F> :Files<CR>C

" YouCompleteMe
set complete=.,b,u,]
set wildmode=longest,list:longest
set completeopt=menu,preview
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'

" vim-plug
call plug#begin('~/.vim/plugged')
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'kshenoy/vim-signature'
Plug 'kana/vim-operator-user'
Plug 'rhysd/vim-clang-format'
Plug 'ycm-core/YouCompleteMe'

call plug#end()

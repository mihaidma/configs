execute pathogen#infect()

set t_Co=256
filetype plugin indent on
syntax enable

" solarized plugin
set background=dark
"colorscheme solarized
colorscheme blackboard

" default indent is 2 spaces. 
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab
"set modelines=1
"set autoindent

" Misc {{{
set ttyfast                     " faster redraw
set backspace=indent,eol,start
" }}}

"UI Layout {{{
set number              " show line numbers
set showcmd             " show command in bottom bar
set nocursorline        " highlight current line
set wildmenu
"set lazyredraw
set showmatch           " higlight matching parenthesis
" }}}
" Searching {{{
set ignorecase          " ignore case when searching
set incsearch           " search as characters are entered
set hlsearch            " highlight all matches
" }}}
" Folding {{{
"=== folding ===
set foldmethod=indent   " fold based on indent level
set foldnestmax=10      " max 10 depth
set foldenable          " don't fold files by default on open
nnoremap <space> za
set foldlevelstart=10    " start with fold level of 1
" }}}

" Auto change directory to current file's directory
autocmd BufEnter * lcd %:p:h

"Trim trailing whitespace in javascript files
autocmd BufWritePre *.js normal m`:%s/\s\+$//e ``

" map simple ctrl keys for split/window movement and sizing
map <C-J> <C-W>j
map <C-K> <C-W>k
map <C-H> <C-W>h
map <C-L> <C-W>l
map <C-M> <C-W>_

" tern autocomplete configuration
let g:tern_show_argument_hints='on_hold'
" and 
"let g:tern_map_keys=1


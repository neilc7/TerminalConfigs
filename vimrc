colors desert

set nocompatible
set mouse=a
set guifont=DejaVu\ Sans\ Mono\ 8
set guioptions+=b
set nu                                "line number
set expandtab                         "expand tab to space
set tabstop=4
set softtabstop=4
set shiftwidth=4
set backspace=indent,eol,start
set ai                                "auto-indent
set nowrap
set autochdir
set wildmode=longest,list,full
set wildmenu
set ignorecase                        "ignore case on search
set scs                               "smart case search
set tw=0                              "disable auto text wrap
set laststatus=2
set cursorline
set hlsearch

if has("mouse_sgr")
    set ttymouse=sgr
else
    set ttymouse=xterm2
end
"set ttymouse=xterm2

highlight CursorLine cterm=none ctermbg=black
highlight CursorColumn cterm=none ctermbg=black

highlight myHlTodo cterm=none ctermfg=196 ctermbg=yellow guifg=orangered guibg=yellow2
match myHlTodo /\(TODO\|FIXME\|TODO_FIXME\|NOTE\)/

map <silent> ;; :nohlsearch<CR>
map <F2> :set wrap<CR>
map <F3> :set nowrap<CR>
map <F4> :w<CR>
map <F5> :q<CR>
map <F6> :bd<CR>
map <F7> :setlocal foldmethod=indent<CR>
map <F8> :set cursorline!<CR>
map <F11> :set expandtab!<CR>
map <F12> :set cursorcolumn!<CR>

map t8 :set softtabstop=8<CR>
map t4 :set softtabstop=4<CR>
map t3 :set softtabstop=3<CR>
map t2 :set softtabstop=2<CR>

map T8 :set tabstop=8<CR>
map T4 :set tabstop=4<CR>
map T3 :set tabstop=3<CR>
map T2 :set tabstop=2<CR>

map f8 :set guifont=DejaVu\ Sans\ Mono\ 8<CR>
map f7 :set guifont=DejaVu\ Sans\ Mono\ 7<CR>
map f6 :set guifont=DejaVu\ Sans\ Mono\ 6<CR>

nnoremap <C-Z> :tabp<CR>
nnoremap <C-X> :tabn<CR>
nnoremap v <C-V>
nnoremap <C-V> v

nnoremap <C-P><C-L> :set syntax=perl<CR>
nnoremap <C-M><C-V> :set syntax=verilog_systemverilog<CR>
nnoremap <C-P><C-Y> :set syntax=python<CR>

" wrapped lines goes down/up to the next row rather than next line in file
nnoremap j gj
nnoremap k gk

iab #i #include
iab #d #define
iab `i `include
iab `d `define

iab =-= //============================
iab =--= //=======================================================
iab =---= //=====================================================================================

set tags=./tags;
set tags+=~/.vim/tags/UVM

function! Tab_Or_Complete()
  if col('.')>1 && strpart(getline('.'), col('.')-2,3) =~ '^\w'
    return "\<C-P>"
  else
    return "\<Tab>"
  endif
endfunction
:inoremap <Tab> <C-R>=Tab_Or_Complete()<CR>

:inoremap <C-Tab> <C-V><Tab>

if &diff 
  set columns=300
endif

"" ===== load plugins =========
"call pathogen#infect()
"
"" ===== indent-guides =========
"let g:indent_guides_enable_on_vim_startup = 1
"let g:indent_guides_start_level = 2
"let g:indent_guides_guide_size = 1
"
" fold method
" :set foldmethod=indent
" zM to close all fold
" zR to open all fold
" za to toggle fold

"this is a comment 
" mouse=a; mouse=v; mouse=r;
":set mouse=v
":set t_Co=256
":color grb256

"set mouse=a
:set mouse=v
map <ScrollWheelUp> <C-Y>
map <ScrollWheelDown> <C-E>

"vnoremap <C-c> :w !pbcopy<CR><CR> noremap <C-v> :r !pbpaste<CR><CR>

set t_Co=256              " enable 256-color mode.
syntax enable             " enable syntax highlighting (previously syntax on).
set number                " show line numbers
set ruler                 " Always show info along bottom.
set tabstop=2             " tab spacing
set softtabstop=2         " unify
set shiftwidth=2          " indent/outdent by 4 columns
set shiftround            " always indent/outdent to the nearest tabstop
set expandtab             " use spaces instead of tabs
set nowrap                " don't wrap text

" Case insensitive.
" If you search for something containing uppercase characters, it will do a case sensitive search;
" if you search for something purely lowercase, it will do a case insensitive search.
" You can use \c and \C to override this:
"
:set ignorecase
:set smartcase
" /copyright      " Case insensitive
" /Copyright      " Case sensitive
" /copyright\C    " Case sensitive
" /Copyright\c    " Case insensitive

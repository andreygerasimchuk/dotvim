set nocompatible

runtime! autoload/pathogen.vim
if exists('g:loaded_pathogen')
  call pathogen#runtime_prepend_subdirectories(expand('~/.vim/bundles'))
end

syntax on
filetype plugin indent on

"set completeopt=menuone,preview,longest
set completeopt=menuone,preview
"inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" Omni completion settings
set ofu=syntaxcomplete#Complete
let g:rubycomplete_buffer_loading = 0
let g:rubycomplete_classes_in_global = 1
" completing Rails hangs a lot
"let g:rubycomplete_rails = 1

" syntastic
let g:syntastic_enable_signs=1

colorscheme vividchalk
set background=dark

let bash_is_sh=1
set cinoptions=:0,(s,u0,U1,g0,t0

set modelines=5
set tags=tags;/

set laststatus=2

" default:
" set statusline=%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P
set statusline=%<%f\ %h%m%r%#warningmsg#%{SyntasticStatuslineFlag()}%*%=%-14.(%l,%c%V%)\ %P

"set cuc
set cul

set number

set textwidth=0         " Do not wrap words (insert)
set nowrap              " Do not wrap words (view)
set showcmd             " Show (partial) command in status line.
set showmatch           " Show matching brackets.
set ignorecase          " Do case insensitive matching
set smartcase           " do not ignore if search pattern has CAPS
set incsearch           " Incremental search
set autowriteall        " Automatically save before commands like :next and :make
set hlsearch            " Highlight search match
set hidden              " enable multiple modified buffers
set nobackup            " do not write backup files
set foldcolumn=0        " columns for folding
set foldmethod=indent
set foldlevel=9
set history=1000
set wildmenu
set ruler
set visualbell

set ts=4
set sw=4

"fixdel

" prevent vim from adding that stupid empty line at the end of every file
set noeol
set binary

"Ignore these files when completing names and in Explorer
set wildignore=.svn,CVS,.git,.hg,*.o,*.a,*.class,*.mo,*.la,*.so,*.obj,*.swp,*.jpg,*.png,*.xpm,*.gif

hi SpellErrors guibg=red guifg=black ctermbg=red ctermfg=black

set backupdir=~/.backup,.
set directory=~/.backup,~/tmp,.

" enable showmmarks
let g:showmarks_enable = 1
hi! link ShowMarksHLl LineNr
hi! link ShowMarksHLu LineNr
hi! link ShowMarksHLo LineNr
hi! link ShowMarksHLm LineNr


" Make
:command -nargs=* Make make <args> | cwindow 3

let mapleader = ","

" Don't use Ex mode, use Q for formatting
map Q gq

" highlight trailing whitespace  
set listchars=tab:▷⋅,trail:·,eol:$
nmap <silent> <leader>s :set nolist!<CR>

" extended '%' mapping for if/then/else/end etc
runtime macros/matchit.vim

" Make shift-insert work like in Xterm
map <S-Insert> <MiddleMouse>
map! <S-Insert> <MiddleMouse>

" Ctrl-N to disable search match highlight
nmap <silent> <C-N> :silent noh<CR>

" Ctrol-E to switch between 2 last buffers
nmap <C-E> :b#<CR>

" Ctrl-P to Display the file browser tree
nmap <C-P> :NERDTreeToggle<CR>
" ,p to show current file in the tree
nmap <leader>p :NERDTreeFind<CR>

" ,/ to invert comment on the current line/selection
nmap <leader>/ :call NERDComment(0, "invert")<cr>
vmap <leader>/ :call NERDComment(0, "invert")<cr>

" ,t to show tags window
let Tlist_Show_Menu=1
nmap <leader>t :TlistToggle<CR>

" ,e to fast finding files. just type beginning of a name and hit TAB
nmap <leader>e :e **/

" ,b to display current buffers list
let g:miniBufExplVSplit = 25
let g:miniBufExplorerMoreThanOne = 100
let g:miniBufExplUseSingleClick = 1
nmap <Leader>b :MiniBufExplorer<cr>

" ,sh to open vimshell window
nmap <Leader>sh :runtime vimsh/vimsh.vim<cr>

" map ,y to show the yankring
nmap <leader>y :YRShow<cr>

if has("mouse")
  set mouse=a
endif

let g:yankring_replace_n_pkey = '<leader>['
let g:yankring_replace_n_nkey = '<leader>]'

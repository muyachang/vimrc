"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" Sections:
"    -> General
"    -> Abbreviations
"    -> Buffers
"    -> Folding
"    -> Colors
"    -> Files and backups
"    -> Space, tab, indent, and line related
"    -> Status line
"    -> Helper functions
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Enable native vim packages
set packpath+=~/.vim_runtime

" Sets how many lines of history VIM has to remember
set history=500

" Show line number
set number

" Enable filetype plugins and indent
filetype plugin on
filetype indent on

" Set to auto read when a file is changed from the outside
set autoread
au FocusGained,BufEnter * silent! checktime

" Persistent undo --> can undo even after closing vim
set undodir=~/.vim_runtime/temp_dirs/undodir
set undofile

" Set 7 lines to the cursor - when moving vertically using j/k
set so=7

" Avoid garbled characters in Chinese language windows OS
let $LANG='en'
set langmenu=en
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim

" Turn on the Wild menu
set wildmenu

" Ignore compiled files
set wildignore=*.o,*~,*.pyc
if has("win16") || has("win32")
    set wildignore+=.git\*,.hg\*,.svn\*
else
    set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store
endif

" Always show current position
set ruler

" Height of the command bar
set cmdheight=1

" A buffer becomes hidden when it is abandoned
set hid

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases
set smartcase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch

" Don't redraw while executing macros (good performance config)
set lazyredraw

" For regular expressions turn magic on
set magic

" Show matching brackets when text indicator is over them
set showmatch

" How many tenths of a second to blink when matching brackets
set mat=2

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" Set regular expression engine automatically
set regexpengine=0

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Use Unix as the standard file type
set ffs=unix,dos,mac


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Abbreviations
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Date
iab xdate <C-r>=strftime("%m/%d/%Y %H:%M")<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Buffers
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Specify the behavior when switching between buffers
set switchbuf=useopen,usetab,newtab
set stal=2


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Folding
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Useful reference: https://www.vimfromscratch.com/articles/vim-folding

" Default fold based on indent
set foldmethod=indent

" Special fold based on marker
autocmd FileType vim setlocal foldmethod=marker

" Add a bit extra margin to the left
set foldcolumn=1


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Colors
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Background
set background=dark

" Enable syntax highlighting
syntax enable

" Enable 256 colors palette in True Color Terminal
set t_Co=256

" Color Scheme
colorscheme peaksea


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Files, backups and undo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn backup off since we version control stuff mostly anyway
set nobackup
set nowb
set noswapfile


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Space, tab, indent, and line related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use spaces instead of tabs
set expandtab

" Be smart when using tabs
set smarttab

" 1 tab == 2 spaces
set shiftwidth=2
set tabstop=2

" Linebreak on 500 characters
set lbr
set tw=500

" Auto indent
set ai

" Smart indent
set si

" Wrap lines
set wrap


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Status line
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Always show the status line
set laststatus=2


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Helper functions
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""



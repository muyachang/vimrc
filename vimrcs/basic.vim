"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" Sections:
"    -> General
"    -> Abbreviations
"    -> Buffers
"    -> Tabs
"    -> Folding
"    -> Colors
"    -> Files and backups
"    -> Tab/space, indent, and line related
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

" Don't redraw while executing macros, registers and other commands (good performance config)
set lazyredraw

" Use Unix as the standard file type
set ffs=unix,dos,mac

" Configure backspace so it acts as it should act
set backspace=eol,start,indent

" Enable filetype plugins and indent
filetype plugin indent on


"-------------------------------
" interface related
"-------------------------------
" Show line number
set number

" Height of the command bar
set cmdheight=2

" 10 lines to see above/below the cursor
set scrolloff=10

" Show matching brackets when text indicator is over them
set showmatch

" The time (ms) waited for a key code or mapped key sequence to complete.
set timeoutlen=500

" Avoid garbled characters in Chinese language windows OS
let $LANG='en'
set langmenu=en
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim

"-------------------------------
" "wild.*" related
"-------------------------------
" Enable wilemenu
set wildmenu

" When more than one match, list all matches and complete first match.
set wildmode=list:full

" Ignore compiled files
set wildignore=*.o,*~,*.pyc
"set wildignore+=.git\*,.hg\*,.svn\*

"-------------------------------
" Search related
"-------------------------------
" Ignore case when searching
set ignorecase

" When searching try to be smart about cases
set smartcase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch

"-------------------------------
" Sound related
"-------------------------------
" Don't ring the bell (beep or screen flash) for error messages.
set noerrorbells

"-------------------------------
" Behavior
"-------------------------------
" Set to auto read when a file is changed from the outside
set autoread

" Persistent undo --> can undo even after closing vim
set undodir=~/.vim_runtime/temp_dirs/undodir
set undofile


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Abbreviations
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Date
iab xdate <C-r>=strftime("%m/%d/%Y %H:%M")<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Buffers
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" A buffer becomes hidden when it is abandoned
set hidden

" Specify the behavior when switching between buffers
set switchbuf=useopen,usetab,newtab


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Tabs
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Always show the line with tab page labels
set showtabline=2


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Folding
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Useful reference: https://www.vimfromscratch.com/articles/vim-folding

" Default fold based on indent
set foldmethod=indent

" Add a bit extra margin to the left
set foldcolumn=1


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Colors
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Background
set background=dark

" Enable 256 colors palette in True Color Terminal
set t_Co=256

" Color Scheme
colorscheme peaksea

" Enable syntax highlighting
syntax enable


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Files, backups and undo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn backup off since we version control stuff mostly anyway
set nobackup
set nowb
set noswapfile


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Tab/space, indent, and line related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"-------------------------------
" Tab/space
"-------------------------------
" Use spaces instead of tabs
set expandtab

" Be smart when using tabs
set smarttab

" Number of spaces a <Tab> counts for
set tabstop=2

"-------------------------------
" Indent
"-------------------------------
" Enable auto indent
set autoindent

" Smart indent
set smartindent

" Number of spaces a for one level of indentation
set shiftwidth=2

"-------------------------------
" Line
"-------------------------------
" Enable wrap lines
set wrap

" Enable linebreak
set linebreak

" Enable visual indent when linebreak happens
set breakindent

" Display 2 whitespaces for wrapped lines
set showbreak=+++\ 


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Status line
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Always show the status line
set laststatus=2


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Helper functions
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""



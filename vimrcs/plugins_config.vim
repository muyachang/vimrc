

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Colorschemes
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Decorations
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"-------------------------------
" lightline
"-------------------------------

" No need to show mode information since it's already in the statusline
set noshowmode

" Customized statusline
let g:lightline = {
  \   'colorscheme': 'powerline',
  \   'active': {
  \     'left': [
  \               [ 'mode', 'paste' ],
  \               [ 'fugitive', 'readonly', 'filename', 'modified' ]
  \             ],
  \     'right': [
  \                [ 'lineinfo' ],
  \                [ 'percent' ],
  \                [ 'fileformat', 'fileencoding', 'filetype', 'charvaluehex' ]
  \              ]
  \   },
  \   'component': {
  \     'fugitive': '%{exists("*FugitiveHead")?FugitiveHead():""}',
  \     'readonly': '%{&filetype=="help"?"":&readonly?"🔒":""}',
  \     'modified': '%{&filetype=="help"?"":&modified?"🔧":&modifiable?"":"🚧"}',
  \     'charvaluehex': '0x%B'
  \   },
  \   'component_visible_condition': {
  \     'fugitive': '(exists("*FugitiveHead") && ""!=FugitiveHead())',
  \     'readonly': '(&filetype!="help"&& &readonly)',
  \     'modified': '(&filetype!="help"&&(&modified||!&modifiable))'
  \   }
  \ }


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Syntax
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"-------------------------------
" ale
"-------------------------------
let g:ale_linters = {
\   'javascript': ['eslint'],
\   'python': ['flake8'],
\   'go': ['go', 'golint', 'errcheck']
\}

nmap <silent> <leader>a <Plug>(ale_next_wrap)

" Disabling highlighting
let g:ale_set_highlights = 0

" Only run linting when saving the file
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_enter = 0
let g:ale_virtualtext_cursor = 'disabled'


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Efficiency
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"-------------------------------
" ack
"-------------------------------
" Use the the_silver_searcher if possible (much faster than Ack)
if executable('ag')
  let g:ackprg = 'ag --vimgrep --smart-case'
endif

" Open Ack and put the cursor in the right position
nnoremap <leader>g :Ack<Space>

" Do :help cope if you are unsure what cope is. It's super useful!
"
" When you search with Ack, display your results in cope by doing:
"   <leader>cc
"
" To go to the next search result do:
"   <leader>n
"
" To go to the previous search results do:
"   <leader>p
"
nnoremap <leader>cc :botright cope<cr>
nnoremap <leader>co ggVGy:tabnew<cr>:set syntax=qf<cr>pgg
nnoremap <leader>n :cn<cr>
nnoremap <leader>p :cp<cr>


"-------------------------------
" bufexplorer
"-------------------------------
let g:bufExplorerDefaultHelp=0
let g:bufExplorerShowRelativePath=1
let g:bufExplorerFindActive=1
let g:bufExplorerSortBy='name'
nnoremap <leader>o :BufExplorer<cr>


"-------------------------------
" ctrlp
"-------------------------------
let g:ctrlp_working_path_mode = 0

" Quickly find and open a file in the current working directory
let g:ctrlp_map = '<C-f>'
nnoremap <leader>j :CtrlP<cr>

" Quickly find and open a buffer
nnoremap <leader>b :CtrlPBuffer<cr>

let g:ctrlp_max_height = 20
let g:ctrlp_custom_ignore = 'node_modules\|^\.DS_Store\|^\.git\|^\.coffee'


"-------------------------------
" multiple-cursors
"-------------------------------
let g:multi_cursor_use_default_mapping=0

" Default mapping
let g:multi_cursor_start_word_key      = '<C-s>'
let g:multi_cursor_select_all_word_key = '<A-s>'
let g:multi_cursor_start_key           = 'g<C-s>'
let g:multi_cursor_select_all_key      = 'g<A-s>'
let g:multi_cursor_next_key            = '<C-s>'
let g:multi_cursor_prev_key            = '<C-p>'
let g:multi_cursor_skip_key            = '<C-x>'
let g:multi_cursor_quit_key            = '<Esc>'


"-------------------------------
" nerdtree
"-------------------------------
let g:NERDTreeWinPos = "right"
let NERDTreeShowHidden=0
let NERDTreeIgnore = ['\.pyc$', '__pycache__']
let g:NERDTreeWinSize=35
nnoremap <leader>nn :NERDTreeToggle<cr>
nnoremap <leader>nb :NERDTreeFromBookmark<Space>
nnoremap <leader>nf :NERDTreeFind<cr>


"-------------------------------
" yankstack
"-------------------------------
let g:yankstack_yank_keys = ['y', 'd']

nmap <C-p> <Plug>yankstack_substitute_older_paste
nmap <C-n> <Plug>yankstack_substitute_newer_paste


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Automation
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"-------------------------------
" easy-align
"-------------------------------
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)


"-------------------------------
" surround
"-------------------------------
" Annotate strings with gettext
vmap Si S(i_<esc>f)
au FileType mako vmap Si S"i${ _(<esc>2f"a) }<esc>

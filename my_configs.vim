"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 1 tab == 2 spaces
set shiftwidth=2
set tabstop=2
set number

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Themes
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"colorscheme solarized
"colorscheme ir_black
colorscheme pyte

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => verilog_systemverilog.vim
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set foldmethod=syntax

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Eliminate the version error
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:go_version_warning = 0

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-easy-align
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim tabs
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap tn  :tabnew<Space>
nnoremap tm  :tabm<Space>
nnoremap tk  :tabnext<CR>
nnoremap tj  :tabprev<CR>
nnoremap th  :tabfirst<CR>
nnoremap tl  :tablast<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => reverse selected text
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
vnoremap ;rv c<C-O>:set revins<CR><C-R>"<Esc>:set norevins<CR>

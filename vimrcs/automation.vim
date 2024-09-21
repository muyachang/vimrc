"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" Sections:
"    ->
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Automatically load vimrcs when they change
if has("autocmd")
  autocmd! bufwritepost ~/.vim_runtime/vimrcs/basic.vim source ~/.vim_runtime/vimrcs/basic.vim
  autocmd! bufwritepost ~/.vim_runtime/vimrcs/automation.vim source ~/.vim_runtime/vimrcs/automation.vim
  autocmd! bufwritepost ~/.vim_runtime/vimrcs/mappings.vim source ~/.vim_runtime/vimrcs/mappings.vim
  autocmd! bufwritepost ~/.vim_runtime/vimrcs/syntax.vim source ~/.vim_runtime/vimrcs/syntax.vim
  autocmd! bufwritepost ~/.vim_runtime/vimrcs/plugins_config.vim source ~/.vim_runtime/vimrcs/plugins_config.vim
endif

" Properly disable sound on errors on MacVim
if has("gui_macvim")
    autocmd GUIEnter * set vb t_vb=
endif

" Automatically delete trailing white space on save for certain filetypes
if has("autocmd")
    autocmd BufWritePre *.txt,*.py,*.sh :call CleanExtraSpaces()
endif

" Make sure that enter is never overriden in the quickfix window
autocmd BufReadPost quickfix nnoremap <buffer> <CR> <CR>

" Return to last edit position when opening files (You want this!)
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Helper functions
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" delete trailing white space
fun! CleanExtraSpaces()
    let save_cursor = getpos(".")
    let old_query = getreg('/')
    silent! %s/\s\+$//e
    call setpos('.', save_cursor)
    call setreg('/', old_query)
endfun

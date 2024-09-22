"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" Sections:
"    ->
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Load vimrcs when they change
autocmd! bufwritepost ~/.vim_runtime/vimrcs/basic.vim source ~/.vim_runtime/vimrcs/basic.vim
autocmd! bufwritepost ~/.vim_runtime/vimrcs/automation.vim source ~/.vim_runtime/vimrcs/automation.vim
autocmd! bufwritepost ~/.vim_runtime/vimrcs/mappings.vim source ~/.vim_runtime/vimrcs/mappings.vim
autocmd! bufwritepost ~/.vim_runtime/vimrcs/syntax.vim source ~/.vim_runtime/vimrcs/syntax.vim
autocmd! bufwritepost ~/.vim_runtime/vimrcs/plugins_config.vim source ~/.vim_runtime/vimrcs/plugins_config.vim

" Filetype dependent foldmethod
autocmd FileType vim setlocal foldmethod=marker

" Delete trailing white space on save for certain filetypes
autocmd BufWritePre *.txt,*.py,*.sh :call CleanExtraSpaces()

" Make sure that enter is never overriden in the quickfix window
autocmd BufReadPost quickfix nnoremap <buffer> <CR> <CR>

" Check file every time the file gets focused or buffer entered
autocmd FocusGained,BufEnter * silent! checktime

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Helper functions
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" delete trailing white space
fun! CleanExtraSpaces()
    let save_cursor = getpos(".")
    let old_query = getreg('/')
    silent! %s/\s\+$//e
    call setpos('.', save_cursor)
    call setreg('/', old_query)
endfun

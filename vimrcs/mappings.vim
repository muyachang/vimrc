"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" Sections:
"    -> Leader character
"    -> (nmap) Normal mode recursively
"    -> (nnoremap) Normal mode non-recursively
"    -> (imap) Insert mode recursively
"    -> (inoremap) Insert mode non-recursively
"    -> (vmap) Visual and Select mode recursively
"    -> (vnoremap) Visual and Select mode non-recursively
"    -> (xmap) Visual mode recursively
"    -> (xnoremap) Visual mode non-recursively
"    -> (smap) Select mode recursively
"    -> (snoremap) Select mode non-recursively
"    -> (cmap) Command-line mode recursively
"    -> (cnoremap) Command-line mode non-recursively
"    -> (omap) Operator pending mode recursively
"    -> (onoremap) Operator pending mode non-recursively
"    -> Custom commands
"    -> Helper functions
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Leader character
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader = ","


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => (nmap) Normal mode recursively
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => (nnoremap) Normal mode non-recursively
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"-------------------------------
" Buffers 
"-------------------------------

" List buffers
nnoremap bls :buffers<CR>

" Use buffer name, supports partial and tab completion
nnoremap bn  :b<Space>

" Close the current buffer
" TODO: not sure why the tabclose and gT
nnoremap bd  :bd<CR>:tabclose<CR>gT

" Switch to the next buffer 
nnoremap bk  :bn<CR>

" Switch to the previous buffer 
nnoremap bj  :bp<CR>

" Switch to the latest buffer 
nnoremap bbl :b#<CR>

" Switch to buffer #1
nnoremap b1 :b1<CR>

" Switch to the next modified buffer
nnoremap bm :bm<CR>

" Close all the buffers
nnoremap ba :bufdo bd<CR>


"-------------------------------
" Tabs
"-------------------------------

" Open a new tab
nnoremap tn  :tabnew<Space>

" Move the current tab to
nnoremap tm  :tabmove<Space>

" Switch to the next tab
nnoremap tk  :tabnext<CR>

" Switch to the previous tab
nnoremap tj  :tabprev<CR>

" Switch to the first tab
nnoremap th  :tabfirst<CR>

" Switch to the last tab
nnoremap tl  :tablast<CR>

" Close every other tabs except the current one
nnoremap to  :tabonly<CR>

" Close the current tab
nnoremap tc  :tabclose<CR>

" Go to tab by number
nnoremap tt  :tabn<Space>

" Opens a new tab with the current buffer's path
" Useful when editing files in the same directory
nnoremap te :tabedit <C-r>=escape(expand("%:p:h"), " ")<CR>/

" Toggle between two lastest accessed tab
let g:lasttab = 1
nnoremap ttl :exe "tabn ".g:lasttab<CR>
au TabLeave * let g:lasttab = tabpagenr()


"-------------------------------
" Misc
"-------------------------------

" Disable highlight when <leader><CR> is pressed
nnoremap <silent> <leader><CR> :noh<CR>

" Fast saving
nnoremap <leader>w  :w!<CR>

" Switch CWD to the directory of the open buffer
nnoremap <leader>cd :cd %:p:h<CR>:pwd<CR>

" Pressing ,ss will toggle and untoggle spell checking
nnoremap <leader>ss :setlocal spell!<CR>

" Toggle paste mode on and off
nnoremap <leader>pp :setlocal paste!<CR>

" Remove the Windows ^M - when the encodings gets messed up
nnoremap <leader>m mmHmt:%s/<C-V><CR>//ge<CR>'tzt'm


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => (imap) Insert mode recursively
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => (inoremap) Insert mode non-recursively
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => (vmap) Visual and Select mode recursively
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => (vnoremap) Visual and Select mode non-recursively
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Visual mode pressing * or # searches for the current selection
vnoremap <silent> * :<C-u>call VisualSelection('', '')<CR>/<C-R>=@/<CR><CR>
vnoremap <silent> # :<C-u>call VisualSelection('', '')<CR>?<C-R>=@/<CR><CR>

" When you press gv you Ack after the selected text
vnoremap <silent> gv :call VisualSelection('gv', '')<CR>

" When you press <leader>r you can search and replace the selected text
vnoremap <silent> <leader>r :call VisualSelection('replace', '')<CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => (xmap) Visual mode recursively
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => (xnoremap) Visual mode non-recursively
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => (smap) Select mode recursively
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => (snoremap) Select mode non-recursively
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => (cmap) Command-line mode recursively
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => (cnoremap) Command-line mode non-recursively
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Bash like keys for the command line
cnoremap <C-A> <Home>
cnoremap <C-E> <End>
cnoremap <C-K> <C-U>
cnoremap <C-P> <Up>
cnoremap <C-N> <Down>

" Smart mappings on the command line
cnoremap $h e ~/
cnoremap $d e ~/Desktop/
cnoremap $j e ./
cnoremap $c e <C-\>eCurrentFileDir("e")<cr>

" $q is super useful when browsing on the command line
" it deletes everything until the last slash 
cnoremap $q <C-\>eDeleteTillSlash()<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => (omap) Operator pending mode recursively
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => (onoremap) Operator pending mode non-recursively
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Custom commands
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" :W sudo saves the file
" (useful for handling the permission-denied error)
command! W execute 'w !sudo tee % > /dev/null' <bar> edit!

" Don't close window when deleting a buffer
command! Bclose call <SID>BufcloseCloseIt()


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Helper functions
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
func! DeleteTillSlash()
    let g:cmd = getcmdline()

    if has("win16") || has("win32")
        let g:cmd_edited = substitute(g:cmd, "\\(.*\[\\\\]\\).*", "\\1", "")
    else
        let g:cmd_edited = substitute(g:cmd, "\\(.*\[/\]\\).*", "\\1", "")
    endif

    if g:cmd == g:cmd_edited
        if has("win16") || has("win32")
            let g:cmd_edited = substitute(g:cmd, "\\(.*\[\\\\\]\\).*\[\\\\\]", "\\1", "")
        else
            let g:cmd_edited = substitute(g:cmd, "\\(.*\[/\]\\).*/", "\\1", "")
        endif
    endif   

    return g:cmd_edited
endfunc

func! CurrentFileDir(cmd)
    return a:cmd . " " . escape(expand("%:p:h"), " ") . "/"
endfunc

function! <SID>BufcloseCloseIt()
    let l:currentBufNum = bufnr("%")
    let l:alternateBufNum = bufnr("#")

    if buflisted(l:alternateBufNum)
        buffer #
    else
        bnext
    endif

    if bufnr("%") == l:currentBufNum
        new
    endif

    if buflisted(l:currentBufNum)
        execute("bdelete! ".l:currentBufNum)
    endif
endfunction

function! CmdLine(str)
    call feedkeys(":" . a:str)
endfunction

function! VisualSelection(direction, extra_filter) range
    let l:saved_reg = @"
    execute "normal! vgvy"

    let l:pattern = escape(@", "\\/.*'$^~[]")
    let l:pattern = substitute(l:pattern, "\n$", "", "")

    if a:direction == 'gv'
        call CmdLine("Ack '" . l:pattern . "' " )
    elseif a:direction == 'replace'
        call CmdLine("%s" . '/'. l:pattern . '/')
    endif

    let @/ = l:pattern
    let @" = l:saved_reg
endfunction


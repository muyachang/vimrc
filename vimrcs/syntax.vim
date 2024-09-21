
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Shell section
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if exists('$TMUX') 
    if has('nvim')
        set termguicolors
    else
        set term=screen-256color 
    endif
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Verilog / System-Verilog
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set foldmethod=syntax

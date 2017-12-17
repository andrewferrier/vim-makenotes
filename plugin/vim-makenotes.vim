if exists('g:loaded_makenotes') || &cp
    finish
endif
let g:loaded_makenotes = 1

function! SaveNote(location)
    let title = expand(a:location) . strftime('%F') . '-' . input("Filename: ") . '.mkd.txt'
    execute 'saveas ' . title
endfunction

function! NewNote(location)
    let title = expand(a:location) . strftime('%F') . '-' . input("Filename: ") . '.mkd.txt'
    execute 'edit ' . title
endfunction

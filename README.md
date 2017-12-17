# vim-makenotes

`vim-makenotes` is a vim plugin designed to provide a way to quickly
start/save Markdown-based notes files. It provides the commands `SaveNote`,
which saves an existing file in the relevant directory with a `.mkd.txt`
extension, and `NewNotes` which opens a new file in a similar manner. All
commands add an ISO-8601 date prefix.

You might want some keybindings that look like:

    nnoremap <Leader>nd  :call <SID>NewNote('~/Desktop/')<cr>
    nnoremap <Leader>snd :call <SID>SaveNote('~/Desktop/')<cr>

## Install

Install using any standard [plugin
manager](http://vi.stackexchange.com/questions/388/what-is-the-difference-between-the-vim-package-managers).

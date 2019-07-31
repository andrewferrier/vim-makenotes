# vim-makenotes

`vim-makenotes` is a vim plugin designed to provide a way to quickly
start/save Markdown-based notes files. It provides the commands
`make_notes#SaveNote`, which saves an existing file in the relevant directory
with a `.mkd` extension, and `make_notes#NewNotes` which opens a new file in a
similar manner. All commands add an ISO-8601 date prefix.

You might want some keybindings that look like:

    nnoremap <Leader>nd  :call make_notes#NewNote('~/Desktop/')<cr>
    nnoremap <Leader>snd :call make_notes#SaveNote('~/Desktop/')<cr>

## Install

Install using any standard [plugin
manager](http://vi.stackexchange.com/questions/388/what-is-the-difference-between-the-vim-package-managers).

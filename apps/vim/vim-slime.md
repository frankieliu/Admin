# Usage of vim-slime

sends bits of code to open terminal

Try
https://github.com/jpalardy/vim-slime/blob/main/assets/doc/advanced.md

With
#%%
delimited cells!

Still need to set this up

let g:slime_target = "vimterminal"
let g:slime_cell_delimiter = "#%%"
nmap <leader>sc <Plug>SlimeSendCell

The Tmux integration seems to break some vim keys

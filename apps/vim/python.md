# add shortcut like in vs code

nmap <S-A-f> <Esc>:Autoformat<CR>:w<CR>

# running python

<C-A-n> :  opens a terminal and runs in there
<C-A-m> :  opens a terminal and runs pytest

<C-w><C-w> : to move out of terminal window
<Esc>      : to get out of terminal mode

# running like cells

> tmux
C-b % : vertical split
C-b arrow keys to move in between
C-b x : close pane
C-b c : create a new window
C-b n/p : move btw windows
C-b # : move window #
C-b : : enter command
      : kill-pane -a -t 0
      :  kill all panel except 0
      : display-panes
C-b ? : help
C-b w : navigate btw windows

right: run ipython on right side
left:  vim on your file

In python file, use:
`# %%` to mark cells to run

Send it over:
<leader>sc : to send cell to ipython

Note: ipython must have %autoindent off

Use ipython profile create and
change the setting in ipython_config.py

# running on current buffer

:!./% arg arg<CR>
imap <F5> <Esc>:w<CR>:!python %;<CR>

# Formatting and linting
## vim-format

vim-autoformat/vim-autoformat

## formaters

conda install autopep8
conda install black

## add shortcut like in vs code

nmap <S-A-f> <Esc>:Autoformat<CR>:w<CR>

## ale linter

## linters 

conda install pylint

Don't install flake8 just use pylint
conda install flake8

## specify the linter

```
let g:ale_linters = { 'python': ['pylink'] }
```


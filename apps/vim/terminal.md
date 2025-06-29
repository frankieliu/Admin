[youtube](https://www.youtube.com/watch?v=6XO97uLiYQ0&ab_channel=DongZhou)

# terminal - normal mode
C-\ C-n  (remapped in .vimrc to <Esc>

i or a to escape to terminal mode

# terminal - other windows
C-w C-w

# execution a command
C-w <enter command><CR>
C-w :b1

# sending terminal commands
:call term_sendkeys(<buffer number>, 'cmd'.'\n')

# starting the terminal

:terminal ++row=10

Gives option to start with certain number of rows

# vertical
:vert terminal

# positions

:aboveleft terminal
:leftabove terminal
:belowright terminal
:rightbelow terminal
:right terminal

# terminal size
:exec "terminal ++rows=10" | wincmd w

or 

set terminalsize=30x200

# terminal size



# executing system calls
:exe !@u
:call system(@u)

Execute current line under cursor as a command in the current shell

# execute vimscript

- yank to register
  - select region
  - yank to register a:  "ay

- execute register
  - :@a

# alternatives

1. :"<Enter>
2. <C-R>"

- whatever is yanked will be executed

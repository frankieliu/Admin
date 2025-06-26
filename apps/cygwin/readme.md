# cygstart (part of cygutils)
Allows you to open files from the command line

# about having a choice of what to open
https://unix.stackexchange.com/questions/583853/open-documents-from-windows-with-cygwin-programs-directly

# vim in cygwin terminal

https://messages.google.com/web/authentication

Add the following to .vimrc

let &t_ti.="\e[1 q"
let &t_SI.="\e[5 q"
let &t_EI.="\e[1 q"
let &t_te.="\e[0 q"
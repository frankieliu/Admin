Problem:

- delete all the space between CODE and Lorem

CODE    Lorem ipsum dolor sit amet

[remove space](https://stackoverflow.com/questions/4917059/learning-vim-best-way-to-remove-space-between-words)

Cursor is on top of CODE:
wd?\s+

w : word
d : delete
?\s+ : search backwards for spaces

Better:
e : move to end of word
l : move right one
dw : delete word while on space
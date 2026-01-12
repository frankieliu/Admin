ln -sfn /path/new_target /path/existing_link

-s symbolic link
-f force remove of existing link
-n treats the existing link as a normal file

without -n, it will create a link inside existing_link if that is a directory
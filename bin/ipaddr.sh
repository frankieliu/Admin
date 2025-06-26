ip addr | grep "inet $1" | sed -e 's/^[ \t]*//' | cut -d ' ' -f 2 | cut -d '/' -f 1

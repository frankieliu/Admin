# $(ls -lah $1 | awk '{ print $5}')
stat -c %s $1

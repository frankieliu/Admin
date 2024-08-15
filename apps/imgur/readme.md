# Meaning of @ sign in bash:

https://unix.stackexchange.com/questions/77588/passing-binary-data-to-curl-without-using-a-file

Came here looking for the same thing as OP. Haven't found an answer yet but just in case someone else finds it useful, the @ symbol can also be used with curl to send a raw bytestream via a file:

curl http://my.domain.com --data-binary @file.dat
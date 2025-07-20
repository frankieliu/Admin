# installation
1. install openssh
1. run cygwin as admin
1. run ssh-host-config
   1. Should restrict mode be used? NO
   1. answer yes for most of these
   1. CYGWIN: binmode ntsec
   1. use net start cygsshd or cygrunsrv -S cygsshd

# Android setup
1. use AndFTP in android to transfer
   1. local directory should be /storage/emulated/0/Download

 The sshd service has been installed under the LocalSystem
*** Info: account (also known as SYSTEM). To start the service now, call
*** Info: `net start cygsshd' or `cygrunsrv -S cygsshd'.  Otherwise, it
*** Info: will start automatically after the next reboot.

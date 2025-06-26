Alright let us give this a try, make a backup of your exiting vsftpd.conf file. Make the following changes:

1. Append the following to vsftpd.conf file:

Code:
virtual_use_local_privs=YES
2. Restart vsftpd service

Check and see if you are able to upload.

If it does not work, then modify the following line in vsftpd.conf file:

1. pam_service_name=virtual-ftp to pam_service_name=ftp

2. Restart vsftpd and then give it a try.

If that also doesn't work then it will be a good idea to revert to orginal config and then take a packet trace to see if there is anything in there.
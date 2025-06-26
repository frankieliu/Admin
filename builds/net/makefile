service:
	sudo aptitude install vsftpd
	sudo service vsftpd enable
	sudo service vsftpd start
vsftpd:
	sudo sed -ie 's/#write_enable=YES/write_enable=YES/g' /etc/vsftpd.conf
	sudo service vsftpd restart
sshd:
	sudo aptitude install openssh-server
	sudo service sshd enable
	sudo service sshd start

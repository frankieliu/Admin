nc -vz 10.0.0.175 631
Connection to ... port 631 [tcp/ipp] succeeded

sudo tcpdump -i any port 631
- while trying to print, look for dropped packets or retransmissions

/var/log/cups

sudo iptables -A INPUT -p tcp --tcp-flags ALL NONE -j DROP
sudo iptables -A INPUT -s 202.54.1.2 -j DROP
sudo iptables -A INPUT -s 202.54.1.3 -j DROP
sudo iptables -A INPUT -s 202.54.1.4 -j DROP
sudo iptables -A INPUT -s 202.54.1.5 -j DROP
sudo iptables -A INPUT -s 202.54.1.6 -j DROP
sudo iptables -A INPUT -s 202.54.1.7 -j DROP
sudo iptables -A INPUT -s 202.54.1.8 -j DROP
sudo iptables -A INPUT -s 202.54.1.9 -j DROP
sudo iptables -A INPUT -s 202.54.1.10 -j DROP
sudo iptables -A INPUT -s 202.54.1.11 -j DROP

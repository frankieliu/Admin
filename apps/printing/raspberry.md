# raspberry

1. http://10.0.0.175:631
2. Admin / Server
   1. Share printers connected to this system
   2. Allow printing from the internet
      1. The first box should be enough for home networks
3. Change Settings
4. Printers (tab) / specific printer
5. Admininstration dropbox / Modify Printer
6. ... / multiple steps / ... / Share This Printer [x]
7. sudo ufw allow 631/tcp
8. sudo ufw allow 631/udp
9. sudo ufw reload
10. sudo systemctl status avahi-daemon
11. suto systemctl enable --now avahi-daemon
12. 
# macos

1. System Settings / Printers & Scanners
2. Add Printer, Scanner, or Fax
3. Ubuntu printer should appear with Bonjour | IPP
4. Select it and Add
   1. macOS will usually select Generic PostScript
   2. or IPP Everywhere driver automatically
   
## manually

1. hostname -I on ubuntu, 10.0.0.175
2. Add Printer, click IP tab
3. Address: 10.0.0.175
4. Protocol: AirPrint or Internet Printing Protocal - IPP
5. Queue: printers/YOUR_PRINTER_NAME
6. Add

- use lpstat -p
- printer **HP_OfficeJet_Pro_8710** is idel. ...
  - HP_OfficeJet_Pro_8710 is the queue name
  
## drivers

Select Generic PostScript Printer
- Ubuntu already processed the job through its own drivers, the Mac just needs to send a standard format the CUPS server understands
  
## test reachability

sudo ufw status verbose
631 TCP/UDP CUPS/IPP
5353 UDP mDNS/Bonjour  - allows mac to see the printer
sudo ufw allow 5353/udp allows discovery

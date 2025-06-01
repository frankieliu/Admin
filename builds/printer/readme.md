https://support.microsoft.com/en-us/windows/share-a-printer-as-a-network-printer-c9a152b5-59f3-b6f3-c99f-f39e5bf664c3

1. Important need to set network (under Network/Wifi/Status) to **private**
2. Check file and printer sharing is enabled (Network/Adv/)
3. Share the printer (Printer/<Printer>/Manager/Sharing/), give it a name
4. On client machine add printer as:
   a. \\name_windows_server\printername
   b. \\ip_windows_server\printername
   c. http://name_windows_server/printername/.printer
   d. http://ip_windows_server/printername/.printer

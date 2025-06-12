https://support.microsoft.com/en-us/windows/share-a-printer-as-a-network-printer-c9a152b5-59f3-b6f3-c99f-f39e5bf664c3

1. Important need to set network (under Network/Wifi/Status) to **private**
2. Check file and printer sharing is enabled (Network/Adv/)
3. Share the printer (Printer/<Printer>/Manager/Sharing/), give it a name
4. On client machine add printer as:
   a. \\name_windows_server\printername
   b. \\ip_windows_server\printername
   c. http://name_windows_server/printername/.printer
   d. http://ip_windows_server/printername/.printer

# setting up duplex

1. Remove the old share:

   1. To view a list of all shared printers in Windows, you can either use the Print Management console or the Printers & Scanners settings. The Print Management console allows you to see all printers installed on a server, while the Printers & Scanners settings show printers connected to your specific computer. [1, 2]  

   1. Using Print Management: 

      1. Open Print Management: Press the Win + R keys, type printmanagement.msc, and press Enter. [1]  
      2. Navigate to Printers: Expand "Print Servers" and then expand your server name. Click on "Printers" to see the list of installed printers. [1, 3]  
      3. View Printer Properties: Right-click on a printer and select "Properties." Go to the "Ports" tab to see the list of ports and IP addresses. [1, 3]  

   1. Using Printers & Scanners Settings: 

      1. Open Settings: Press the Win + I keys to open the Settings app. 
      2. Navigate to Printers & Scanners: Click on "Devices" and then select "Printers & scanners". 
      3. View Printers: You will see a list of printers installed on your computer, including any shared printers that have been connected. [2, 2, 4, 5]  

   1. Additional Notes: 

      • If you're trying to find shared printers on a network, make sure you're on the same network as the printer and that it's been shared properly. 
      • If you're having trouble seeing a shared printer, you may need to add it manually using the "Add a printer" option in Printers & Scanners. [6]  


      [1] https://learn.microsoft.com/en-ie/answers/questions/2116358/how-to-view-computers-connected-to-shared-printers[2] https://uark.libguides.com/LibraryIT/printers[3] https://learn.microsoft.com/en-au/answers/questions/2116358/how-to-view-computers-connected-to-shared-printers[4] https://www.perfectcolours.com/blog/how-to-add-a-network-printer-step-by-step-guide/[5] https://support.microsoft.com/en-us/windows/download-and-install-the-latest-printer-drivers-4ff66446-a2ab-b77f-46f4-a6d3fe4bf661[6] https://support.microsoft.com/en-us/windows/share-a-printer-as-a-network-printer-c9a152b5-59f3-b6f3-c99f-f39e5bf664c3

1. Install Brother 2320D driver
1. Add the share


succeede
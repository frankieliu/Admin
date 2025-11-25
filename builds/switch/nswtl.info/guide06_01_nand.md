# NAND backup
Skipping this step is highly recommended! If you already have a backup, you don't need to do it again. However, make sure your backup is complete (RAW, BOOT0/1, keys).

Each console's backup and keys are unique! You won't be able to restore your console using another console's backup. Furthermore, restoring someone else's backup will result in a bricked console that can only be restored by creating your own backup. Please approach this matter responsibly.

What you will need
Freshly brewed kefir ▼
A working microSD card with at least 32 GB of free space, 64 GB for OLED, formatted as FAT32
Be sure to check your card before making a backup!
Format your memory card to FAT32
Yes, FAT32. No, there won't be any issues with games larger than 4GB.
Do this even if your memory card contains no data.
Follow these instructions exactly.
Creating a backup copy
Part I - Dumping Keys
Establish kefir ▼ according to the instructions in its repository
If you've already done it, there's no need to do it again.
Log in to hekate ▼ using an exploit supported on your console, by running the payload  payload.bin  from the kefir  .zip  archive ▼
Hold (VOL-) on the console when the kefir logo appears to enter hekate
Skip this step if you are already in hekate
Go to the “ Payloads ” menu
Select “ Lockpick_RCM.bin ”
Select “ Dump keys from SysNAND ”
Menu navigation is done with the volume buttons, and selection is done with the (POWER) button
Dumping will begin immediately
Press (POWER) to return to the main program menu
Select “ Reboot to hekate ” to boot into the firmware
Part II - NAND Backup
Method I - Using hekate
Part I - dumping the console's internal memory (NAND)
This method requires a memory card with at least 32GB of free space, or 64GB for OLED devices. If you don't have a memory card but have a smaller one, the backup will be created in parts. Once the current capacity on the card is full, a message will appear on the screen informing you to transfer the backup folder to your PC, then return the card to the console and continue creating the backup.

Refresh kefir ▼ follow the instructions from the repository if you haven't done this before
Log in to hekate ▼ using an exploit supported on your console, by running the payload  payload.bin  from the kefir  .zip  archive ▼
Hold (VOL-) on the console when the kefir logo appears to enter hekate
Skip this step if you are already in hekate
Go to menu “ Tools ” -> “ Backup eMMC ”
Select “ eMMC RAW GPP ”
Wait for the backup to complete
The backup takes about 20 minutes, depending on the speed of the memory card.
Click the “ Close ” button to return to the previous menu.
If you backed up the NAND on a new console that hasn't had any games installed on it yet, archiving the backup will give you a high-quality result.

Part I - dumping the console's internal memory (NAND)
Part II - Dumping the Boot Partitions (BOOT0/BOOT1)
Log in to hekate ▼ using an exploit supported on your console, by running the payload  payload.bin  from the kefir  .zip  archive ▼
Hold (VOL-) on the console when the kefir logo appears to enter hekate
Skip this step if you are already in hekate
Go to menu “ Tools ” -> “ Backup eMMC ”
Select “ eMMC BOOT0 & BOOT1 ”
Click the “ Close ” button to return to the previous menu.
Part II - Dumping the Boot Partitions (BOOT0/BOOT1)
Method I - Using hekate
Method II - Using a PC
NAND dump
This method is more complex than the previous one, but it doesn't require a large memory card. Backup speeds using this method will be no more than 6 MB/s.

This method only works on consoles of the first revision - Erista ▼

Turn off the console
Insert the console's memory card into the PC
Make sure you enable showing file extensions if you are on Windows.
Copy the contents of the folder  sample  from the memloader  .zip  archive to the root of your memory card.
Return the memory card back to the Switch
Copy the payload to the folder from which you transfer them to the Switch (or to the folder for launching via hekate)  memloader.bin   \bootloader\payloads 
Run the payload with Fusée Gelée  memloader.bin 
On the console screen, select  ums_eMMC.ini  and launch
To navigate through the menu use the (VOL-) and (VOL+) keys, to select - (POWER)
Please note that you selected “ums_ eMMC .ini”
Ignore files whose names begin with a period if they are present.
ATTENTION!!! If you see a dialog box during this guide asking you to format the disk, click Cancel !

![]((/assets/images/switch/screenshots/format.png)

![]((/assets/images/switch/screenshots/format_mac.png)

The console screen will remain black.
You will have several new disks
Select your operating system:

Windows
What you will need
The latest version of TegraRcmGUI
Latest version of HDD Raw Copy Tool
Installing drivers
If the drivers have already been installed, skip this part.

Run  TegraRcmGUI.exe  as Administrator
Go to the tab  Settings  and click “ Install Driver ”
Install the driver
After the driver is successfully installed, close the program.
Backup
Launch “ Device Manager ” and make sure that in the “ Disk devices ” tree a device named “ LINUX UMS DISK 0 ” appears.
If there is none there,
Remove all devices with an exclamation mark (also check the box to remove drivers)
Remove all devices labeled “ USB Download Gadget ”.
After removing the devices, select “ Actions ” -> “ Scan for hardware changes ” in the Device Manager
If after all these steps the disk still doesn't appear, turn off the Switch, reboot the PC, reinstall the drivers and run the payload again  memloader.bin  using Fusée Gelée
Run HDD Raw Copy Tool as administrator
Select “ LINUX UMS DISK 0 ” and click “ Continue ”
Double-click on the inscription “ Double-click to open file ” and save the backup with the name  rawnand 
Pay attention to the line “ File type ”, make sure it is set to Raw image
Click “ Continue ”
Click “ START ” to begin the backup.
If everything went well, the NAND dump will appear in the directory you specified. Save it in a safe place!
Windows
macOS
Launch Disk Utility and make sure that an external drive named “Linux UMS disk 0 Media” appears there.
If there isn't one, turn off the Switch and run the payload again  memloader.bin  using Fusée Gelée
In Disk Utility, right-click on “Linux UMS disk 0 Media”
Select the “Image from Linux UMS disk 0 Media” option and specify the path to save the resulting file.
The process will take some time.
If you want to restore the backup to your device, select the “Restore…” option, and in the window that appears, click the “Image…” button and specify the path to the saved file.
If everything went well, the NAND dump will appear in the directory you specified. Save it in a safe place!
macOS
BOOT0/BOOT1 dump
Do it in the same way as you did the NAND Dump , but instead of “ums_ eMMC .ini” select “ums_ boot0 .ini” for dump BOOT0 and “ums_ boot1 .ini” for dump BOOT1

Method II - Using a PC
Part III - Copying the backup to your PC
Instructions
If you are going to make EmuNAND, then copy the files, and do not move them, since we can later make EmuNAND from this backup

Insert the console's memory card into the PC
Go to the folder  sd:/switch  and copy the files  prod.keys  to  partialaes.keys  the same folder where you copied your backup.
The file  partialaes.keys  may not exist. This is normal.
Copy the folder to your PC  backup 
Zip the folder  backup  and place it in a safe place.
If you are not going to make EmuNAND, delete the folder  backup  from the memory card
In general, the backup should look something like this:

![]((/assets/images/switch/screenshots/backup.png)

A backup made on the Switch OLED will contain twice as many files, as it has twice the internal storage - 64GB.

After the console first boots into the firmware, Atmosphere will automatically create a backup of two more important files. They will be located in the folder  atmosphere/automatic_backups  . Also, move this folder to a safe location. With these files and keys, you can restore your console even without a NAND backup (but that doesn't mean you shouldn't protect it).

Instructions
Restoring a backup
Never restore someone else's backup to your console! Restoring someone else's backup will result in a brick. If you don't have your own backup, the brick will be unrecoverable.

Method I - Recovery via Hekate
On your PC, go to the folder with your backups
In the folder  backup -> ID  , create a folder  restore  and move the contents of the folder  ID  into the folder  restore 
ID - an 8-character code from “0” to “9” and from “a” to “f”
If there are no folders, for example because the backup was made via a PC, just make a backup of something small (BOOT1, for example) in Hecate and the folder will appear
In the end, everything should look something like this:  /backup/ID/restore 

![]((/assets/images/switch/screenshots/restore.png)

Move the folder  backup  to the root of your console's memory card
Log in to hekate ▼ using an exploit supported on your console, by running the payload  payload.bin  from the kefir  .zip  archive ▼
Hold (VOL-) on the console when the kefir logo appears to enter hekate
Skip this step if you are already in hekate
Go to  Tools -> Restore  and select “ Restore eMMC”
Select “ eMMC BOOT0 & BOOT1 ” to restore BOOT0 and BOOT1
Select “ eMMC RAW GPP ” to recover RAW partition
To confirm, press (POWER)
Don't forget to delete the folder from the memory card  backup  after completing the recovery and checking the console's functionality after recovery.
Method I - Recovery via Hekate
Method II - Recovery via PC
This method only works on consoles of the first revision - Erista ▼

Restoration is performed using the same programs used to create the backup, except you first select the backup file and then the drive to which it will be restored. Please note that you must restore both RAWNAND and BOOT0 and BOOT1!

If you have problems with recovery or no backup, you can try these instructions

Method II - Recovery via PC
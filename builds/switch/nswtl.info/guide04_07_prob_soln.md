Problems and their solutions
If you are a MacOS user, use these tips to avoid memory card problems.
Make backups of your saves as often as possible!
If the console freezes or shows no signs of life, turn it off by holding the (POWER) button for 30 seconds, then turn it on and forward the payload!
This section contains only the most common problems and their solutions. The section with answers to the most frequently asked questions is located here - FAQ

Problems with launching the firmware
The console is stuck on the Switch logo.
Possible solutions to the problem:

Make sure you can boot into stock mode. If so, you may have installed some system modules that are preventing booting. To do this:
Run hekate ▼ -> Payloads ->  TegraExplorer  ->  kefir-helper.te 
If the set-top box works after this, look for the problem in the installed modules.
Reinstall kefir ▼ Clean it up. To do this, delete everything from the memory card except the folder  Nintendo  and  emummc  install Kefir again.
Format your memory card to FAT32.
Reinstall kefir ▼ completely. To do this, delete everything from the memory card except the folder  Nintendo  and  emummc  (or  sxos/emunand  ) and install kefir again.
Check if the partition can be mounted  USER  . To do this:
Run hekate ▼ -> Payloads ->  TegraExplorer.bin 
Select Browse EMUMMC if EmuNAND does not start▼ or Browse EMMC if SysNAND does not start▼
Go to the USER partition . If there are no errors, then the USER partition is mounted and the problem is not there.
Restore the backup if you have one.
Perform a factory reset
Perform a firmware restore
The console is stuck on the Switch logo.
Nothing happens when I start the console / I can't turn on the console
Possible solutions to the problem:

Perhaps the console had AutoRCM installed or it died - the most comprehensive instructions on how to start a dead console
Try running hekate ▼ If this worked, you may have tried to roll back the firmware, which caused a conflict between the firmware version and the burned fuses. Try running Full Stock and updating the firmware to the latest version , or disable Emunand (hekate > emuMMC > Change emummc > Disable) and updating the firmware through the settings.
Restore the backup if you have one.
Perform a firmware restore
Nothing happens when I start the console / I can't turn on the console
After the payload is transferred and splash screens appear, the console hangs on a black screen / on the Atmosphere logo / on the Nintendo logo.
Make sure you can boot into stock mode. If so, you may have installed some system modules that are preventing booting. To do this:
Run hekate ▼ -> Payloads ->  TegraExplorer  ->  kefir-helper.te 
If the set-top box works after this, look for the problem in the installed modules.
If your card is in exFAT, format it to FAT32.
Reinstall kefir ▼ completely. To do this, delete everything from the memory card except the folder  Nintendo  and  emummc  (or  sxos/emunand  ) and install kefir again.
Check if the partition can be mounted  SYSTEM  . To do this:
Run hekate ▼ -> Payloads ->  TegraExplorer.bin 
Select Browse EMUMMC if EmuNAND does not start▼ or Browse EMMC if SysNAND does not start▼
Go to the SYSTEM partition . If there are no errors, then the SYSTEM partition is mounted and the problem is not there.
Restore the backup if you have one.
Perform a firmware restore
After the payload is transferred and splash screens appear, the console hangs on a black screen / on the Atmosphere logo / on the Nintendo logo.
When launching Emunand, I get the error "Failed to match warmboot with fuses"
Just boot into Full Stock ( hekate -> “ More Configs ” -> “ Full Stock ”), reboot and the error will disappear.

When launching Emunand, I get the error "Failed to match warmboot with fuses"
A terrifying error with white letters on a black screen after updating the firmware over the Internet.


Format your memory card to FAT32.

If that doesn't help, reinstall kefir. ▼ Clean it up. To do this, delete everything from the memory card except the Nintendo folder and emummc (or sxos/emunand) and reinstall Kefir.

A terrifying error with white letters on a black screen after updating the firmware over the Internet.
After starting the console, an error appears on a purple background with the inscription **Error Code** and the error number
Pay attention to the numbers in the second line after Title: . These numbers indicate which title caused the error and is preventing the console from loading. If the title number is not  010000000000000D  , then go to the folder  atmosphere/contents  (  atmosphere/titles  on an atmosphere lower than 0.10.0) and delete the folder with the number indicated on your console's screen in the second line. If the title number is  010000000000000D  , then the error is most likely caused by some homebrew running in applet mode and running out of memory.



After starting the console, an error appears on a purple background with the inscription **Error Code** and the error number
When I launch the firmware, I get the error "Fatal Error: [NXBOOT]"
Refresh kefir ▼

When I launch the firmware, I get the error "Fatal Error: [NXBOOT]"
Problems launching games
When I launch games in emuand, an annoying window pops up about cloud saving.
If you missed this step and had cloud saves enabled, an error will occur in Emunand when launching games. To fix this, delete the account causing the error in Emunand via DBI using Tools > Delete account , then create a new one with the same name.

When I launch games in emuand, an annoying window pops up about cloud saving.
I can't use cartridges in EmuNAND, although everything works in SysNAND
For proper operation of the cartridges, SysNAND and EmuNAND must be on the same firmware version. If this is not the case, update EmuNAND . If this does not help, make sure NoGC is disabled in Hekate ( Options -> Auto NoGC -> OFF ).

I can't use cartridges in EmuNAND, although everything works in SysNAND
After starting the console, an error appeared on a black background with the inscription "**Panic occurred while running Atmosphere**".
Refresh kefir ▼ If kefir is updated ▼ If this doesn't help, pay attention to the numbers in the second line after Title: . These numbers indicate which title caused the error and is preventing the console from loading. If the title number is not  010000000000000D  , then go to the folder  atmosphere/contents  (  atmosphere/titles  on an atmosphere lower than 0.10.0) and delete the folder with the number indicated on the second line on your console's screen. If the title number is  010000000000000D  , then the error is most likely caused by some homebrew running in applet mode and lacking memory. If the title number is  010000000000001F  , remove the cartridge from the console. Keep emulator and sysnand on the same firmware version to avoid such problems in the future.



After starting the console, an error appeared on a black background with the inscription "**Panic occurred while running Atmosphere**".
I tried to install a game, but the installation froze. The game didn't appear in the menu, but it was taking up space. How do I uninstall it?
Launch DBI and select " Clean Orphaned Files ." All files that aren't referenced in the system database will be deleted. Important: Run DBI only in applet mode , and the kefir must be fresh. Otherwise, the magic won't work.

I tried to install a game, but the installation froze. The game didn't appear in the menu, but it was taking up space. How do I uninstall it?
I can't install games to NAND.
It looks like you're using EmuNAND and the old kefir ▼ . Update it.

I can't install games to NAND.
Some games fail to launch with the error "The application has closed because an error has occurred."
ReverseNX may be installed. Uninstall it. Also, try turning off the console and running Hekate. ▼ , go to Payloads and select  fusee.bin  , then immediately press and hold both volume buttons until you enter recovery. Then, turn off the console while holding the power button. Then turn it on as usual.

Some games fail to launch with the error "The application has closed because an error has occurred."
None of the games launch. When I launch them, they check, then they give an error.
You may have deleted tickets for all your games. To reinstall tickets, run tinfoil , go to the " Tickets " tab, and do the following for each game:

In the game, press (Y)
Press (R)
Enable the “ Install Ticket ” option
Click “ Start Installation ”
None of the games launch. When I launch them, they check, then they give an error.
I accidentally deleted game tickets in tinfoil
To reinstall tickets, run tinfoil , go to the “ Tickets ” tab, and do the following for each game:

In the game, press (Y)
Press (R)
Enable the “ Install Ticket ” option
Click “ Start Installation ”
I accidentally deleted game tickets in tinfoil
After updating the firmware, some games stopped running.
Most likely, you're having trouble running games converted from XCI using an older version of n4xci (you may have downloaded a pre-converted image from any source; the source rarely indicates that the game is a converted version). To resolve this issue, download the latest version of n4xci (download 4nxci-vX.XX_GUI .zip ). Dump the keys on your current firmware and place them in the same folder as the program. Don't forget to specify the path in the Keyset File field . The converted NSP image should now work.

After updating the firmware, some games stopped running.
Problems with files/memory card
I can't transfer a game larger than 4GB onto my card. What should I do?
There's no reason to put games on a memory card. Install them directly using the recommended MTP method via DBI!

I can't transfer a game larger than 4GB onto my card. What should I do?
After installing a modification or translation on the game, the modification or translation does not work
Restart your console. If that doesn't help, correct the attributes.

In hekate , go to the Tools menu , switch to the Arch bit • RCM • Touch • Partitions tab (at the bottom of the screen), select Fix Archive Bit
To access Hekate if you're not already in it, reboot your console. To do this, hold the power button for 5 seconds while in custom firmware, then select Power Options -> Restart . When the kefir splash screen appears, press (VOL-) (the volume down button).
Once you've finished fixing the attributes, click Close in the upper right corner.
Select Home -> Launch -> YOUR_OS_NAME to boot back into the firmware
After installing a modification or translation on the game, the modification or translation does not work
On MacOS, I transferred files to the memory card, but DBI\tinfoil\GoldLeaf doesn't see them.
The attributes need to be corrected.

In hekate , go to the Tools menu , switch to the Arch bit • RCM • Touch • Partitions tab (at the bottom of the screen), select Fix Archive Bit
To access Hekate if you're not already in it, reboot your console. To do this, hold the power button for 5 seconds while in custom firmware, then select Power Options -> Restart . When the kefir splash screen appears, press (VOL-) (the volume down button).
Once you've finished fixing the attributes, click Close in the upper right corner.
Select Home -> Launch -> YOUR_OS_NAME to boot back into the firmware
On MacOS, I transferred files to the memory card, but DBI\tinfoil\GoldLeaf doesn't see them.
The set-top box does not recognize the exFAT card and asks to update the firmware.
You need to install the exFAT driver. To do this, perform a secure firmware update . This should be done even if you already have the latest version of the firmware being hacked! A second update will simply install the missing driver. In general, switch to FAT32!

The set-top box does not recognize the exFAT card and asks to update the firmware.
Constant errors, games crash while running
Check your SD card for errors, then install kefir via script.

Constant errors, games crash while running
Problems after copying files to a card on a Mac/The Homebrew Menu/Tinfoil is empty, although everything is on the card
Make sure your card name is not  Switch  in any combination of lowercase or uppercase letters.
In hekate , go to the Tools menu , switch to the Arch bit • RCM • Touch • Partitions tab (at the bottom of the screen), select Fix Archive Bit
To access Hekate if you're not already in it, reboot your console. To do this, hold the power button for 5 seconds while in custom firmware, then select Power Options -> Restart . When the kefir splash screen appears, press (VOL-) (the volume down button).
Once you've finished fixing the attributes, click Close in the upper right corner.
Select Home -> Launch -> YOUR_OS_NAME to boot back into the firmware
If you are a MacOS user and the above method did not help you, run the following command:  sudo chflags -R arch /Volumes/<name of SD card> 
Problems after copying files to a card on a Mac/The Homebrew Menu/Tinfoil is empty, although everything is on the card
Correcting archive attributes
In hekate , go to the Tools menu , switch to the Arch bit • RCM • Touch • Partitions tab (at the bottom of the screen), select Fix Archive Bit
To access Hekate if you're not already in it, reboot your console. To do this, hold the power button for 5 seconds while in custom firmware, then select Power Options -> Restart . When the kefir splash screen appears, press (VOL-) (the volume down button).
Once you've finished fixing the attributes, click Close in the upper right corner.
Select Home -> Launch -> YOUR_OS_NAME to boot back into the firmware
Correcting archive attributes
Errors occur when installing NSP files
Give files a short name
Refresh kefir ▼
If it doesn't help, redownload the files; they may not have been downloaded completely.
On the switch, through hekate, in the tools tab , select Unset archive bit
Errors occur when installing NSP files
Problems with Homebrew or parental controls
I forgot to disable parental controls before updating the firmware, and now I can't! When I enter the parental controls menu, the atmosphere crashes. What should I do?
Remove parental controls

I forgot to disable parental controls before updating the firmware, and now I can't! When I enter the parental controls menu, the atmosphere crashes. What should I do?
After launching Homebrew, an error appears on a purple background with the inscription Error Code and the error number.
You're launching the program from Applet mode, that is, from Albums, whereas you should do it in Tile mode, that is, through a game or forwarder. The correct way to launch HBL is described in the instructions . Applet mode doesn't allow the program to fully access the console's RAM, which is why errors occur. If the title number is [unclear]  010000000000000D  , then the error is most likely caused by a homebrew application running in applet mode and running out of memory. If the title number is [unclear]  010000000000001F  , remove the cartridge from the console. Keep emulator and sysnand on the same firmware version to avoid such problems in the future. Also, correct the attributes (as described on this page).

After launching Homebrew, an error appears on a purple background with the inscription Error Code and the error number.
Error when launching Homebrew from the console's main menu via the forwarder
You need to update the forwarder

Error when launching Homebrew from the console's main menu via the forwarder
Hardware problems
Joy-Cons in Emulator don't work separately from the console, although they do work in the stock Sysnand.
Sync Joy-Cons with Sysnand
Copy Syncfixv2.te to the root of your memory card.
Download the TegraExplorer payload and place it in the folder  bootloader/payloads 
Insert the card into Switch and go to Hekate.
Launch  TegraExplorer.bin  from the “ payloads ” tab, if you see “ Grabbing keys from prod.keys… Done *”, press any key
Cross the path  [SD:/] SD CARD -> Syncfix.te -> Launch Script 
After the script finishes running, reboot the console.
Joy-Cons in Emulator don't work separately from the console, although they do work in the stock Sysnand.
Battery displays incorrect charge / battery calibration
A: Comprehensive article

Battery displays incorrect charge / battery calibration
Problems with the system
I downloaded the firmware, how can I delete it without updating?
Launch DBI and select " Clean Orphaned Files ." All files that aren't referenced in the system database will be deleted. Important: Run DBI only in applet mode , and the kefir must be fresh. Otherwise, the magic won't work.

I downloaded the firmware, how can I delete it without updating?
I have the latest firmware, but when I launch some games, I see a "*system update available*" message. Why is this happening?
This refers to a game update. Download it and install it like a regular game. You can also reset the version check via DBI. Launch the program, select Browse installed applications , press (Y) to select all items, press (A), and then select Reset required version . DBI must be launched from applet mode , and the kefir must be fresh. Otherwise, the magic won't work.

I have the latest firmware, but when I launch some games, I see a "*system update available*" message. Why is this happening?
I can't delete a user.
DBI > Tools > Delete account

I can't delete a user.
Time is not synchronized
Automatic time synchronization is disabled in Kefir starting with version 660 to save battery in sleep mode. To synchronize, use the QuickNTP module for Tesla (included in Kefir). Launch Tesla by simultaneously pressing (L) + D-pad down + (R3), select QuickNTP, and press (A). If the time doesn't synchronize, use the D-pad (LEFT-RIGHT) to select a different synchronization server.

Time is not synchronized
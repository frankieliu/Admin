Installing games, DLC, and updates
You can find most of the answers to typical questions in the FAQ section.
If something goes wrong, don't panic! First, read the Problems and Solutions section.
If you are a MacOS user, use these tips to avoid memory card problems.
Make backups of your saves as often as possible!
If the console freezes or shows no signs of life, turn it off by holding the (POWER) button for 30 seconds, then turn it on and forward the payload!
Video instructions
ATTENTION!!! We do not recommend blindly following the video instructions! Use them only as a guide! The text guide is constantly updated. It's impossible to keep track of all the updates and update the video guide each time! Therefore, the text guide will always be more accurate and up-to-date than the video!


ATTENTION!!! We do not recommend blindly following the video instructions! Use them only as a guide! The text guide is constantly updated. It's impossible to keep track of all the updates and update the video guide each time! Therefore, the text guide will always be more accurate and up-to-date than the video!


Video instructions
Important information
Games, DLC and updates are installed the same way and in any order
Don't go online with a pirated game running - it could get you banned.
You won't be able to access Atmosphere online. It's specifically blocked. To access the console's online features, use Full Stock.
You can use a special method for online play
What order should I install games in and a little about conventions?
As a rule, in addition to the game, you need to install the latest patch and DLC, if any. Regarding the patch, you only need to install the latest one; anything that came before it doesn't need to be installed. The latest patch can always be found in tinfoil.

Game Naming Standards
NSP - dumps of games from the eShop.
NSZ - dumps of games from the eShop, but packaged in a special way (archived)
XCI - bit-by-bit cartridge dumps. PC disk images were previously created in a similar manner. For use with Atmosphere, install using DBI (see below).
Nowadays games are named according to this unspoken rule -  название_игры  [  titleid_игры  ][  версия_игры  ].  расширение 

For example  FINAL FANTASY X X-2 HD Remaster [0100BC300CB48000][v0].nsp 

 FINAL FANTASY X X-2 HD Remaster  - game name  0100BC300CB48000  - Title ID (need to know to use modifications via LayeredFS) ▼ )  v0  - the game version.  v0  Always refers to the game itself,  vXXXXXX  always a patch. The higher the version number, the newer the patch.

There are also constructions like this  Touhou Kobuto V Burst Battle [010010F004022000] + (v196608 UPD) + (2 DLC).xci  . You can install such games using DBI (see below).

Where to get games and updates
Switch Torrent library
Installing games
What you will need
Custom firmware configured and working
The latest version of the console's system software
The latest version of kefir ▼
Games
Select one of the installation methods
Launch Homebrew Launcher
Method I - Installation via USB (recommended)
Installing games
Preparatory work in MacOS
Install OpenMTP if your MacOS version is 10.13 or later.
There's a quirk where the Mac recognizes the Nintendo Switch as a device that should charge it, not the other way around. Because of this, the MTP server won't start, and you can't do anything about it. How can you get around this? Connect the cable to the "sleeping" console. Then the connection will be correct (the Mac will charge the Switch, not the other way around), and you can follow the standard setup procedure. Thanks to Misha Naumchuk.

Preparatory work in MacOS
Connect the console to the PC using a USB cable (Type-C)
On your console, launch DBI using the Homebrew Launcher.
Click “ Run MTP Responder ”
A new MTP device will be mounted to your PC.
Open the “ Switch ” device that appears on your computer (in “This PC” on Windows)
Copy the games you want to install to the “ MicroSD install ” or “ NAND install ” folder, depending on where you want to install the game
Please remember that games in NSZ format take up more space after installation than the NSZ file itself.
During the installation of the NSZ file, the console screen will display the size that the game will occupy after installation.
Once the installation is complete, click (X) to stop the MTP server and unmount the MTP device.
Click (+) to close DBI
Method I - Installation via USB (recommended)
Method II - Installation from USB drive
You can download games in .NET  .nsp  ,  .nsz  .NET , and .NET format  .xci  , connect the drive to the console via an OTG cable, or to a docking station, and install games directly from the drive! The drive must be formatted to the exFAT file system.

Connect the USB drive with games to the console
You can connect it directly to the set-top box using an OTG cable, or insert the drive into the dock when the set-top box is in it.
Launch DBI via Homebrew Launcher
Select “ Browse USB0 Drive ”
Go to the folder where the games in the format are located  .nsp  ,  .nsz  or  .xci 
The guide recommends using a folder  games  for organization. However, the folder can be any size.
Select the games you want to install using the (X) button
Press (Y) if you want to select all or invert the selection
Press (A) to start installation
Select the required options in “ Install options ”
Install target - installation location. NAND or SD card correspond to internal memory and memory card.
Delete after install - Yes will allow the program to automatically delete files after they are installed.
Select Start install to begin the installation.
Press (B) to exit the installer to the folder
Press (+) to close the program
Method II - Installation from USB drive
Method III - Installation from a memory card
This method is not recommended, as frequently inserting and removing the card from the console can be dangerous and can damage the slot. You can move files to the memory card using DBI's built-in MTP server.

Copy the games you want to install to a folder  games  on your memory card. To a memory card in FAT32 format, which is the format recommended in this guide, to copy a game larger than 4GB, you will have to split it in a special way using the NSPsplitty program.
Launch DBI via Homebrew Launcher
Select “ Browse SD Card ”
Go to the folder where the games in the format are located  .nsp  ,  .nsz  or  .xci 
The guide recommends using a folder  games  for organization. However, the folder can be any size.
Select the games you want to install using the (X) button
Press (Y) if you want to select all or invert the selection
Press (A) to start installation
Select the required options in “ Install options ”
Install target - installation location. NAND or SD card correspond to internal memory and memory card.
Delete after install - Yes will allow the program to automatically delete files after they are installed.
Select Start install to begin the installation.
Once the installation is complete, you can close the program by pressing the (HOME) button.
Method III - Installation from a memory card
Method IV - Installing games, DLC, and updates via the Internet directly on the console (Tinfoil)
With tinfoil, games can be installed directly from a remote internet server, which is constantly updated by the community.

More detailed instructions can be found here

Method IV - Installing games, DLC, and updates via the Internet directly on the console (Tinfoil)
Use of translations and modifications
For translations to work correctly, the LayeredFS module must be active.▼ Typically, the module is activated by default. In Atmosphere, LFS files need to be placed in the  atmosphere/contents/  .

You can also use DBI to install modifications:

Connect the set-top box in MTP mode via DBI
Go to Installed Games , in the folder with the name of your game
Go to the Mods & Cheats folder
Place your mod in the Mods & Cheats folder
Be careful , you need to copy not the folder with the game's title ID, but its contents! For example, you downloaded the translation for the game Cadence of Hyrule as an archive  Cadence of Hyrule.rar  . Inside this archive, you will see a folder with the game's Title ID -  01000B900D8B0000  . You need to unzip the archive, go to the folder  01000B900D8B0000  , and copy the entire contents of the folder to Mods & Cheats ! Not the folder itself  01000B900D8B0000  , but everything inside it! In this example, the folder  romfs 
To install a translation, follow the instructions that come with each translation.

After installing the translation, be sure to correct the attributes in the copied files:

In hekate , go to the Tools menu , switch to the Arch bit • RCM • Touch • Partitions tab (at the bottom of the screen), select Fix Archive Bit
To access Hekate if you're not already in it, reboot your console. To do this, hold the power button for 5 seconds while in custom firmware, then select Power Options -> Restart . When the kefir splash screen appears, press (VOL-) (the volume down button).
Once you've finished fixing the attributes, click Close in the upper right corner.
Select Home -> Launch -> YOUR_OS_NAME to boot back into the firmware
Useful links
Emulate Amiibo with the emuiibo module
Linking your console account to your Nintendo Account

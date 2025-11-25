Launching Homebrew Launcher
You can find most of the answers to typical questions in the FAQ section.
If something goes wrong, don't panic! First, read the Problems and Solutions section.
If you are a MacOS user, use these tips to avoid memory card problems.
Make backups of your saves as often as possible!
If the console freezes or shows no signs of life, turn it off by holding the (POWER) button for 30 seconds, then turn it on and forward the payload!
Homebrew Launcher (hbl) is a launcher for custom applications on the Switch. Launching is done through a modified Albums app or a forwarder.

![]((/assets/images/switch/screenshots/gallery.jpg)

Homebrew runs in two modes when launched via the Homebrew Launcher (HBL): applet mode and title mode. In the first mode, the application has access to only 400MB of the console's memory, while in the second mode, it has access to all available memory (4GB). Some applications, such as Checkpoint, Edizon, and Tinfoil, won't run in applet mode because they require all available memory (some for cheat searches, others due to poor optimization). To launch HBL in title mode in Atmosphere, you need to launch the game while holding down the (R) key (holding the button until HBL launches). Alternatively, you can use a forwarder. In the case of SX OS, launching Albums will automatically launch their proprietary Homebrew Launcher in title mode.

What you will need
Launched CFW
The latest version of kefir ▼
Preparatory work
Turn off your Switch and insert its memory card into your PC.
Establish kefir ▼ , if you haven't done it yet
Insert the memory card into the console and launch the selected custom ▼
Working with HBL
To launch in applet mode, launch Albums with the (A) key, holding the (R) key until the menu launches.

![]((/assets/images/switch/screenshots/gallery.jpg)

To launch in title mode, launch any game and hold down the (R) key until the menu opens.
You can install a forwarder to launch hbmenu in title mode from the console's main menu. It's located in the folder  games 
To install homebrew apps, simply copy the file  .nro  to a folder  /switch/  on your SD card.
Use DBI to copy Homebrew in MTP mode. To do this, connect your console to your PC with a cable, launch DBI, and press (X) in the program's main menu.
For a list of available apps, visit the Switch Appstore.
If the list of applications is empty, remove archive attributes from the files:

Make sure your card name is not  Switch  in any combination of lowercase or uppercase letters.
In hekate , go to the Tools menu , switch to the Arch bit • RCM • Touch • Partitions tab (at the bottom of the screen), select Fix Archive Bit
To access Hekate if you're not already in it, reboot your console. To do this, hold the power button for 5 seconds while in custom firmware, then select Power Options -> Restart . When the kefir splash screen appears, press (VOL-) (the volume down button).
Once you've finished fixing the attributes, click Close in the upper right corner.
Select Home -> Launch -> YOUR_OS_NAME to boot back into the firmware
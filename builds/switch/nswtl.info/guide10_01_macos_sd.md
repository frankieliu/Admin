Using a Memory Card in MacOS
You can find most of the answers to typical questions in the FAQ section.
If something goes wrong, don't panic! First, read the Problems and Solutions section.
If you are a MacOS user, use these tips to avoid memory card problems.
Make backups of your saves as often as possible!
If the console freezes or shows no signs of life, turn it off by holding the (POWER) button for 30 seconds, then turn it on and forward the payload!
It is not recommended to use a Switch memory card with MacOS. This is because MacOS creates a large number of meta files and folders on the memory card and can also change the attributes of folders and files on your memory card without your permission, thereby rendering it partially or completely inoperable. This can result in games or applications that won't display or simply won't launch.

To minimize damage, it is recommended to use Windows virtual machines or the following applications and scripts:

Clean My Drive 2
This application automatically removes all Mac junk when you remove any USB drive.

SDCard cleanup script for for MacOS users
Script functions:
Disabling and removing Spotlight indexing
Deleting dot files
Removing dot underbar files
Removing traces of fsevents
Correcting flags on all map directories except  Nintendo  and  Emutendo  (as this can corrupt installation files and lead to damage to installed games/tickets)
Removing the memory card after finishing work (optional)
Installation:
Place the script in your favorite directory. It's recommended to use  /usr/local/bin  , as it's automatically placed in your system path.

Usage:
After completing all operations on the memory card, run the script by double-clicking it or via the terminal. The first time you run it, the program will prompt you for your card's system name. After that, the program will remember it and be able to find it automatically. If you need to reset this setting because you changed the card's name, delete the file  .switch-eject.conf  that will be created in the HOME directory, or run the script via the terminal using the flag  -c  .

You can also use a flag  -e  in the terminal to automatically extract when finished. If you want the script to always perform auto-extraction, change line 71 from  [ ! -z "${e}" ] && echo "Ejecting ${VOL}" && sudo umount ${VOL}  to  echo "Ejecting ${VOL}" && sudo umount ${VOL} 

Translated by Deniss Ivanjuk

Clearing attributes
Launch the console while holding the volume down button to enter hekate ▼
In hekate , go to the Tools menu , switch to the Arch bit • RCM • Touch • Partitions tab (at the bottom of the screen), select Fix Archive Bit
To access Hekate if you're not already in it, reboot your console. To do this, hold the power button for 5 seconds while in custom firmware, then select Power Options -> Restart . When the kefir splash screen appears, press (VOL-) (the volume down button).
Once you've finished fixing the attributes, click Close in the upper right corner.
Select Home -> Launch -> YOUR_OS_NAME to boot back into the firmware
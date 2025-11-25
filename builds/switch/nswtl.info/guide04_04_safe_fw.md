Safe firmware update
You can find most of the answers to typical questions in the FAQ section.
If something goes wrong, don't panic! First, read the Problems and Solutions section.
If you are a MacOS user, use these tips to avoid memory card problems.
Make backups of your saves as often as possible!
If the console freezes or shows no signs of life, turn it off by holding the (POWER) button for 30 seconds, then turn it on and forward the payload!
The following instructions are suitable for updating the system software in Atmosphere, that is, in pirated firmware, regardless of whether it is in SysNAND ▼ Do you have it installed, or is it in EmuNAND? ▼ If you need to update the system software in the official firmware, you can do so through the console's System Settings , the official method. Keep in mind that if you have AutoRCM installed , updating the firmware using the official method will remove it. To keep it, update through Semi-Stock via Daybreak using the method described below, or through the settings. This is safe.

Select the exploit you use to activate the hack
Fusée Gelée involves hacking through a hardware vulnerability. If you use a host to run the firmware ▼ , then you definitely have Fusée Gelée
Caffeine involves hacking through a software vulnerability in the browser. If you launch the browser to launch the hack, then you definitely have Caffeine.
If you don't know or aren't sure how exactly your console was hacked, ask the technician who hacked it. Otherwise, try booting the console without a memory card. If the console doesn't load the firmware without the card, but displays some variation of the "NO SD" splash screen, then the console has been chipped.


Frozen Rocket

Chiped console

Caffeine
Important information
This guide also applies to downgrading the firmware. Please note that if you downgrade the firmware, there's a chance the downgraded firmware won't boot. In this case, you'll need to restore the firmware manually . Be sure to back up your data before downgrading!

Be sure to follow the instructions exactly as written: update Kefir first, then update the system software! Otherwise, the set-top box simply won't start. If, for some strange reason, you updated the system software but not Kefir, update Kefir!

Theoretical part
If you want to get exFAT support▼ or SDXC ▼ , follow this guide completely, even if you already have the latest firmware. Steps for activating exFAT ▼ , SDXC ▼ And the firmware upgrade process is identical! Yes, you need to do this, even if you already have 20.4.0.

When updating to certain firmware versions (1.0.0, 2.0.0, 5.0.0, 6.0.0, 6.2.0, 7.0.0), the console burns special fuses on the chip to track the system software version on your console. During normal firmware installation, the console checks the number of burned fuses. If this number is greater than required for the firmware update, the console recognizes that you are attempting to install a firmware version lower than the one previously installed and will not allow it. If the number of burned fuses is lower than required by the firmware update, the update is allowed, and as many fuses as necessary are burned to match the number specified in the firmware. Therefore, if you officially updated to 20.4.0, your console will have burned 12 fuses. If you try to restore a backup, say, made on firmware 8.1.0, which requires 10 fuses to operate (and you have burned out 12), the set-top box will understand this and the official firmware will not start!

The number of blown fuses doesn't matter for custom firmware. You can roll back to any firmware version provided you use a custom bootloader. The official firmware won't boot if the installed firmware version is lower than the fuse count. If it's higher, OFW will blow the fuses to match the current firmware version.

Using these instructions, you can change the version of your software to any version, not just 20.4.0.

What you will need
The latest version of kefir ▼
Firmware 20.4.0
Memory card
Instructions
Part I - NAND Backup
Skip this part if you already have a backup!

If there is no backup, this part must be done !

Create a backup of the console's NAND and store it in a safe place.
Part II - Preparing for the Upgrade
Important information!! Use memory cards with the FAT32 file system only!

Turn off your Switch and insert its memory card into your PC.
Important! Before updating, please go to the folder  atmosphere/contents  and delete the following folders from your memory card, if any:
 0100000000001000 
 0100000000001013 
 0100000000000352 
Establish kefir ▼ , if you haven't done it yet
If your system software version is 1.0.0, delete the folders  \atmosphere\exefs_patches  and  \atmosphere\kip_patches\fs_patches  :
After you have successfully updated your system software, be sure to install kefir again. ▼
Unzip the archive  20.4.0.zip  to a folder  firmware  on your console's memory card (if you don't have one, create one)
Once again, this is a firmware archive . Not a zip archive! You can always download the latest firmware here. You need to copy the contents of the archive, not the actual archive itself .
Alternatively, you can download the latest firmware archive directly from your console using the Kefir Updater app. To do this, launch HBL from the game, select the Kefir Updater app , go to the " Download Firmware " menu, and select the desired version. Press (A) and then click " Continue " to begin downloading the firmware. The program will automatically download the selected firmware version and unzip it to a folder  firmware  .
Insert the memory card back into the console
Part III - Firmware Update
Run custom ▼
If you see a black screen with an error after the Nintendo logo, it means you don't have the exFAT drivers installed and you ignored the FAT32 formatting of the memory card that you should have done above.
Open Homebrew Launcher
Launch Daybreak and select Install
Go to the folder  firmware  where the 20.4.0 firmware copied earlier is located and press (A)
If you can't navigate to a folder (the folder appears as a file), it means your folder has invalid attributes (usually archive). Fixing these is described in the FAQ or the "Problems and Solutions" section.
Wait until the firmware is processed and click “ Install ” to begin the installation.
After the installation is complete, click “ Reboot ” to reboot, or “ Shutdown ” to turn off the set-top box.
You can delete the 20.4.0 firmware folder from your memory card. We don't need it anymore.

Important to know
If after flashing the firmware you are prompted to update the controllers, do so.
If you have a black screen after the Nintendo logo after updating, update kefir ▼
If this does not help, please read the Problems and Solutions and FAQ sections carefully.
If the set-top box doesn't boot after flashing the firmware (for example, it crashes with an error), restore the backup or restore the firmware manually.
Possible errors
When launching Emunand, I get the error "Failed to match warmboot with fuses"
Press the (POWER) button to start the firmware and update EmuNAND ▼ to the current version of the system software

When launching Emunand, I get the error "Failed to match warmboot with fuses"
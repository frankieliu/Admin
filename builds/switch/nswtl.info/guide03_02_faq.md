# Frequently Asked Questions
This section contains answers to the most frequently asked questions. The section containing the most common problems and their solutions is located here - Problems and Solutions

Feel free to search for this section. To do this, press Ctrl+F.

# Too many unfamiliar words - I don't understand anything!
A: Study the glossary

Too many unfamiliar words - I don't understand anything!

# Correcting archive attributes
1. In hekate , go to the Tools menu , switch to the Arch bit • RCM • Touch • Partitions tab (at the bottom of the screen), select Fix Archive Bit
   - To access Hekate if you're not already in it, reboot your console. To do this, hold the power button for 5 seconds while in custom firmware, then select Power Options -> Restart . When the kefir splash screen appears, press (VOL-) (the volume down button).
2. Once you've finished fixing the attributes, click Close in the upper right corner.
3. Select Home -> Launch -> YOUR_OS_NAME to boot back into the firmware
Correcting archive attributes

# What is Tesla Menu Overlay and how to use it?
What is Tesla Menu Overlay and how to use it?

What is Tesla Menu Overlay and how to use it?

# Is it possible to get better performance/overclock the Switch?
Use 4IFIR

Is it possible to get better performance/overclock the Switch?

# Using Chiaki and Remote Play to Stream Games from PS4 to Switch
Using Chiaki and Remote Play to Stream Games from PS4 to Switch

Using Chiaki and Remote Play to Stream Games from PS4 to Switch

# What is kefir?
A: In the context of this guide, a collection consisting of the selected custom ▼ , the necessary programs and scripts that will install everything correctly. The kefir composition and installation instructions can be found in its repository.

What is kefir?

# Can any Switch be flashed?
Currently, all Nintendo Switch consoles can be flashed. However, depending on the console's revision and the presence of vulnerabilities, flashing methods may vary. Therefore, the first step is to determine which method is right for you.

Nintendo Switch
Nintendo Switch
Nintendo Switch Lite / OLED
Nintendo Switch Lite / OLED
Can any Switch be flashed?

# Does local multiplayer work?
A: Yes

Does local multiplayer work?

# Is the connection to the TV working? Dock?
A: Yes

Is the connection to the TV working? Dock?

# I already flashed the console, but I still don't understand how to use it.
A: Please follow these instructions.

I already flashed the console, but I still don't understand how to use it.
Can you play while charging?
A: Yes

Can you play while charging?
What won't work?
A: Everything will be fine. Everything is the same as on the official firmware.

What won't work?
My switch has firmware version XXX, will I be able to flash it?
A: Check it out

My switch has firmware version XXX, will I be able to flash it?
Do I need to solder anything to use the hack?
A: Most consoles require chip installation. If you don't have sufficient soldering experience, it's best to contact a specialist or purchase a pre-chipped console. Here's a list of specialists who can help with chip installation.

Do I need to solder anything to use the hack?
Does this mean that every time I reboot the console I'll have to start the hack again?
A: No. After a reboot, the console will still reboot into the custom mode. For consoles flashed with Fusée Gelée, the payload will reset after each cold boot.▼ You'll need to re-pass it. This isn't necessary for chipped consoles, since the payload is passed through the chip itself.

Does this mean that every time I reboot the console I'll have to start the hack again?
Is it possible to remove the memory card while the console is on?
A: No. Restart the console through the power menu (hold the (POWER) button -> Power Options -> Restart ) to enter hekate ▼ From there, you can safely remove the card from the console. In order to remove it from Hekate ▼ Run the firmware again, go to Launch -> Atmosphere .

You can also connect the set-top box to your PC with a cable, launch DBI, and press (X). The computer will detect the set-top box as an MTP device, and you'll be able to access your files on the memory card.

Is it possible to remove the memory card while the console is on?
JoyCon is asking for a firmware update. Is this possible?
A: Yes

JoyCon is asking for a firmware update. Is this possible?
Which is better FAT32 or exFAT?
A: Detailed answer

The short answer is that FAT32 is much more reliable and gentler on the memory card on the Switch. However, you won't be able to transfer files larger than 4GB to a FAT32 card. Any games larger than that will have to be installed via USB or transferred to the console via MTP using tinfoil or DBI.

To format a memory card, follow these instructions.

Which is better FAT32 or exFAT?
The set-top box does not recognize the exFAT card and asks to update the firmware.
A: You need to install the exFAT driver. To do this, perform a secure firmware update . This should be done even if you already have the latest version of the firmware being hacked! A second update will simply install the missing driver.

Please remember that the recommended file system for working with Switch is still FAT32 .

To format a memory card, follow these instructions.

The set-top box does not recognize the exFAT card and asks to update the firmware.
I have the latest firmware, but when I launch some games, I see a "*system update available*" message. Why is this happening?
A: This refers to a game update. Download it and install it like a regular game. You can also reset the version check through DBI. Launch the program, select Browse installed applications , press (Y) to select all items, press (A), and then select Reset required version . DBI must be launched from applet mode , and the kefir must be fresh. Otherwise, the magic won't work.

I have the latest firmware, but when I launch some games, I see a "*system update available*" message. Why is this happening?
What do you need to use the hack?
A: The switch itself, a memory card, a paper clip, and a host ▼ - a device (PC/Android/iOS with jailbreak/dongle) for launching the hack on consoles affected by the Fusée Gelée vulnerability.

The switch itself, a memory card, and an installed chip for consoles with a closed Fusée Gelée vulnerability

Read more - Existing hacking methods

What do you need to use the hack?
Is it possible to install amateur translations?
A: Yes

Is it possible to install amateur translations?
Will I be able to install digital releases/DLC/updates?
A: Yes. You can play cartridge-based games too. You can also play DLC and updates.

Will I be able to install digital releases/DLC/updates?
Is it possible to launch games that require a linked account without linking an account?
A: Please follow these instructions.

Is it possible to launch games that require a linked account without linking an account?
The game won't uninstall after installation, and I can't uninstall it through NX-shell either.
A: 1. In Hekate , go to the Tools menu , switch to the Arch bit tab • RCM • Touch • Partitions (at the bottom of the screen), select Fix Archive Bit * To get into Hekate, if you are not in it, reboot the set-top box. To do this, hold the power button for 5 seconds while in the custom firmware, then select Power Options -> Reboot . When the kefir splash screen appears, press (VOL-) (volume down button)

Once you've finished fixing the attributes, click Close in the upper right corner.
Select Home -> Launch -> YOUR_OS_NAME to boot back into the firmware
The game won't uninstall after installation, and I can't uninstall it through NX-shell either.
Will I be able to run third-party programs and emulators after jailbreaking?
A: Yes! Custom firmware ▼ Supports Homebrew Launcher. You can also use Homebrew Launcher on SX OS without purchasing a license.

Will I be able to run third-party programs and emulators after jailbreaking?
Why does my console run out of battery after turning it off?
A: If you have AutoRCM enabled , you can sometimes accidentally turn on the console without forwarding the payload .▼ It will get stuck in RCM and will lose power. After turning off the console, you can press and hold the power button for 20 seconds; the console will definitely turn off, or you can turn it off using Hekate. ▼ , selecting Power Off.

Why does my console run out of battery after turning it off?
I can't turn on the set-top box.
A: Disconnect the console from the power source/remove the USB cable, hold down the POWER button for 30 seconds, then press the POWER button once and start the firmware update. If that doesn't work, hold down the POWER button again for 30 seconds, charge the console for at least 3 hours in the original dock or charger, then disconnect the console from the power source/remove the USB cable, hold down the POWER button for 30 seconds, then press the POWER button once and start the firmware update.

Read more

I can't turn on the set-top box.
The console screen goes blank while installing games. What should I do?
A: Use DBI to install

The console screen goes blank while installing games. What should I do?
How do I transfer data to a new SD card?
A: Format the new card to FAT32 and transfer all data from the old card to it.

How do I transfer data to a new SD card?
Is it possible to run games from another region?
A: Switch is not region-locked.

Is it possible to run games from another region?
How to transfer EmuNAND to another card
If EmuNAND is created in the form of files, it can be transferred by simply copying it

If on a partition, use this utility

How to transfer EmuNAND to another card
I enabled firmware autoload in hekate, how can I now enter hekate itself?
A: Press (VOL-) when the kefir splash screen appears

I enabled firmware autoload in hekate, how can I now enter hekate itself?
Is it possible to transfer a NAND dump from one system to another?
A: The NAND is encrypted with a unique key for each console, making it impossible to transfer. Furthermore, it's dangerous. If you don't have a backup of your PRODINFO, you won't be able to restore your console at all.

Is it possible to transfer a NAND dump from one system to another?
Can I do this without using a computer (for example, using an Android phone)?
A: If your phone can copy files to a flash drive, then yes.

Can I do this without using a computer (for example, using an Android phone)?
Is it possible to play online?
A: Yes, if you configure the console in a special way and install EmuNAND on it

Is it possible to play online?
What will I lose if I get banned?
A: Bans can range from cartridge-specific to account-specific, or even the entire console. In the worst-case scenario, you'll lose access to the eShop and online services, though system software and game updates will continue to download. Typically, the console itself is banned, not the account.

What will I lose if I get banned?
What size card is recommended?
A: I'd get at least 128GB. The larger the card, the more games you can fit. The Switch supports memory cards up to 2TB.

What size card is recommended?
Is this all free?
A: Firmware for consoles with the Fusée Gelée vulnerability - yes. Chipping consoles - no.

Is this all free?
What is the chance of a brick?
A: It depends on how closely you follow the instructions. Be sure to make a backup !

What is the chance of a brick?
Is it safe to transfer saves from a hacked to an unhacked console?
Even a slightly modified save of any game (modified with cheats, a save editor, a hex editor, or other tools) is dangerous to transfer to a non-rooted console. Moreover, saves from some games are aware that they were made on a different console than the one they are currently running on.

Is it safe to transfer saves from a hacked to an unhacked console?
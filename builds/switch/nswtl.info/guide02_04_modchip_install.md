Nintendo Switch Chip Installation
You can find most of the answers to typical questions in the FAQ section.
If something goes wrong, don't panic! First, read the Problems and Solutions section.
If you are a MacOS user, use these tips to avoid memory card problems.
Make backups of your saves as often as possible!
If the console freezes or shows no signs of life, turn it off by holding the (POWER) button for 30 seconds, then turn it on and forward the payload!
In this section, we'll cover configuring the switch before and after chip installation. The chip installation itself is well covered in the official manuals. However, everything in its own time.

Currently, there are two types of chips: the HWFLY, a clone of the SX chip, and chips based on the RP2040 processor in various variations. The latter may have different names (RP2040, picofly, and you can often find HWFLY RP2040, which have nothing in common with the HWFLY). Pay attention to the processor markings if you don't know which chip you have. At the time of writing, most chips are RP2040. You may also come across a chip labeled InstinctNX, which is essentially the same as the HWFLY.

Appearance of HWFLY chips
YOU ARE:


A little:


Core:


Note the number of elements on the chip. There are significantly more of them than on RP2040-based chips.

Appearance of HWFLY chips
Appearance of RP2040 chips
The processor itself:


Universal classic:


YOU ARE:


A little:


Core:


Other options:
 

Note the number of elements on the chip. There are significantly fewer than on HWFLY chips. Large gold buttons are also often present.

Appearance of RP2040 chips
Typically, the chip contains an older firmware version that may not work, or work poorly, on consoles with the latest system software. Therefore, it should be updated to the latest firmware version – HWFLY , which will load any payload located on the memory card under the name  payload.bin  . If you really want, you can also load SX OS via HWFLY-NX.

Installing a chip in the set-top box
Update your set-top box to the latest system software version via settings before installing the chip.
To install the chip, please follow the instructions below.
Universal guide for PicoFLY universal type
A guide for the HWFLY, as well as the RP2040 chips with a set of HWFLY cables:
A regular Switch of the first or second revision
Don't forget to mount your NAND memory on the chip!
Switch Lite
Switch OLED .
After installing the chip, make sure there's no memory card in the console and turn it on. The chip's LED will flash (the color depends on the chip type and its firmware).
Wait patiently. The chip is learning! The training process can take up to half an hour.
If you have an RP2040 and its LED doesn't blink when you turn it on, make sure you've loaded the firmware into the chip as instructed in the universal instructions (when you connect the chip to the PC, a disk should appear where you should copy the firmware; if the disk doesn't appear, hold down the BOOT button on the chip and, without releasing it, press RESET).
Once the flashing stops, pay attention to the console screen; it should display a message that there is no memory card inserted into the console.
Turn off the console by holding the power button until the screen turns off.
Installing firmware on EmuNAND
Installing and running Kefir
NAND backup
Creation of EmuNAND
Account linking is the final touch. Some games require account linking to work.
The launch of the games is the final part, for which everything was done
Using an already flashed console
Now you can use EmuNAND for pirated games and SysNAND for licensed games.

It is strongly recommended not to use Mariko revision prefixes .▼ Without EmuNAND. On Mariko, EmuNAND is not an option, but a necessity, as this revision doesn't have tools that can help you restore your console from virtually any state in the event of a malfunction. Therefore, we won't cover running the console without EmuNAND in this guide!

Materials for independent study
Frequently Asked Questions
Problems and their solutions
Using cheats in EdiZon
Backing up and restoring saves
Online for the flashed and banned
Launching Homebrew Launcher
Emulate Amiibo with the emuiibo module
Materials for independent study
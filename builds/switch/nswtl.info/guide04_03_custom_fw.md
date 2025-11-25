Custom firmware
You can find most of the answers to typical questions in the FAQ section.
If something goes wrong, don't panic! First, read the Problems and Solutions section.
If you are a MacOS user, use these tips to avoid memory card problems.
Make backups of your saves as often as possible!
If the console freezes or shows no signs of life, turn it off by holding the (POWER) button for 30 seconds, then turn it on and forward the payload!
Currently, custom firmware refers to official firmware with a number of patches that allow running unsigned code and add a number of unique features to the firmware, such as LayeredFS. ▼ The most important are Atmosphere , from which RajNX, ReiNX, and SX OS spun off. The latter, like the others, is based on the source code of the former and is more user-friendly. However, it is not free.

Using any firmware in its current form is completely legal (as long as you don't start pirating it, since the firmware is deployed in the console's RAM and does not change any official firmware files.

Atmosphere
Github

Atmosphere is an open-source project. It consists of five main modules, each with its own functions:

Fusée is the first-stage bootloader. It is responsible for launching and verifying the second stage (custom TrustZone) and package2 (kernel and system modules), as well as patching them as needed ( implemented ).
Exosphère - a modified TrustZone required to run Secure Monitor ( implemented )
Thermosphère - module providing support for EmuNAND ( implemented )
Stratosphère - modified system modules. It will be something like Rosalina on the 3DS, which will expand the core's capabilities and provide new features ( partially implemented ).
Troposphère - patches for implementing planned custom firmware features. Application interaction layer ( not implemented )
Allows you to install games in any format, install updates and DLC for them.

Pros
Free
Constantly evolving
Can run eShop game images
Supports LayeredFS ▼
Supports EmuNAND ▼ , including switching between several emunandas
Supports cheats
Can install games from USB drive
Open source
Modular architecture (modules enable overclocking, amiibo emulation, and much more)
The most protected
Works on all versions of system software
Pros
Cons
Can't mount XCI, but can install
Cons
Atmosphere Installation
What you will need
Ability to enter console into recovery mode (RCM)
The latest version of kefir ▼
Instructions
Preparatory work
Establish kefir ▼ , if you haven't done it yet
 payload.bin  from the kefir  .zip  archive ▼ - this is hekate ▼
Atmosphere launch
Run custom ▼ using an exploit supported by your console:
Run the payload  payload.bin  from the kefir  .zip  archive ▼ using Fusée Gelée or use Caffeine to load custom
It's quite easy to turn on a chipped console
If, after entering the firmware, the console doesn't recognize the card and requires a firmware update to work, or simply freezes on a black screen after the Nintendo logo, your console doesn't have exFAT drivers installed! Format the memory card to FAT32.

In hectares ▼ Autostart is configured by default. That is, when the console starts, the Hekate menu appears.▼ It won't be displayed, but the firmware will start immediately. To access the hekate menu▼ Press and hold (VOL-) while the splash screen appears.

Atmosphere Installation
Atmosphere launch
Run custom ▼ using an exploit supported by your console:
Run the payload  payload.bin  from the kefir  .zip  archive ▼ using Fusée Gelée or use Caffeine to load custom
It's quite easy to turn on a chipped console
If, after entering the firmware, the console doesn't recognize the card and requires a firmware update to work, or simply freezes on a black screen after the Nintendo logo, your console doesn't have exFAT drivers installed! Format the memory card to FAT32.

In hectares ▼ Autostart is configured by default. That is, when the console starts, the Hekate menu appears.▼ It won't be displayed, but the firmware will start immediately. To access the hekate menu▼ Press and hold (VOL-) while the splash screen appears.

Atmosphere launch
Please note
If you flashed the firmware in EmuNAND ▼ For the first time, be sure to follow the instructions for changing the name to "EmuNAND" and changing the theme to the opposite of the one you booted with, as described in the EmuNAND creation instructions . If you're unsure whether EmuNAND is working, simply reboot the console and make sure SysNAND boots.▼ This will be indicated by a different color scheme, as well as a different username.


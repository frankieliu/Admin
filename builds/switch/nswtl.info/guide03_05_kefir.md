# Kefir

KEFIR 780 - Download the latest version
kefir [kefir](https://github.com/rashevskyv/kefir/releases)

# What is kefir?
This is a build consisting of a modified Atmosphere, the necessary programs, and scripts that install everything correctly. It was designed to simplify the installation and maintenance of software on a jailbroken Nintendo Switch. The changes made to Atmosphere are aimed at improving the user experience of the system itself.

The main differences from vanilla Atmosphere:

- Kefir versions next to the system version
- Set the exFAT memory card driver as default when updating the system
- Removing ACID signature verification for unpatched homebrew
- Clear system logs to prevent memory card clutter and excessive usage
- Redirect saves from internal memory to a memory card when using an emuNAND to reduce the likelihood of losing them if the emuNAND fails (optional)

Kefir is not a firmware update ! It's a build consisting of the Atmosphere firmware and the minimum required recommended programs, plugins, modules, and other software. More details on Kefir's components are below. It works on firmware 20.4.0 and below.

# Why do we need kefir?
First and foremost, Kefir is designed to make life easier for the user. That is, if the user has the recommended version of the system software and the latest version of Kefir, everything should work. You could say the user is in a controlled environment. Simply mention the system software and Kefir versions, and it immediately becomes clear what's installed on the system.

Why do we need kefir?

# Composition of kefir
1. Kefirosphere , fork Atmosphere
2. Sigpatches . Thanks to them, you can run unsigned (read: pirated ) programs and games on Atmosphere.
3. The hekate bootloader . This bootloader allows you to run firmware and other payloads. ▼ Using a user-friendly menu, you can create and restore a NAND backup, create an EmuNAND, get system status information, mount a memory card to a PC without removing it from the Switch, repartition a memory card to install other operating systems, and much more.
4. Installed payloads ▼ :
- Lockpick_RCM - a program for dumping console keys
- TegraExplorer is a file manager for the Switch in payload form. Similar to GodMode9 for the 3DS.
5. Installed Homebrew
- DBI is a program for installing games via USB or memory card.
- Tinfoil is a program that allows you to download games for your console directly from the Internet.
Kefir Updater is a program for updating Kefir via the Internet.
Sphaira is a Homebrew environment, a Switch theme and app downloader, and a file manager.
Daybreak is a program for safely updating the system software version of the console.
NXThemes Installer - a custom theme manager
Linkalho - account linking program
Installed modules . Modules are additional components that run inside Atmosphere and allow you to do various cool things, such as using Xbox-compatible controllers, amiibo emulation, overclocking, and more. Unfortunately, SX OS does not support modules.
sys-con is a module that allows you to connect almost any gamepad to the console via USB.
Mission Control is a module that allows you to connect almost any gamepad to the console via Bluetooth.
Uberhand is a dedicated overlay menu for interacting with the system with support for custom scripts and modules.
Scripts:
DBI - Changing localization and updating the program
Translate Interface - additional interface translations to choose from
Semi-stock - loading into semi-stock from the menu
Reboot and Shutdown - reboot and shut down the console from the menu
Modules:
nx-ovlloader - a process for working with nro via Tesla Menu
ovlEdiZon.ovl - A module for using cheats
ovlSysmodules.ovl - Module for enabling and disabling installed system modules (e.g., overclocking, emuuibo, etc.)
Composition of kefir
Kefir installation/update instructions
First time installation or installation on a clean memory card
Copy the contents of the archive  kefir.zip  from the kefir repository to the root of the console's memory card. ▼
Insert the memory card into the Switch
Launch the console into the firmware corresponding to the type of your hack.  payload.bin  The payload, which must be forwarded when launching the console through Fusée Gelée, is located in the archive with the build.
First time installation or installation on a clean memory card
Updating kefir or switching from a different build
Manual installation instructions (all OS)
Connecting the console's memory card to a PC
If you are a MacOS user, use these tips to avoid memory card problems.

If the console is turned off, insert the memory card into the PC; if it is turned on, then:

Reboot the set-top box using the menu called up by holding down the button (POWER)
On the kefir splash screen, press the volume down button to enter hekate
You can now remove the memory card from your Switch and insert it into your PC.
When removing a memory card in Hekate, you won't need to re-upload the payload to enter the firmware. Simply insert the card into the console and launch the firmware from the Launch menu.

Installing kefir (all OS)
Copy the contents of the archive  kefir.zip  from the kefir repository to the root of the console's memory card. ▼
Insert the memory card back into the Switch
In Hekate, select More configs -> Update Kefir
After the installation is complete, the set-top box will start up in the firmware
You can also simply turn off the console, remove the card, copy the replacement file to it, then reinsert the card into the Switch and turn on the console. This will automatically run the update script.

Manual installation instructions (all OS)
Kefir update directly on the console (kefir version 529 or higher)
Launch HBL
Select Kefir Updater
Internet connection required!
Click “ Update Kefir ”, click on “ Kefir 780 ”, select “ Download ”
Wait for the download and unzipping to complete, then click " Continue ." The console will reboot into the payload, after which the Kefir installation process will begin.
After installation is complete, press any button to load the set-top box into the firmware
Kefir update directly on the console (kefir version 529 or higher)
Updating kefir or switching from a different build
Problem solving
Clean installation of kefir (recommended if errors occur)
Delete everything from the card except the folders  Nintendo  and  emummc  , if any.
Install kefir in the convenient way described above
Clean installation of kefir (recommended if errors occur)
Kefir debugging installation (recommended if a simple clean one did not help)
Copy the folders  Nintendo  and  emummc  , if any, to your PC
Format your memory card to FAT32 and restore the folders back
Install kefir in a convenient way
Kefir debugging installation (recommended if a simple clean one did not help)
If you encounter a [NOFAT] error or any other problem with updating via a script  kefir-updater  , use the kefir installation via  install.bat  :
Unzip  kefir.zip  to any convenient location on your PC , except for the console's memory card.
Insert the console's memory card into the PC
Run it  install.bat  from the folder you unzipped it to  kefir.zip  and specify the drive letter of your memory card.
Wait for the copying to complete
Insert the card into your PC and run the firmware
If the “ warmboot ” error occurs , go to fullstock and restart the console.
If the console is stuck with a black screen after the update, reinstall Kefir completely:
Delete everything from the card except the folders  Nintendo  and  emummc  , if any.
Install kefir in the convenient way described above
Atmosphere launch
Run custom ▼ using an exploit supported by your console:
It's quite easy to turn on a chipped console
Run the payload  payload.bin  from the kefir  .zip  archive ▼ using Fusée Gelée or use Caffeine to load custom
If, after entering the firmware, the console doesn't recognize the card and requires a firmware update to work, or simply freezes on a black screen after the Nintendo logo, your console doesn't have the exFAT drivers installed! Format the memory card to FAT32.

In hectares ▼ Autostart is configured by default. That is, when the console starts, the Hekate menu▼ It won't be displayed, but the firmware will start immediately. To access the hekate menu▼ Press and hold (VOL-) when the splash screen appears.

Important information!
Rebooting into Hekate is done directly from the firmware, through the regular reboot menu. Just hold down (VOL-) during the Kefir splash screen.
You can access your memory card without removing it from the console via MTP ( DBI -> Run MTP Responder ), or via hekate ( Tools -> USB Tools -> SD Card ) (not for everyone it works correctly, it is impossible to update kefir via MTP )
Installation and updating of kefir are carried out in the same way!
If the error “ Is BEK missing ” occurs , turn off the set-top box and turn it on again.
Additional information
To work with modules ( sys-con , Mission Control , etc.), Kefir has Uberhand installed —a special overlay menu for interacting with the system. To activate it, press (L) + (DOWN) + (R3)
To switch to semi-stock
From the firmware itself (recommended) : go to Uberhand ( (L) + (DOWN) + (R3) ), press right >  Semi-stock 
When starting the console (not recommended) :
Log in to hekate ▼ using an exploit supported on your console, by running the payload  payload.bin  from the kefir  .zip  archive ▼
If the set-top box is chipped, just turn it on.
Skip this step if you are already in hekate
Hold (VOL-) on the console when the kefir logo appears to enter hekate
Select  More-configs  >  Semi-stock 
Please note that when running from the firmware, the installed theme will be disabled, which will avoid errors if the console has different versions of the system software and the emulator.
Please note that when launched via  More-configs  >  Semi-stock  , the theme installed in emunand will also be displayed in Semi-stock. If Semi-stock and emunand have different system software versions, this will cause an error and a reboot of the console!
You can update kefir using the Kefir Updater utility.
Useful instructions for using the console
FAQ
Problems and their solutions
Acceleration
To activate overclocking , go to Uberhand ( (L) + (DOWN) + (R3) ), press right >  Settings  >  Overlock status 
Turn off To activate overclocking, go to Uberhand ( (L) + (DOWN) + (R3) ), press right >  Settings  >  Overlock status 
If overclocking is enabled,  Overlock status  it will be in position  On 

8GB memory support mode
ATTENTION! If you haven't modded your console or installed 8GB of memory, do not enable this option!

Turning on
To enable, go to Uberhand ( (L) + (DOWN) + (R3) ), press right >  Settings  >  Advance  >  Enable 8GB support 
The option is specially hidden behind 3 nested menus to prevent accidental activation.
Shutdown
To turn it off, reinstall kefir using a convenient method.
Changes from the previous version
Spoiler
ENGLISH
Full support of 20.5.0

780

[ Updated ] MissionControl 0.13.6 — official update with 20.5.0 support
779

[ Updated ] Atmosphere 1.9.5 — built with the latest commits for basic support of 20.5.0
More details about Atmosphere changes
Spoiler
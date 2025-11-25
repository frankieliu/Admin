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
1. [Kefirosphere](https://github.com/rashevskyv/Kefirosphere) , fork [Atmosphere](https://github.com/Atmosphere-NX/Atmosphere)
2. Sigpatches . Thanks to them, you can run unsigned (read: pirated ) programs and games on Atmosphere.
3. The [hekate](https://github.com/CTCaer/hekate) bootloader . This bootloader allows you to run firmware and other payloads. ▼ Using a user-friendly menu, you can create and restore a NAND backup, create an EmuNAND, get system status information, mount a memory card to a PC without removing it from the Switch, repartition a memory card to install other operating systems, and much more.
4. Installed payloads ▼ :
- [Lockpick_RCM](https://codeberg.org/rashevskyv/Locktrick/) - a program for dumping console keys [nand backup](./guide06_01_nand.md). 
- [TegraExplorer](https://github.com/rashevskyv/TegraExplorer/) is a file manager for the Switch in payload form. Similar to GodMode9 for the 3DS.4. 
5. Installed Homebrew4. 
- [DBI](https://github.com/rashevskyv/dbi/releases) is a program for installing games via USB or memory card. [install](./guide04_06_install_games.md)
- [Tinfoil](http://tinfoil.io/) is a program that allows you to download games for your console directly from the Internet. [tinfoil](./guide05_02_tinfoil.md)
- [Kefir Updater](https://github.com/rashevskyv/kefir-updater) is a program for updating Kefir via the Internet.
- [Sphaira](https://github.com/ITotalJustice/sphaira/releases/) is a Homebrew environment, a Switch theme and app downloader, and a file manager.
- [Daybreak](https://github.com/Atmosphere-NX/Atmosphere/tree/0.14.1/troposphere/daybreak) is a program for safely updating the system software version of the console. [safe](./guide04_04_safe_fw.md)
- [NXThemes](https://github.com/exelix11/SwitchThemeInjector) Installer - a custom theme manager
- [Linkalho](https://github.com/rdmrocha/linkalho) - account linking program [link](./guide04_05_linking.md)
6. Installed modules . Modules are additional components that run inside Atmosphere and allow you to do various cool things, such as using Xbox-compatible controllers, amiibo emulation, overclocking, and more. Unfortunately, SX OS does not support modules.
- [sys-con](https://github.com/o0Zz/sys-con) is a module that allows you to connect almost any gamepad to the console via USB.
- [Mission Control](https://github.com/ndeadly/MissionControl) is a module that allows you to connect almost any gamepad to the console via Bluetooth.
- [Uberhand](https://github.com/efosamark/Uberhand-Overlay) is a dedicated overlay menu for interacting with the system with support for custom scripts and modules.

- Scripts:
  - **DBI** - Changing localization and updating the program
  - **Translate Interface** - additional interface translations to choose from
  - **Semi-stock** - loading into semi-stock from the menu
  - **Reboot and Shutdown** - reboot and shut down the console from the menu

- Modules:
  - [nx-ovlloader](https://github.com/WerWolv/nx-ovlloader//) - a process for working with nro via Tesla Menu
  - [ovlEdiZon.ovl](https://github.com/proferabg/EdiZon-Overlay/releases) - A module for using cheats [cheats](./guide04_08_cheats.md)
  - [ovlSysmodules.ovl](https://github.com/WerWolv/ovl-sysmodules/) - Module for enabling and disabling installed system modules (e.g., overclocking, emuuibo, etc.)

Composition of kefir

# Kefir installation/update instructions

## First time installation or installation on a clean memory card
1. Copy the contents of the archive  kefir.zip  from the [kefir](https://github.com/rashevskyv/kefir/releases/latest) repository to the root of the console's memory card. ▼
2. Insert the memory card into the Switch
3. [Launch](./guide02_get_started.md) the console into the firmware corresponding to the type of your hack.  payload.bin  The payload, which must be forwarded when launching the console through Fusée Gelée, is located in the archive with the build.

First time installation or installation on a clean memory card

## Updating kefir or switching from a different build
### Manual installation instructions (all OS)

Connecting the console's memory card to a PC

If you are a MacOS user, use these [tips](./guide10_01_macos_sd.md) to avoid memory card problems.

If the console is turned off, insert the memory card into the PC; if it is turned on, then:

1. Reboot the set-top box using the menu called up by holding down the button (POWER)
2. On the kefir splash screen, press the volume down button to enter hekate
3. You can now remove the memory card from your Switch and insert it into your PC.

When removing a memory card in Hekate, you won't need to re-upload the payload to enter the firmware. Simply insert the card into the console and launch the firmware from the Launch menu.

### Installing kefir (all OS)
1. Copy the contents of the archive  kefir.zip  from the kef[text](https://github.com/rashevskyv/kefir/releases/latest)ir repository to the root of the console's memory card. ▼
2. Insert the memory card back into the Switch
3. In Hekate, select More configs -> Update Kefir
4. After the installation is complete, the set-top box will start up in the firmware

You can also simply turn off the console, remove the card, copy the replacement file to it, then reinsert the card into the Switch and turn on the console. This will automatically run the update script.

Manual installation instructions (all OS)

## Kefir update directly on the console (kefir version 529 or higher)
1. Launch HBL [homebrew](./guide04_11_homebrew.md)
2. Select Kefir Updater
   - Internet connection required!
3. Click “ Update Kefir ”, click on “ Kefir 780 ”, select “ Download ”
4. Wait for the download and unzipping to complete, then click " Continue ." The console will reboot into the payload, after which the Kefir installation process will begin.
5. After installation is complete, press any button to load the set-top box into the firmware

Kefir update directly on the console (kefir version 529 or higher)

Updating kefir or switching from a different build

# Problem solving
## Clean installation of kefir (recommended if errors occur)
1. Delete everything from the card except the folders  Nintendo  and  emummc  , if any.
2. Install kefir in the convenient way described above
Clean installation of kefir (recommended if errors occur)
## Kefir debugging installation (recommended if a simple clean one did not help)
1. Copy the folders  Nintendo  and  emummc  , if any, to your PC
2. Format your memory card to FAT32 and restore the folders back
3. Install kefir in a convenient way
Kefir debugging installation (recommended if a simple clean one did not help)

- If you encounter a [NOFAT] error or any other problem with updating via a script  kefir-updater  , use the kefir installation via  install.bat  :
  1. Unzip  kefir.zip  to any convenient location on your PC , except for the console's memory card.
  2. Insert the console's memory card into the PC
  3. Run it  install.bat  from the folder you unzipped it to  kefir.zip  and specify the drive letter of your memory card.
  4. Wait for the copying to complete
  5. Insert the card into your PC and run the firmware
- If the “ warmboot ” error occurs , go to fullstock and restart the console.
- If the console is stuck with a black screen after the update, reinstall Kefir completely:
  1. Delete everything from the card except the folders  Nintendo  and  emummc  , if any.
  2. Install kefir in the convenient way described above

# Atmosphere launch

1. Run custom ▼ using an exploit supported by your console:
   
   - It's quite easy to turn on a chipped console
   - Run the payload  payload.bin  from the kefir  .zip  archive ▼ using [Fusée Gelée](./guide03_01_fusee_gelee.md) or use [Caffeine](./guide05_03_caffeine.md) to load custom

If, after entering the firmware, the console doesn't recognize the card and requires a firmware update to work, or simply freezes on a black screen after the Nintendo logo, your console doesn't have the exFAT drivers installed! Format the memory card to FAT32.

 ▼ custom Modified console software written by enthusiasts allows for things unavailable to users of official firmware, such as running unsigned programs. In the context of Switch firmware, we'll refer to this software as custom firmware, although technically, it's not.

 ▼ archive A build consisting of the chosen custom version, the necessary programs, and scripts that will install everything correctly. The kefir package and installation instructions can be found in its repository.

In hectares ▼ Autostart is configured by default. That is, when the console starts, the Hekate menu▼ It won't be displayed, but the firmware will start immediately. To access the hekate menu▼ Press and hold (VOL-) when the splash screen appears.

 ▼ hectares A custom bootloader for Nintendo Switch. We use it to make backups, launch custom files, and run various payloads. It's one of the most important tools we'll be using.
 ▼ hekate A custom bootloader for Nintendo Switch. We use it to make backups, launch custom files, and run various payloads. It's one of the most important tools we'll be using.

# Important information!
- Rebooting into Hekate is done directly from the firmware, through the regular reboot menu. Just hold down (VOL-) during the Kefir splash screen.
- You can access your memory card without removing it from the console via MTP ( DBI -> Run MTP Responder ), or via hekate ( Tools -> USB Tools -> SD Card ) (not for everyone it works correctly, it is impossible to update kefir via MTP )
- Installation and updating of kefir are carried out in the same way!
- If the error “ Is BEK missing ” occurs , turn off the set-top box and turn it on again.

# Additional information
- To work with modules ( sys-con , Mission Control , etc.), Kefir has Uberhand installed —a special overlay menu for interacting with the system. To activate it, press (L) + (DOWN) + (R3)
- To switch to semi-stock
  - **From the firmware itself (recommended)** : go to Uberhand ( (L) + (DOWN) + (R3) ), press right >  Semi-stock 
  - **When starting the console (not recommended)** :
    1. Log in to hekate ▼ using an exploit supported on your console, by running the payload  payload.bin  from the kefir  .zip  archive ▼
       - If the set-top box is chipped, just turn it on.
  - Skip this step if you are already in hekate
    1. Hold (VOL-) on the console when the kefir logo appears to enter hekate
    2. Select  More-configs  >  Semi-stock 
  - Please note that when running from the firmware, the installed theme will be disabled, which will avoid errors if the console has different versions of the system software and the emulator.
  - Please note that when launched via  More-configs  >  Semi-stock  , the theme installed in emunand will also be displayed in Semi-stock. If Semi-stock and emunand have different system software versions, this will cause an error and a reboot of the console!
- You can update kefir using the Kefir Updater utility.
- Useful instructions for using the console [already](./guide08_01_already_flashed.md)
- FAQ [faq](./guide03_02_faq.md)
- Problems and their solutions [pns](./guide04_07_prob_soln.md)

# Acceleration
- To activate overclocking , go to Uberhand ( (L) + (DOWN) + (R3) ), press right >  Settings  >  Overlock status 
- Turn off To activate overclocking, go to Uberhand ( (L) + (DOWN) + (R3) ), press right >  Settings  >  Overlock status 

If overclocking is enabled,  Overlock status  it will be in position  On 

# 8GB memory support mode

ATTENTION! If you haven't modded your console or installed 8GB of memory, do not enable this option!

- Turning on
    - To enable, go to Uberhand ( (L) + (DOWN) + (R3) ), press right >  Settings  >  Advance  >  Enable 8GB support 
      - The option is specially hidden behind 3 nested menus to prevent accidental activation.
- Shutdown
  - To turn it off, reinstall kefir using a convenient method.

# Changes from the previous version
## Spoiler - ENGLISH

Full support of 20.5.0

780

[ Updated ] MissionControl 0.13.6 — official update with 20.5.0 support

779

[ Updated ] Atmosphere 1.9.5 — built with the latest commits for basic support of 20.5.0
More details about Atmosphere changes

Spoiler
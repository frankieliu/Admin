# KEFIR - Custom Firmware Build

> This guide is created based on guides by xHЯ - developer of [KEFIR](https://github.com/rashevskyv/kefir/releases/latest).

> Most common problems can be solved by [using KEFIR](kefir.md).
>
> We strongly recommend [using DBI](https://github.com/rashevskyv/dbi/releases) for game installation.
>
> The best way to get games, DLC and updates today is the Telegram bot [Switch Torrent Library](https://t.me/Switch_library_bot).

> You can find most answers to common questions in the [F.A.Q.](faq.md) section.
>
> If something goes wrong, don't panic! First read the [Problems and Solutions](troubleshooting.md) section.

> If you're a MacOS user, follow [these recommendations](sd-macos.md) to avoid memory card issues.

> Make [save backups](backup-saves.md) as often as possible!

> **If the console freezes or shows no signs of life, turn it off by holding the POWER button for 30 seconds, then turn it on and inject the payload!**

---

## [KEFIR - Download Latest Version](https://github.com/rashevskyv/kefir/releases)

![kefir](../images/kefir.png)

### What is Kefir?

This is a build consisting of modified Atmosphere, necessary programs, and scripts that install everything correctly. It was invented to simplify the installation and maintenance of software on a hacked Nintendo Switch. The changes made to Atmosphere are aimed at improving the quality of using the system itself.

Key differences from vanilla Atmosphere:
- Kefir versions next to system version
- Installation of exFAT memory card driver by default when updating the system
- Removal of ACID signature check for using homebrew without patches
- Removal of system logging to prevent cluttering the memory card and excessive use
- Redirecting saves from internal memory to memory card when using emunand to reduce the chance of losing them if emunand fails (optional)

**KEFIR** - **is NOT firmware**! This is a build consisting of Atmosphere firmware and the necessary minimum of recommended programs, plugins, modules, and other software. More about the composition of kefir below. Works on firmware **21.0.0** and below.

<details>
<summary>Why is kefir needed?</summary>

Primarily, kefir is needed to simplify the user's life. That is, if the user has the recommended system software version and the latest kefir version, then everything should work for them. We can say that the user is in controlled conditions. It's enough to name the system software version and kefir version, and it immediately becomes clear what's approximately installed in the system.

</details>

<details>
<summary>Composition of kefir</summary>

1. **[Kefirosphere](https://github.com/rashevskyv/Kefirosphere)**, a fork of [Atmosphere](https://github.com/Atmosphere-NX/Atmosphere)

2. **Signature patches**. Thanks to them, unsigned (read: *pirated*) programs and games can be launched on Atmosphere.

3. **[Hekate bootloader](https://github.com/CTCaer/hekate)**. Thanks to the bootloader, you can launch firmware and other payloads through a convenient menu, create and restore NAND backups, make EmuNAND, get system status information, mount memory card to PC without removing it from Switch, repartition memory card for installing other OS, and much more.

4. **Installed payloads**:
   - **payloads/fusee-secondary.bin** - Main Atmosphere payload
   - **payloads/hekate.bin** - Hekate bootloader
   - **payloads/rei.bin** - ReiNX bootloader
   - **payloads/tegraexplorer.bin** - TegraExplorer
   - **payloads/lockpick.bin** - Lockpick_RCM
   - **payloads/nxdt.bin** - nxdumptool

5. **Modules**:
   - **sys-patches** - System patches
   - **emuiibo** - Amiibo emulation
   - **status-manager** - Status overlay manager
   - **sys-ftpd** - FTP server
   - **sys-clk** - CPU overclocking
   - **ldn_mitm** - Local wireless communication
   - **Tesla-Menu** - Overlay menu

6. **Homebrew applications**:
   - **HBmenu** - Homebrew Launcher
   - **DBI** - Goldleaf alternative for installing games
   - **Awoo Installer** - Another installer
   - **Checkpoint** - Save manager
   - **EdiZon** - Save editor
   - **nxdumptool** - Dump tool
   - **Goldleaf** - File manager and installer
   - **Tinfoil** - Another installer
   - **JKSV** - Another save manager

7. **Utilities**:
   - **hekate_ipl.ini** - Configuration file
   - **bootloader** - Directory with bootloader files
   - **atmosphere** - Directory with Atmosphere files
   - **config** - Configuration files
   - **switch** - Homebrew applications

</details>

## Installation Instructions

### Before You Begin

- Make sure you have completed all preparation steps for your hacking method
- Your SD card must be formatted as FAT32
- Make a backup of your SD card before proceeding

### Installation Steps

1. **Download the latest KEFIR build** from [GitHub releases](https://github.com/rashevskyv/kefir/releases)

2. **Extract the archive** to your computer

3. **Copy the contents** of the extracted archive to the root of your SD card, merging folders and replacing files when prompted

4. **Inject the payload** using your preferred method:
   - For Fusée Gelée: Use your payload injector with hekate payload
   - For modchip: Your chip should automatically load hekate

5. **Launch the CFW** from Hekate menu:
   - Select "Launch" → "Cfw (emuMMC)"
   - Or select "Launch" → "Cfw (sysMMC)" if not using emunand

6. **First boot setup**:
   - Let the console boot completely (may take a few minutes)
   - The console will restart automatically after setup

### Updating KEFIR

1. **Download the new version** of KEFIR
2. **Back up your saves** using Checkpoint or JKSV
3. **Delete old kefir folders** from SD card:
   - `atmosphere`
   - `bootloader`
   - `switch`
   - `config`
4. **Copy new version** to SD card
5. **Launch as usual**

## Troubleshooting

- **If console doesn't boot**: Try deleting `atmosphere/contents/0100000000001000` (sys-ftpd) and reboot
- **If games don't install**: Make sure you're using latest [DBI](https://github.com/rashevskyv/dbi/releases)
- **If crashes occur**: Check if you're on supported firmware version (21.0.0 or below)

---

**SWITCH TORRENT LIBRARY TELEGRAM BOT**

THE LARGEST FREE GAME LIBRARY FOR NINTENDO SWITCH

[JOIN NOW. PASSWORD: LONDON](https://t.me/Switch_library_bot)
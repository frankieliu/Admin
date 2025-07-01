[NH Switch Guide](https://switch.hacks.guide/)

Main Navigation [User Guide](https://switch.hacks.guide/user_guide/getting_started.html)[Homebrew](https://switch.hacks.guide/homebrew/)[Tutorials](https://switch.hacks.guide/extras/)[FAQ](https://switch.hacks.guide/faq.html)[About](https://switch.hacks.guide/about.html)

[](https://discord.gg/C29hYvh)[](https://github.com/nh-server/switch-guide)

Appearance

[](https://discord.gg/C29hYvh)[](https://github.com/nh-server/switch-guide)

Menu

On this page

Sidebar Navigation

## User Guide

[

Getting Started

](https://switch.hacks.guide/user_guide/getting_started.html)

### RCM

[

RCM

](https://switch.hacks.guide/user_guide/rcm/)

[

Entering RCM

](https://switch.hacks.guide/user_guide/rcm/entering_rcm.html)

[

Sending a Payload

](https://switch.hacks.guide/user_guide/rcm/sending_payload.html)

### Modchip

[

Introduction to Modchips

](https://switch.hacks.guide/user_guide/modchip/)

[

Payload and bootloader folder placement

](https://switch.hacks.guide/user_guide/modchip/preparing_hekate.html)

[

CFW on sysMMC vs. CFW on emuMMC

](https://switch.hacks.guide/user_guide/all/cfw_environment.html)

### Multiple Options

[

Partitioning the microSD Card and creating the emuMMC

](https://switch.hacks.guide/user_guide/all/partitioning_sd.html)

[

Formatting and/or partitioning the microSD Card

](https://switch.hacks.guide/user_guide/all/partitioning_sd_syscfw.html)

[

microSD Card preparations

](https://switch.hacks.guide/user_guide/all/sd_preparation.html)

[

Making Essential Backups

](https://switch.hacks.guide/user_guide/all/making_essential_backups.html)

[

Launching CFW

](https://switch.hacks.guide/user_guide/all/launching_cfw.html)

## Other

[

FAQ

](https://switch.hacks.guide/faq.html)

[

About

](https://switch.hacks.guide/about.html)

On this page

- [Making a NAND Backup](https://switch.hacks.guide/user_guide/all/making_essential_backups.html#making-a-nand-backup "Making a NAND Backup")
- [Booting into CFW](https://switch.hacks.guide/user_guide/all/making_essential_backups.html#booting-into-cfw "Booting into CFW")

# Making Essential Backups [​](https://switch.hacks.guide/user_guide/all/making_essential_backups.html#making-essential-backups)

## Making a NAND Backup [​](https://switch.hacks.guide/user_guide/all/making_essential_backups.html#making-a-nand-backup)

DANGER

**Important**

A NAND backup is crucial to have, it's a full backup of the internal storage of your Switch and can be used to restore the device to a working state in case of emergencies. **DO NOT SKIP THIS STEP**

Once the backup is finished, **keep it somewhere safe.** The best backup is the one you have but never need, and the worst backup is the one you need but never made. To save space, it's recommended to compress the end-result with a `.zip` file or something similar.

It's highly recommended that you use an microSD card that is formatted to FAT32 and has at least 32 gigabytes of space free. This will still work on smaller cards, but it's not ideal.

### Instructions: [​](https://switch.hacks.guide/user_guide/all/making_essential_backups.html#instructions)

1. Enter RCM and inject the hekate payload.
    - If you use a modchipped Switch, you can simply just turn your Switch on with the hekate payload renamed to `payload.bin` on the root of your microSD card.
2. Use the touch screen or Joy-Cons to navigate to `Tools` > `Backup eMMC`.
3. Tap on `eMMC BOOT0 & BOOT1`
    - This should only take a few seconds, but if your microSD card is very slow, it may take around a minute.
4. Tap on `Close` to continue, then tap on `eMMC RAW GPP`
    - This will take a long time. Expect it to take between 10 minutes to an hour (or more, if your microSD card is very slow).
    - If your microSD card has less than 32GB of space available, please follow the "**About microSD cards with less than 32GB of free space**" instructions at the end of this section instead.
5. Go to the top right and press `Close` > `Home`.
6. Navigate to `Tools` > `USB tools` > `SD card` and plug your Switch into your PC via USB.
7. Copy the `backup` folder on your microSD card to a safe location on your PC.
8. Once done, you may delete the `backup` folder from the root of your microSD card and eject the `UMS` device safely from within your computer's operating system, then return to hekate's `Home` menu.

About microSD cards with less than 32GB of free space (Click to unfold)

On FAT32 formatted microSD cards or cards that have less than 32 gigabytes of space available, the NAND backup will be split into 1 or 2 gigabyte parts.

hekate will stop producing these parts when it runs out of space. When this happens, do the following:

1. Press `OK` when hekate tells you to back up your stuff. ![nandbackup](/assets/nandbackup.d9JkJc26.bmp)
2. Press `Close` > `Close` > `USB Tools` > `SD Card` and connect your Switch to your PC via USB.
3. Your microSD card should now be accessible on your PC, move the `backup` folder on the root of your microSD card to a safe location on your PC.
    - _If_ you are prompted to merge folders, do so.
4. Eject the `UMS` device safely from within your computer's operating system and close the UMS window in hekate.
5. Press `Close` > `Backup eMMC` > `eMMC RAW GPP` and continue backing up your NAND.
6. Repeat step 2-5 until the NAND is completely dumped.
7. Once done, return to hekate's `Home` menu.

## Booting into CFW [​](https://switch.hacks.guide/user_guide/all/making_essential_backups.html#booting-into-cfw)

TIP

Click the link below to continue to Launching **emuMMC**!

[Launching CFW (emuMMC)](https://switch.hacks.guide/user_guide/all/launching_cfw.html?tab=instructions-for-emummc)

TIP

Click the link below to continue to Launching **sysCFW**!

[Launching CFW (sysCFW)](https://switch.hacks.guide/user_guide/all/launching_cfw.html?tab=instructions-for-syscfw)

Frequently Asked Questions about this page

- **Q: Why is making a NAND backup considered crucial?**
    
    A: A NAND backup contains a complete snapshot of the internal files of your Switch, including console-specific files that cannot be regenerated if accidentally lost. This is why it is **mandatory** to keep at least one copy of your NAND backup in a safe place, even if it takes a lot of space. The consequence to not having one is, at best, a Switch that cannot connect to Nintendo Network, or at worst, a full brick. However, it is important to note that it is nearly impossible to permanently brick a hackable Nintendo Switch.
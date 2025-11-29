Preparing to launch custom firmware using Caffeine
You can find most of the answers to typical questions in the FAQ section.
If something goes wrong, don't panic! First, read the Problems and Solutions section.
If you are a MacOS user, use these tips to avoid memory card problems.
Make backups of your saves as often as possible!
If the console freezes or shows no signs of life, turn it off by holding the (POWER) button for 30 seconds, then turn it on and forward the payload!
Each step in this guide is mandatory if you want to get the most out of your console's firmware. Each step is self-contained. If for some reason you missed any of them earlier, you can come back to them later.

After completing each instruction in the list below, return to this page and proceed to the next step. If you've already completed any of the steps, you don't need to repeat them.

Here's a quick outline of what we'll be doing:

Installing and running Kefir
Installing and configuring Caffeine and running hekate with it - setting up the entry point and running custom firmware
Creating a firmware backup
Disabling AutoRCM - DO NOT SKIP THIS STEPS! Although all software can detect whether your console is patched or not and disable AutoRCM for patched consoles, you still need to check and ensure that AutoRCM is disabled, otherwise you're guaranteed to get bricked!
Blocking updates in SysNAND – by blocking it at this stage, we protect ourselves from even the theoretical possibility of accidentally updating our 4.1.0 firmware to a higher version. By this point, you should have a backup of your firmware in case something goes wrong!
Creating EmuNANDs - You can create two EmuNANDs, one for the pirated version and one for the licensed version, and switch between them, but only on Atmosphere! This way, you'll have three firmware versions in your system: 4.1.0, which can't be updated and is used as an entry point; an EmuNAND running the latest firmware for the pirated version with Incognito installed and a linked account; and an EmuNAND for the licensed version without any modifications.
Restoring access to Nintendo servers on EmuNAND for a license - Since Incognito_RCM can only work with one EmuNAND, restore access immediately after creating the first EmuNAND and use it to launch the license. The second EmuNAND will be for the pirated version and will not have access to Nintendo servers. If you don't plan to create an EmuNAND specifically for the license and online use, simply skip this step.
EmuNAND is updated to the latest system firmware version . Now, launch the custom firmware. It will automatically launch from the EmuNAND you created earlier.▼ We will need to update it to the latest version of the system software, while leaving the SysNAND ▼ in its original form, without any traces of running custom firmware
Account linking is the final touch. Some games require account linking to work.
The launch of the games is the final part, for which everything was done
Using an already flashed console
Materials for independent study
Frequently Asked Questions
Problems and their solutions
Using cheats in EdiZon
Backing up and restoring saves
Online for the flashed and banned
Launching Homebrew Launcher
Emulate Amiibo with the emuiibo module
Materials for independent study
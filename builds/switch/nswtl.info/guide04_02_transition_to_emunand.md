Transition to EmuNAND for already flashed
You can find most of the answers to typical questions in the FAQ section.
If something goes wrong, don't panic! First, read the Problems and Solutions section.
If you are a MacOS user, use these tips to avoid memory card problems.
Make backups of your saves as often as possible!
If the console freezes or shows no signs of life, turn it off by holding the (POWER) button for 30 seconds, then turn it on and forward the payload!
This guide is for users who already have a firmware installed and created a clean backup of the system before installing the custom firmware. If you're one of them, you can follow these instructions to copy your current firmware to EmuNAND, then restore the original backup created before flashing it, and play official games and go online from it. If you don't have a clean backup, all is not lost. Read more on this page.

With the advent of EmuNAND ▼ In custom firmware, we can separate our pirated needs from the official firmware. This requires a backup of the original firmware, otherwise the whole idea is pointless. What we'll do is transfer our flashed SysNAND to EmuNAND and run the custom firmware .▼ from it, and into the system partition, in NAND, we will restore our clean backup, from which we will then launch the license.

If your console has been banned, or you've had the serial number deleted via Incognito and don't have a backup of the original serial number to restore, there's no need to follow these instructions. You can use your firmware as you did before. You won't gain anything from creating EmuNAND. The exception is Mariko consoles .▼ EmuNAND is highly recommended in these devices because these consoles don't have as flexible firmware recovery tools as Erista -based consoles.▼

When you select Semi-stock , the stock version will launch, with all atmosphere patches except those related to running unlicensed software. This means you can use translations and mods for games, even with a license. Keep in mind that using mods or cheats in online games will inevitably result in a ban. Using mods in offline games is permitted. If you have a theme installed in EmuNAND, it will also appear in the stock version. This won't result in a ban. While in Semi-stock, you can reboot the console directly from the menu to Hecate, as well as update the stock system software through the console settings without losing AutoRCM. Homebrew will also work in stock, including save managers, allowing you to backup your licensed game saves and transfer them to and from EmuNAND (at your own risk). Keep in mind that some games (e.g., Animal Crossing) may track such manipulations, so do so at your own risk. For simple play, seven-stoke is completely safe.

If you want to use pure stock software without modifications, then on the first page of Hekate, select More Configs -> Full Stock . If your console has AutoRCM enabled, you will need to insert a dongle to boot into stock software or disable AutoRCM.

If you use Caffeine ▼ , then to play the licensed game, you're not running SysNAND, but EmuNAND, which is specially designed for this purpose! Consoles with Caffein installed use SysNAND exclusively to run the exploit!

After completing each instruction in the list below, return to this page and proceed to the next step. If you've already completed any of the steps, you don't need to repeat them.

Creation of EmuNAND
Caffeine users ▼ You will have to create another EmuNAND to run the official firmware
Restoring a backup copy of the original firmware
Caffeine users ▼ To play the licensed game, you will need to run it on a non- SysNAND device. ▼ , and EmuNAND ▼ , created specifically for the license
If you don't have the original backup, you can format your SysNAND using TegraExplorer:
hecate ▼ >  payloads  >  TegraExplorer.bin  >  SystemWipe.te 
If you had Incognito installed and the serial number did not return even after restoring the original backup, restore it manually using these instructions.
Launching custom firmware - now custom firmware is launched via EmuNAND ▼ , and the license launch is via SysNAND ▼ or EmuNAND ▼ , created specifically for the license. Forgot how to launch the first and second ones? Return to the instructions for creating emunand and refresh your memory.
Updating the official firmware to the recommended system software version
ATTENTION!!! NEVER UPDATE THE FIRMWARE IN SysNAND ▼ , if you use Caffeine ▼ Make a copy of SysNAND in a separate emuMMC and update it there. Use it to flash the official firmware!
Always download firmware via hekate!
It could be a regular SysNAND ▼ , when working with Fusée Gelée ▼ , or another EmuNAND, if working with Caffeine ▼ .
Using an already flashed console
If your original firmware was earlier than 4.0.1, you likely have the NoGC patch enabled, which may prevent the cartridge slot from working. Disable NoGC in the hekate settings.

Materials for independent study
Frequently Asked Questions
Problems and their solutions
Using cheats in EdiZon
Backing up and restoring saves
Online for the flashed and banned
Launching Homebrew Launcher
Emulate Amiibo with the emuiibo module
Materials for independent study
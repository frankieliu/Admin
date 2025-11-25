Installing EmuNAND
You can find most of the answers to typical questions in the FAQ section.
If something goes wrong, don't panic! First, read the Problems and Solutions section.
If you are a MacOS user, use these tips to avoid memory card problems.
Make backups of your saves as often as possible!
If the console freezes or shows no signs of life, turn it off by holding the (POWER) button for 30 seconds, then turn it on and forward the payload!
For users who already have a firmware installed and want to restore the ability to play online on an already-flashed console, and only pirate EmuNAND, there is a separate instruction - Transition to EmuNAND for already-flashed

What you need to know about EmuNAND
EmuNAND is a copy of the system firmware located on the memory card from which the system boots. If there's emuNAND, then there's stock firmware .▼ Firmware. Typically, stock firmware, SysNAND, is used for online play of purchased or officially downloaded games from the eShop. If you don't want to run it on SysNAND, ▼ If you're running pirated software, the chances of getting banned are extremely low. EmuNAND, on the other hand, is used specifically to run pirated software. It specifically hides the console's serial number, so even with a working internet connection, Nintendo can't detect that unauthorized software is running on the console.

You may need EmuNAND if…
You want to play purchased/free games online. In this case, you'll boot into EmuNAND for pirated games, and SysNAND ▼ Use it exclusively for playing licensed games. This significantly reduces the chance of being banned.
Do you use Caffeine? ▼ In this case, you have no choice and the only way to flash the console is to use EmuNAND.
You're using 4IFIR for overclocking. It requires emunand for security reasons.
In other cases, EmuNAND is not necessary. That is, if you're just planning to play pirated games and aren't interested in online play, EmuNAND won't be of any use.

Remember that without EmuNAND, running Full Stock or Semi-Stock after installing pirated versions of the game on your console will inevitably result in a ban!

If you really want to play online but have already been banned, EmuNAND won't help you.

Is it possible to work without EmuNAND?
Yes, absolutely. If you don't need online play on your console, or your console is already banned, you won't need EmuNAND.

How much space does EmuNAND take up?
Typically, the EmuNAND size is equal to the console's internal storage. All Switch models except the OLED have 32GB, while the OLED has 64GB. Keep in mind that you won't be able to use your console's internal storage (the built-in 32GB) to install games, as the EmuNAND itself, which is located entirely on the memory card, will act as internal storage. This means that when you launch EmuNAND, you'll see "internal storage" that can be used to install games, but this is the EmuNAND's internal storage, located on the memory card, not the console itself. It's important to understand this.

To make things easier to understand, imagine you've removed the console's internal memory and placed it inside your memory card. This is EmuNAND. When you're working from EmuNAND, you don't have access to your console's physical internal memory, which is located on a separate chip. When you're using the internal memory, SysNAND ▼ , then you do not have direct access to its copy on the memory card - EmuNAND.

Pros and cons of using EmuNAND
Pros
Complete isolation from the main system – EmuNAND is in a completely isolated environment, so actions within it have no effect on the main system. It has separate games, separate saves, and separate logs. If you damage EmuNAND, it won't affect the main system, and the console will continue to function.
Safe online is a consequence of the previous point. Thanks to the isolation of the emunand, you can safely use the stock firmware (and the console's internal memory) with minimal risk of being banned.
Easy to backup - since the emunand is on the card, it can simply be copied to the PC periodically as a backup.
Cons
The console's internal storage can't be used —only the space on your memory card will be available for installing games and apps. The console's built-in 32GB will only be available for official firmware updates. However, in the settings, you'll still see a virtual "internal storage" that's actually located on the console's memory card, as EmuNAND is just a copy of the internal storage on the SD card.
How to transfer EmuNAND to another card
If EmuNAND is stored on a separate partition, you should use EmuTool or a similar program. If EmuNAND is created as files (which is what we'll be creating in this guide), it can be transferred by simply copying it. Remember that the target card must be in FAT32 format.

How to Backup EmuNAND on PC
To create a backup copy of EmuNAND, simply copy the folder  emuMMC/SD00/eMMC  (it  SD00  may have a different name) to your PC.

When you select Semi-stock , the stock version will launch, with all atmosphere patches except those related to running unlicensed software. This means you can use translations and mods for games, even with a license. Keep in mind that using mods or cheats in online games will inevitably result in a ban. Using mods in offline games is permitted. If you have a theme installed in EmuNAND, it will also appear in the stock version. This won't result in a ban. While in Semi-stock, you can reboot the console directly from the menu to Hecate, as well as update the stock system software through the console settings without losing AutoRCM. Homebrew will also work in stock, including save managers, allowing you to backup your licensed game saves and transfer them to and from EmuNAND (at your own risk). Keep in mind that some games (e.g., Animal Crossing) may track such manipulations, so do so at your own risk. For simple play, seven-stoke is completely safe.

If you want to use pure stock software without modifications, then on the first page of Hekate, select More Configs -> Full Stock . If your console has AutoRCM enabled, you will need to insert a dongle to boot into stock software or disable AutoRCM.

If you use Caffeine ▼ , then to play the licensed game, you're not running SysNAND, but EmuNAND, which is specially designed for this purpose! Consoles with Caffein installed use SysNAND exclusively to run the exploit!

Creation of EmuNAND
Preparatory work
Launch the console and select the light theme in the Switch settings, and also rename your account to “SysNAND”
This must be done so that you can always visually distinguish EmuNAND from SysNAND.
You can also set a dark theme in SYSNAND and a light theme in EmuNAND—it doesn't matter. The main thing is that you can visually distinguish between the two partitions.
Boot into the official firmware and disable cloud storage in the console settings (Settings -> Data Management -> Cloud Storage -> Settings), if enabled. If not, skip this step.
If you missed this step and you had cloud saves enabled, then an error will pop up in Emunand when you launch games. To fix it, delete the account on which the error appears in Emunand via DBI (homebrew) > Tools > Delete account , then create a new one with the same name.
The next step will erase all data on your memory card, so transfer it to a PC.
All games installed on the memory card are located in the folder  Nintendo 
All saves are located in the console's internal memory and will not be deleted, even if you ignore this step.
Format your memory card to FAT32
Do not format if you have already done so during the backup creation stage.
Yes, FAT32. No, there won't be any issues with games larger than 4GB.
Do this even if your memory card contains no data.
Follow these instructions exactly.
Make sure you enable showing file extensions if you are on Windows.
Preparatory work
Creation of EmuNAND
If you just made a backup and didn't delete it from your memory card
Turn on your console while holding the volume down button to boot into hekate
Go to “ emuMMC ”
Click “ Migrate emuMMC ” -> “ Backup ”
Your backup will be converted to emunand. This means you won't need to delete it later.
Once finished, click “ OK ”
Now, when you start the console, it will automatically launch emuMMC.
To get into the official firmware, run hekate -> “ Launch ” -> “ Full Stock ”
If you just made a backup and didn't delete it from your memory card
If you haven't made a backup recently, or deleted it from your memory card
Turn off the console
Insert the memory card into your PC and install kefir ▼ , if you haven't already done so, then return the memory card to the console
Turn on your console while holding the volume down button to boot into hekate
Go to “ emuMMC ”
Click “ Create emuMMC ” -> “ SD File ”
To create an emuMMC, you need at least 32GB of free space on the card, or 64GB if you have an OLED! If you don't have that much, try a different card or delete some games from your console and boot to stock mode.
After finishing creating emuMMC, click “ OK ”
Now, when you start the console, it will automatically launch emuMMC.
To get into the official firmware, run hekate -> “ Launch ” -> “ Full Stock ”
If you haven't made a backup recently, or deleted it from your memory card
Creation of EmuNAND
Launching the firmware
Launch of EmuNAND
By default, kefir is configured in such a way that when passing  payload.bin  from the kefir composition ▼ Atmosphere will load EmuNAND if it's present and enabled. If it's not present or enabled, it will load SysNAND with all patches. This means that without EmuNAND, running Full Stock or Semi-Stock after installing a pirated version on your console will inevitably result in a ban!

If you are in hekate ▼ , then just go to “ Launch ” -> “ Atmosphere ”

Launch of EmuNAND
Working with stock firmware
Launch of the drain
When you select Semi-stock , the stock version will launch, with all atmosphere patches except those related to running unlicensed software. This means you can use translations and mods for games, even with a license. Keep in mind that using mods or cheats in online games will inevitably result in a ban. Using mods in offline games is permitted. If you have a theme installed in EmuNAND, it will also appear in the stock version. This won't result in a ban. While in Semi-stock, you can reboot the console directly from the menu to Hecate, as well as update the stock system software through the console settings without losing AutoRCM. Homebrew will also work in stock, including save managers, allowing you to backup your licensed game saves and transfer them to and from EmuNAND (at your own risk). Keep in mind that some games (e.g., Animal Crossing) may track such manipulations, so do so at your own risk. For simple play, seven-stoke is completely safe.

If you want to use pure stock software without modifications, then on the first page of Hekate, select More Configs -> Full Stock . If your console has AutoRCM enabled, you will need to insert a dongle to boot into stock software or disable AutoRCM.

If you use Caffeine ▼ , then to play the licensed game, you're not running SysNAND, but EmuNAND, which is specially designed for this purpose! Consoles with Caffein installed use SysNAND exclusively to run the exploit!

Log in to hekate ▼ using an exploit supported on your console, by running the payload  payload.bin  from the kefir  .zip  archive ▼
Hold (VOL-) on the console when the kefir logo appears to enter hekate
Skip this step if you are already in hekate
Go to “ Launch ”
Run “ Full Stock ” to run the official firmware ▼
Running EmuNAND from stock
If you are in Semi-Stock , start Uberhand ((L) + (R3) + (DDOWN)), go to the Packages menu by pressing right and select Emunand
If you are in Full Stock and your console is chipped, just reboot the console
If you are in Full Stock mode on the console, without a chip:
Turn off the set-top box
Run custom ▼ using an exploit supported by your console:
Run the payload  payload.bin  from the kefir  .zip  archive ▼ using Fusée Gelée or use Caffeine to load custom
It's quite easy to turn on a chipped console
Working with stock firmware
Important to know
Without EmuNAND, running Full Stock or Semi-Stock after installing pirated software on your console will inevitably result in a ban!
Actions you perform in EmuNAND do not affect the state of SysNAND and vice versa.
If you moved a SysNAND to EmuNAND that already had games installed, they will not work in EmuNAND until you move the folder  Nintendo  to the folder  emuMMC/SD00 
Formatting (factory reset) SysNAND does not affect EmuNAND and vice versa
If you use Fusée Gelée ▼ For hacking, you can update the SysNAND to the latest firmware, rather than creating a separate emuMMC partition for the licensed game, and use it to play the licensed game, including online. It's safe!
NEVER update SysNAND if you use Caffeine to flash firmware! Updating SysNAND will prevent you from running the jailbreak! We'll install protection on SysNAND in the future to prevent accidental updates!

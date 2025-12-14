# Problems and Solutions

> This guide is created based on guides by xHЯ - developer of [KEFIR](https://github.com/rashevskyv/kefir/releases/latest).

> Most common problems can be solved by [using KEFIR](kefir.md).
>
> We strongly recommend [using DBI](https://github.com/rashevskyv/dbi/releases) for game installation.
>
> The best way to get games, DLC and updates today is the Telegram bot [Switch Torrent Library](https://t.me/Switch_library_bot).

> If you're a MacOS user, follow [these recommendations](sd-macos.md) to avoid memory card issues.

> Make [save backups](backup-saves.md) as often as possible!

> **If the console freezes or shows no signs of life, turn it off by holding the POWER button for 30 seconds, then turn it on and inject the payload!**

---

This section contains only the most common problems and their solutions. The section with answers to the most frequently asked questions is located here - [FAQ](faq.md)

## Firmware Launch Problems

<details>
<summary>Console hangs on Switch logo</summary>

Possible solutions:

1. Make sure you can boot into stock. If so, you may have installed some system modules that interfere with boot. To do this:
   1. Launch **hekate** → **Payloads** → `TegraExplorer` → `kefir-helper.te`
   2. If the console works after this, look for the problem in installed modules

2. Reinstall [kefir](kefir.md) cleanly. To do this, delete everything from the memory card except the `Nintendo` and `emummc` folders and reinstall kefir

3. Format your memory card in FAT32

4. Reinstall [kefir](kefir.md) cleanly. To do this, delete everything from the memory card except the `Nintendo` and `emummc` (or `sxos/emunand`) folders and reinstall kefir

5. Check if the `USER` partition is mounted. To do this:
   1. Launch **hekate** → **Payloads** → `TegraExplorer.bin`
   2. Select **Browse EMUMMC** if **EmuNAND** doesn't launch or **Browse EMMC** if SysNAND doesn't launch
   3. Go to the `USER` partition and see if it opens

</details>

<details>
<summary>Console black screen after launching CFW</summary>

1. Wait 1-2 minutes - first boot can take a long time
2. Try launching with **VOL-** held down to access the payload menu
3. Check if you're on supported firmware (21.0.0 or below)
4. Try reinstalling kefir

</details>

<details>
<summary>Can't enter RCM mode</summary>

1. Check if your jig is making proper contact
2. Clean the Joy-Con rail contacts with alcohol
3. Try different jigs or paperclip methods
4. For patched consoles - you need a modchip

</details>

<details>
<summary>Payload injection fails</summary>

1. Try a different USB cable
2. Try a different USB port on PC
3. Try different payload injector software
4. On Android: try different apps or use PC instead
5. Check if drivers are installed correctly

</details>

## Game Installation Issues

<details>
<summary>Games won't install</summary>

1. Use the latest version of [DBI](https://github.com/rashevskyv/dbi/releases)
2. Check if you have enough free space
3. Make sure your SD card is formatted as FAT32
4. Check the game files for corruption
5. Try installing with [Tinfoil](tinfoil.md) instead

</details>

<details>
<summary>Games crash when launching</summary>

1. Update your game to the latest version
2. Update your firmware to match the game's required version
3. Check if you have the required DLC
4. Try reinstalling the game
5. Check for save file corruption with JKSV

</details>

<details>
<summary>DLC/Updates won't install</summary>

1. Make sure you have the base game installed first
2. Use DBI's "Install all DLCs to base game" option
3. Check region compatibility
4. Redownload the DLC/Update files

</details>

## SD Card Issues

<details>
<summary>Console can't read SD card</summary>

1. Make sure card is formatted as FAT32
2. Try a different SD card
3. Clean SD card contacts
4. Test card in PC/card reader
5. Check if card is fake (use [H2testw](https://www.h2testw.org/))

</details>

<details>
<summary>SD card works in PC but not in Switch</summary>

1. Format card in Switch first
2. Use official Nintendo format method
3. Try smaller SD card (32GB) to test
4. Check if card is U3 rated or higher

</details>

## Homebrew Issues

<details>
<summary>Homebrew Launcher won't open</summary>

1. Make sure you have the latest hbmenu.nro
2. Check if atmosphere/contents/0000000000000000 exists
3. Try launching album with different keys pressed
4. Update your homebrew applications

</details>

<details>
<summary>Cheats not working</summary>

1. Make sure cheat files are in correct location: `/atmosphere/contents/[TitleID]/cheats/[BuildID].txt`
2. Check if build ID matches your game version
3. Enable cheats in Tesla menu
4. Use Edizon or JKSV for save editing instead

</details>

## EmuNAND Issues

<details>
<summary>Can't create EmuNAND</summary>

1. Make sure you have enough free space (32GB regular, 64GB OLED)
2. Check if SD card is formatted as FAT32
3. Try creating EmuNAND from backup instead of SysNAND
4. Make sure you have a full NAND backup first

</details>

<details>
<summary>EmuNAND won't boot</summary>

1. Check your hekate_ipl.ini configuration
2. Make sure emummc folder exists and is not empty
3. Try recreating EmuNAND
4. Check if you're using correct boot option

</details>

## Network Issues

<details>
<summary>Can't connect to internet</summary>

1. Check airplane mode is off
2. Forget and reconnect to WiFi
3. Restart your router
4. Try different network
5. Check if 90DNS is configured correctly

</details>

<details>
<summary>Error 2101-0001</summary>

This is a general system error. Try:
1. Rebooting the console
2. Checking for corrupted data
3. System maintenance in settings
4. As last resort, restore NAND backup

</details>

## Performance Issues

<details>
<summary>Console runs slow/lags</summary>

1. Disable unnecessary sys modules
2. Disable overclocking if enabled
3. Free up space on SD card
4. Close background applications
5. Check for thermal issues

</details>

<details>
<summary>Battery drains quickly</summary>

1. Lower screen brightness
2. Disable Bluetooth/WiFi when not needed
3. Enable airplane mode when possible
4. Check battery health with battery info apps
5. Consider battery replacement if old

</details>

## Ban Prevention

<details>
<summary>Worried about getting banned?</summary>

1. Use EmuNAND for all unofficial activities
2. Keep SysNAND clean and offline
3. Use 90DNS or incognito mode
4. Don't play leaked games early
5. Avoid online features in pirated games

</details>

## Emergency Recovery

<details>
<summary>Console won't boot at all (brick)</summary>

1. Don't panic - most "bricks" are recoverable
2. Try booting into RCM and inject payload
3. If RCM works, restore your NAND backup
4. If AutoRCM is installed, you'll always need payload injection
5. Contact professional help if hardware is damaged

</details>

## When All Else Fails

1. **Start over**: Clean SD card, reinstall everything fresh
2. **Ask for help**: Join Discord servers or forums
3. **Check updates**: Make sure everything is latest version
4. **Consider professional help**: Some issues require expertise

---

**SWITCH TORRENT LIBRARY TELEGRAM BOT**

THE LARGEST FREE GAME LIBRARY FOR NINTENDO SWITCH

[JOIN NOW. PASSWORD: LONDON](https://t.me/Switch_library_bot)
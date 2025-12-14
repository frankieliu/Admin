# NAND Backup and Restore

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

> ⚠️ **Strictly not recommended to skip this step!**
> If you already have a backup, it's not necessary to make it again. However, make sure your backup is complete (RAW, BOOT0\1, keys)

> ⚠️ Backup and keys are unique for each console! You cannot restore a console using another console's backup. Moreover, after restoring someone else's backup, you'll get a brick that can only be restored by applying your own backup. Approach this responsibly.

## What You'll Need

- Installed fresh [kefir](kefir.md)
- Working microSD with at least 32GB free space (64GB for OLED), formatted as FAT32
  - Be sure to [check your card](https://3ds.sdsetup.com/) before making a backup!
- Format your memory card as FAT32
  - Yes, specifically as FAT32. No, there won't be problems with games larger than 4GB
  - Do this even if your memory card doesn't contain data
  - Follow [this instruction](https://www.sdcard.org/downloads/formatter/)

## Creating a Backup

### Part I - Dumping Keys

1. Install [kefir](kefir.md) according to the instructions in its repository
   - If you've already done this, no need to repeat
2. Enter **hekate** using the exploit supported on your console by launching the `payload.bin` from the kefir `.zip` archive
   1. Hold (VOL-) on the console during the kefir logo appearance to enter hekate
      - Skip this step if you're already in hekate
3. Go to the "Payloads" menu
4. Select "Lockpick_RCM.bin"
5. Wait for the keys to be dumped
6. The keys will be saved to `/switch/prod.keys`

### Part II - Creating Full NAND Backup

1. Go to "Tools" → "Backup Options"
2. Select "Full NAND backup (includes BOOT0 & BOOT1)"
3. Wait for the backup to complete - this may take 10-30 minutes
4. The backup will be saved to `/backup/`
5. You should have these files:
   - `BOOT0`
   - `BOOT1`
   - `rawnand.bin` (or split into parts if your SD is exFAT)

### Part III - Verifying Backup

1. Check the backup size:
   - Regular Switch: ~29.8 GB
   - Switch OLED: ~58.8 GB
2. Check that all files are present and not corrupted
3. **IMPORTANT**: Copy your backup to your computer and/or external drive

### Part IV - Additional Backups

1. Create a backup of your essential files:
   - `/prod.keys` (dumped in Part I)
   - `/backup/` folder contents
   - `/switch/` folder (homebrew)
   - Save files from `/Nintendo/save/`

## Restoring from Backup

> ⚠️ **WARNING**: Restoring NAND will erase everything currently on your console's internal storage!

### When to Restore:
- Console is bricked (won't boot)
- Corrupted system files
- Need to return to completely stock state
- Selling the console (to remove all personal data)

### Restoration Process:

1. **Boot into Hekate**
   - Power off console
   - Enter RCM and inject hekate payload

2. **Prepare for Restore**
   - Copy your backup files to SD card if not already there
   - Ensure backup files are in `/backup/` folder

3. **Select Restore Option**
   - Go to "Tools" → "Restore Options"
   - Select "Full NAND restore (includes BOOT0 & BOOT1)"

4. **Choose Backup**
   - Select your backup files from the list
   - Verify the correct backup is selected

5. **Begin Restore**
   - Confirm you want to proceed
   - Wait for the restore to complete (10-30 minutes)
   - Do not power off during restore!

6. **Post-Restore**
   - Console will reboot automatically
   - Initial setup may be required
   - Reinstall any custom firmware if desired

## Important Notes

- **Always keep multiple copies** of your backup in different locations
- **Test your backup** by attempting to restore it before you actually need it
- **Keep backups organized** with date and console information
- **Update backups** after major system updates
- **Never share** your backup - it contains unique console identifiers
- **Store keys separately** from NAND backup for security

## Backup Naming Convention

Recommended format: `Switch_Backup_YYYY-MM-DD_[Serial]`

Example: `Switch_Backup_2025-12-14_XAW10000000000`

## Emergency Procedures

If you can't access Hekate:
1. Try different payload injectors
2. Check your jig connection
3. Try AutoRCM (if installed)
4. Contact a professional for hardware recovery

---

**SWITCH TORRENT LIBRARY TELEGRAM BOT**

THE LARGEST FREE GAME LIBRARY FOR NINTENDO SWITCH

[JOIN NOW. PASSWORD: LONDON](https://t.me/Switch_library_bot)
# macOS SD Card Recommendations

> This guide is created based on guides by xHЯ - developer of [KEFIR](https://github.com/rashevskyv/kefir/releases/latest).

> Most common problems can be solved by [using KEFIR](kefir.md).
>
> We strongly recommend [using DBI](https://github.com/rashevskyv/dbi/releases) for game installation.
>
> The best way to get games, DLC and updates today is the Telegram bot [Switch Torrent Library](https://t.me/Switch_library_bot).

> You can find most answers to common questions in the [F.A.Q.](faq.md) section.
>
> If something goes wrong, don't panic! First read the [Problems and Solutions](troubleshooting.md) section.

> Make [save backups](backup-saves.md) as often as possible!

> **If the console freezes or shows no signs of life, turn it off by holding the POWER button for 30 seconds, then turn it on and inject the payload!**

---

## macOS SD Card Issues

macOS has specific behaviors with SD cards that can cause problems when hacking your Nintendo Switch. Follow these recommendations to avoid issues.

## Common Problems

1. **Hidden files**: macOS creates hidden files that can cause issues
2. **APFS/APM partitioning**: Not compatible with Switch
3. **File size limitations**: Large files may appear corrupted
4. **Time Machine backups**: Can create unwanted files

## Recommended Tools

### SD Card Formatter

1. Download [SD Card Formatter](https://www.sdcard.org/downloads/formatter/)
2. This properly formats cards for Switch use
3. Use "Overwrite format" option for best results

### Alternative: Terminal Commands

If SD Card Formatter doesn't work:

```bash
# 1. Identify your SD card (be VERY careful with this)
diskutil list

# 2. Unmount the disk (replace X with your disk number)
sudo diskutil unmountDisk /dev/diskX

# 3. Format the card (replace X with your disk number)
sudo newfs_msdos -F 32 /dev/diskX
```

## Before You Start

1. **Disable iCloud Drive** for SD card folder
2. **Turn off Time Machine** for the SD card
3. **Eject properly** after each use

## File Transfer Issues

### Workarounds

1. Use **Android File Transfer** for large files
2. Try **FTP server** on Switch
3. Use a **Windows VM** for problematic files
4. Upload to cloud service and download on Switch

### Avoiding Problems

1. Don't use Finder for direct file operations
2. Avoid drag-and-drop for large game files
3. Check file integrity after transfer

## Hidden Files

### Finding Hidden Files

```bash
# Show hidden files in Finder
defaults write com.apple.finder AppleShowAllFiles YES

# Hide them again
defaults write com.apple.finder AppleShowAllFiles NO
```

### Removing Problematic Files

```bash
# Remove .DS_Store files
find /Volumes/SDCARD -name ".DS_Store" -delete

# Remove __MACOSX folders
find /Volumes/SDCARD -name "__MACOSX" -type d -exec rm -rf {} +
```

## Partitioning Issues

### Check Current Format

```bash
diskutil info /dev/diskX
```

### Correct Format Should Be:
- File System: MS-DOS (FAT32)
- Partition Map: MBR
- Block Size: 4096 or default

## Best Practices

### For Daily Use

1. Always **eject** before removing SD card
2. Use **SD card reader**, not Switch for file transfer
3. **Verify** game files after transfer
4. Keep **backups** of important saves

### Recommended Workflow

1. Format SD card using SD Card Formatter
2. Transfer files using **Terminal** or **FTP**
3. Verify integrity
4. Safely eject

## Terminal Tips

### Copy Commands

```bash
# Copy files without attributes
rsync -av --no-xattr --no-acl source/ destination/

# Copy with checksum verification
rsync -avc source/ destination/
```

### Batch Operations

```bash
# Fix permissions
chmod -R 644 /Volumes/SDCARD/
find /Volumes/SDCARD/ -type d -exec chmod 755 {} +
```

## Alternative Solutions

### Use Boot Camp

1. Install Windows on your Mac
2. Boot into Windows for file operations
3. Use Windows tools for SD card management

### Use Virtual Machine

1. Run Windows VM (Parallels, VMware, VirtualBox)
2. Pass through SD card reader
3. Use Windows for file operations

---

**SWITCH TORRENT LIBRARY TELEGRAM BOT**

THE LARGEST FREE GAME LIBRARY FOR NINTENDO SWITCH

[JOIN NOW. PASSWORD: LONDON](https://t.me/Switch_library_bot)
# Migrating from SX OS to Atmosphere

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

## Why Migrate from SX OS?

- **SX OS is outdated**: No longer updated
- **Atmosphere is actively developed**: Regular updates and features
- **Better homebrew support**: More compatible applications
- **Open source**: Transparent development
- **KEFIR bundle**: All-in-one solution

## Pre-Migration Checklist

### Before You Start

1. **Backup everything**:
   - Create full [NAND backup](backup-nand.md)
   - Backup all save files
   - Copy important files to PC

2. **Check what you have**:
   - EmuNAND or SysNAND setup
   - Installed games and saves
   - SX OS license (if you have one)

3. **Prepare tools**:
   - [KEFIR](https://github.com/rashevskyv/kefir/releases)
   - DBI installer
   - JKSV for saves

## Migration Process

### Step 1: Backup Saves

1. Launch JKSV or Checkpoint on SX OS
2. Backup all game saves to SD card
3. Copy save backups to PC for safety

### Step 2: Remove SX OS

1. Power off console
2. Remove SD card
3. Delete SX OS folders from SD card:
   - `/sxos/`
   - `/reinx/` (if present)
   - Any custom bootloader files

### Step 3: Install KEFIR

1. Download latest KEFIR
2. Extract to your computer
3. Copy contents to SD card
4. Replace bootloader files

### Step 4: Boot into Atmosphere

1. Insert SD card in console
2. Inject payload (if using RCM)
3. Boot into Hekate
4. Launch CFW (Atmosphere)

### Step 5: Verify Setup

1. Check if games are still accessible
2. Test homebrew launcher
3. Verify system settings
4. Check EmuNAND if used

### Step 6: Reinstall Games (if needed)

If games don't appear:
1. Use DBI to reinstall
2. Get games from [Switch Torrent Library](https://t.me/Switch_library_bot)
3. Install updates and DLC

### Step 7: Restore Saves

1. Launch JKSV on Atmosphere
2. Restore save backups
3. Verify saves work correctly

## Special Considerations

### EmuNAND Migration

If you have SX OS EmuNAND:
1. Keep the `emuMMC` folder
2. Configure KEFIR to use existing EmuNAND
3. Boot and verify functionality

### Game Compatibility

Most SX OS installed games will work with Atmosphere:
- NSP files: Fully compatible
- XCI files: Convert to NSP if needed
- Save files: Compatible

## Post-Migration

### What Changes

- **New overlay system**: Tesla instead of SX menu
- **Different boot process**: Hekate instead of SX boot
- **Homebrew access**: Album method
- **Update method**: Different procedure

### What to Learn

1. **Homebrew Launcher**: Access via Album
2. **Tesla Menu**: L+R overlay
3. **DBI Installer**: New game management
4. **CFW updates**: Different method

## Troubleshooting

### Common Issues

**Games not appearing**:
- They may need reinstallation
- Check file paths
- Verify EmuNAND setup

**Save files not working**:
- Ensure correct restore
- Check folder structure
- Verify game versions

**Boot issues**:
- Check payload injection
- Verify SD card files
- Try different boot option

### Getting Help

- Check [troubleshooting.md](troubleshooting.md)
- Join community forums
- Read KEFIR documentation

## Benefits of Migration

### Advantages of Atmosphere

1. **Active development**: Regular updates and features
2. **Better performance**: More optimized code
3. **More features**: Tesla overlay, sys-clk, etc.
4. **Open source**: Transparent and auditable
5. **Free**: No licensing fees

### New Features Available

- **Tesla overlay menu**
- **sys-clk overclocking**
- **Advanced cheats**
- **Better emuiibo support**
- **More homebrew compatibility**

## Final Steps

### Clean Up

1. Delete any remaining SX files
2. Organize your new setup
3. Update documentation

### Learn the New System

1. Practice launching homebrew
2. Try Tesla overlay features
3. Test DBI installer
4. Explore new options

## Backup Strategy

### Recommended Approach

1. **Keep NAND backup**: From before migration
2. **Save backups**: Regular and multiple copies
3. **SD card backup**: Copy essential folders
4. **Document setup**: Write down important info

---

**SWITCH TORRENT LIBRARY TELEGRAM BOT**

THE LARGEST FREE GAME LIBRARY FOR NINTENDO SWITCH

[JOIN NOW. PASSWORD: LONDON](https://t.me/Switch_library_bot)
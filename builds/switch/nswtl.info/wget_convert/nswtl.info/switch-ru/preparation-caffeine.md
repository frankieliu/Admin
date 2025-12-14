# Caffeine Exploit Preparation

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

This guide prepares you for hacking your Nintendo Switch using the Caffeine exploit. Follow these steps carefully before proceeding.

## What You'll Need

### Hardware Requirements

- Nintendo Switch on firmware 4.0.0 - 4.1.0
- MicroSD card (32GB minimum, FAT32 formatted)
- Computer with internet connection
- USB cable (Type-C to Type-A or Type-C to Type-C)

### Software Downloads

1. **[KEFIR](https://github.com/rashevskyv/kefir/releases)** - Latest release
2. **Caffeine exploit files** - Will be provided during setup
3. **[CheckM8](https://github.com/SciresM/checkm8)** - Browser preparation tool

## Pre-Setup Checklist

### Console Preparation

1. **Verify Firmware Version**:
   - Go to System Settings → System → System Update
   - Must be 4.0.0 or 4.1.0
   - If higher, Caffeine won't work

2. **Charge Your Switch**:
   - Minimum 50% battery
   - Keep connected during setup

3. **Important Notes**:
   - Do NOT update firmware
   - Caffeine requires firmware 4.0.0-4.1.0
   - Use EmuNAND for newer games

### SD Card Preparation

1. **Format as FAT32**:
   - Windows: Use [SD Card Formatter](https://www.sdcard.org/downloads/formatter/)
   - macOS: Use Disk Utility (MS-DOS FAT)
   - Linux: Use GParted or mkfs.vfat

2. **Check Compatibility**:
   - Verify card is genuine
   - Test for fake cards using [H2testw](https://www.h2testw.org/)

## Browser Preparation

### Installing Required Certificates

1. **Download CheckM8**:
   - Get latest release from GitHub
   - Extract to your computer

2. **Prepare Browser**:
   - Clear browser cache
   - Disable extensions
   - Use supported browser

3. **Test Browser**:
   - Access web browser on Switch
   - Navigate to a simple website
   - Verify it works properly

## Downloading KEFIR

1. **Get Latest Release**:
   - Visit [KEFIR Releases](https://github.com/rashevskyv/kefir/releases)
   - Download latest stable version
   - Verify download integrity

2. **Extract Files**:
   - Extract ZIP archive
   - Remember location
   - Check all files are present

## SD Card Setup

### Directory Structure

Create these folders on your SD card:
```
/switch/
/backup/
/config/
```

### Copy Files

1. **KEFIR Files**:
   - Copy all KEFIR files to SD card root
   - Merge folders when prompted
   - Replace any existing files

2. **Verify Installation**:
   - Check all folders exist
   - Verify file structure
   - Confirm no missing files

## Network Configuration

### DNS Settings (Optional)

To block Nintendo servers:
- Primary DNS: `163.172.141.219`
- Secondary DNS: `45.248.48.62`

This prevents accidental updates and telemetry.

### Internet Connection

- Ensure stable WiFi connection
- Test browser connectivity
- Note your network name and password

## Safety Preparations

### Create Computer Backup

1. **Save Files to Computer**:
   - Any existing Switch saves
   - Screenshots
   - Important data

2. **Document Console Info**:
   - Serial number
   - Firmware version
   - Account details

### Prepare for EmuNAND

Since you cannot update firmware:
- Plan for EmuNAND installation
- Understand you'll need it for newer games
- Review [EmuNAND guide](emunand.md)

## Troubleshooting Preparation

### Common Issues

- Browser crashes
- Exploit fails to load
- File transfer errors
- Memory card issues

### Have Solutions Ready

- Alternative browser methods
- Computer tools for file management
- SD card reader for PC access
- Recovery options

## Final Checks

Before starting Caffeine:

- [ ] Firmware is 4.0.0 or 4.1.0
- [ ] SD card formatted as FAT32
- [ ] KEFIR downloaded and extracted
- [ ] Browser tested and working
- [ ] Internet connection stable
- [ ] Console charged
- [ ] Computer ready for file management
- [ ] Read entire [Caffeine guide](caffeine.md)

## What to Expect

The Caffeine exploit process:
1. Browser preparation with CheckM8
2. Visiting exploit URL
3. Launching custom firmware
4. Setting up EmuNAND
5. Installing games

Time required: 30-60 minutes

## Next Steps

After completing preparation:

1. **[Caffeine Guide](caffeine.md)** - Follow the exploit
2. **[EmuNAND Setup](emunand.md)** - Create safe environment
3. **[Game Installation](games.md)** - Install your games
4. **[Usage Guide](usage.md)** - Learn to use your console

## Additional Resources

### Video Tutorials

- Look for Caffeine tutorials on YouTube
- Watch multiple guides for understanding
- Follow up-to-date tutorials

### Community Support

- Switch hacking Discord servers
- GBATemp forums
- Reddit r/SwitchHacks

### Help and Support

- [FAQ](faq.md) - Common questions
- [Troubleshooting](troubleshooting.md) - Problem solving
- Contact support if needed

---

**SWITCH TORRENT LIBRARY TELEGRAM BOT**

THE LARGEST FREE GAME LIBRARY FOR NINTENDO SWITCH

[JOIN NOW. PASSWORD: LONDON](https://t.me/Switch_library_bot)
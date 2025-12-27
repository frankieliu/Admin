# Fusée Gelée Complete Setup Guide - Happy Path Walkthrough

> This guide walks you through the complete Fusée Gelée hacking process from start to finish, assuming everything goes smoothly. This is your "happy path" guide - if you encounter issues, refer to the [troubleshooting guide](troubleshooting.md) for problem-solving.

## Prerequisites Check ✅

Before starting, verify your console is compatible:

### 1. Serial Number Verification
- **Location**: Bottom of your Nintendo Switch console
- **Compatible Ranges**:
  - XAW10000000000 through XAW10074000000
  - XAJ10000000000 through XAJ10020000000
- **Verification Tool**: [Serial Checker](https://damagic.me/SerialChecker/)

❌ **If your console is outside these ranges**, you'll need a [modchip installation](modchip.md) instead.

✅ **If your console is in range**, continue with this guide!

---

## Phase 1: Preparation 🛠️

**Time Required**: 30-60 minutes
**Difficulty**: Beginner

### What You'll Need

**Hardware:**
- Nintendo Switch (unpatched, verified above)
- MicroSD card (32GB minimum, recommend 128GB+)
- USB cable (USB-C to USB-A or USB-C to USB-C)
- Computer (Windows, macOS, or Linux)
- **Jig (shorting tool)** - Choose one:
  - Paperclip (DIY, free but requires skill) - [Instructions in FAQ](faq.md)
  - Commercial RCM jig ($5-15, recommended)
  - RCM Loader dongle ($40-60, most convenient)

**Software Downloads:**
- [Latest KEFIR release](https://github.com/rashevskyv/kefir/releases) (All-in-one CFW package)
- **Payload Injector** - Choose based on your computer:
  - **Windows/macOS/Linux**: [TegraRcmGUI](https://github.com/eliboa/TegraRcmGUI/releases)
  - **Linux Alternative**: [nx-octo](https://github.com/falquke/nx-octo)
  - **Android**: [ReiNX](https://play.google.com/store/apps/details?id=com.reisyukaku.reinx) or similar apps

### Detailed Preparation Steps

Follow the comprehensive [Fusée Gelée Preparation Guide](preparation-fuse.md) for:
- ✅ Console charging and verification
- ✅ SD card formatting (must be FAT32)
- ✅ SD card authenticity testing
- ✅ Software installation and driver setup
- ✅ Creating or obtaining a jig

---

## Phase 2: Initial Setup and Testing 🔧

**Time Required**: 15-30 minutes
**Difficulty**: Beginner

### Step 1: SD Card Setup

1. **Format SD Card**:
   - **Must be FAT32** (not exFAT)
   - Use [SD Card Formatter](https://www.sdcard.org/downloads/formatter/) for best results
   - **macOS users**: Follow [special instructions](sd-macos.md) to avoid issues

2. **Install KEFIR**:
   - Extract the KEFIR `.zip` file to your computer
   - Copy **all contents** to the root of your SD card
   - When prompted, merge folders and replace existing files
   - Verify the SD card now contains folders like `atmosphere`, `bootloader`, `switch`

### Step 2: Payload Injector Setup

1. **Install TegraRcmGUI** (or your chosen injector):
   - Download and install the appropriate version for your OS
   - Install any required USB drivers (Windows may need additional drivers)
   - Launch the application to verify it works

2. **Prepare Payload File**:
   - Locate `payload.bin` in your KEFIR download
   - Note its location - you'll select this file in the injector

### Step 3: First RCM Test

**⚠️ Important**: This is just a test. We'll do the full setup after ensuring everything works.

1. **Power Off Console**:
   - Hold the POWER button for 12+ seconds until screen goes black
   - Console should be completely off

2. **Enter RCM Mode**:
   - Insert your jig into the right Joy-Con rail
   - Connect USB cable between Switch and computer
   - Hold VOLUME UP button
   - While holding VOLUME UP, press and release POWER button
   - Keep holding VOLUME UP for 3-5 seconds
   - **Expected result**: Screen stays black (this is normal!)

3. **Test Payload Injection**:
   - Open your payload injector
   - Select the `payload.bin` file from KEFIR
   - The injector should show your Switch is connected
   - Click "Inject" or "Send Payload"
   - **Expected result**: Switch boots into Hekate menu

✅ **If you see the Hekate menu**: Perfect! Your setup works. Power off and continue to Phase 3.

❌ **If this doesn't work**: Check the [troubleshooting guide](troubleshooting.md) for solutions to common RCM and injection issues.

---

## Phase 3: Essential Safety - NAND Backup 🛡️

**Time Required**: 45-90 minutes
**Difficulty**: Beginner
**⚠️ CRITICAL**: Do not skip this step!

> **Why This Matters**: Your NAND backup is your insurance policy. If anything goes wrong, this backup can restore your console to working condition. **Without it, you could permanently lose your console**.

### Step 1: Boot into Hekate

1. **Enter RCM and inject payload** (as tested in Phase 2)
2. **You should see the Hekate menu** with multiple options
3. **If you see the KEFIR logo instead**: Hold VOL- button during boot to enter Hekate

### Step 2: Create Essential Backups

Follow the detailed [NAND Backup Guide](backup-nand.md):

1. **Dump Console Keys**:
   - Navigate to "Payloads" menu in Hekate
   - Select "Lockpick_RCM.bin"
   - Wait for key dumping to complete
   - Keys saved to `/switch/prod.keys`

2. **Create Full NAND Backup**:
   - Go to "Tools" → "Backup Options"
   - Select "Full NAND backup (includes BOOT0 & BOOT1)"
   - ⏰ **Wait patiently** - this takes 10-30 minutes
   - Backup will be saved to `/backup/` folder

3. **Verify Backup**:
   - Check backup size matches your console:
     - **Regular Switch**: ~29.8 GB
     - **Switch OLED**: ~58.8 GB
   - Ensure you have these files in `/backup/`:
     - `BOOT0`
     - `BOOT1`
     - `rawnand.bin` (or split parts if card is exFAT)

4. **Copy to Safe Location**:
   - **CRITICAL**: Copy the entire `/backup/` folder to your computer
   - **Also copy**: `/switch/prod.keys` file
   - Store in multiple locations (computer, external drive, cloud storage)

---

## Phase 4: First CFW Boot 🚀

**Time Required**: 10-20 minutes
**Difficulty**: Beginner

### Step 1: Launch Custom Firmware

1. **From Hekate main menu**:
   - Select "Launch"
   - Choose "CFW (sysMMC)" for now
   - Console will reboot into Atmosphere

2. **First Boot Wait**:
   - ⏰ **First boot takes 1-3 minutes** - be patient
   - Screen may be black briefly - this is normal
   - Console should boot to normal Switch home screen

3. **Verify CFW is Running**:
   - Look for "AMS" version info in System Settings → System
   - Should show something like "AMS 1.x.x|S" next to firmware version

✅ **Success**: You now have custom firmware running!

### Step 2: Test Homebrew Access

1. **Access Homebrew Launcher**:
   - Hold the **L button** while opening the **Album** app
   - Should open the Homebrew Launcher menu

2. **Essential Homebrew Apps** (included in KEFIR):
   - **DBI**: Game installer (recommended)
   - **JKSV**: Save manager for backups
   - **Checkpoint**: Alternative save manager
   - **Goldleaf**: File manager

✅ **If homebrew works**: Perfect! Continue to Phase 5.

❌ **If homebrew doesn't work**: Check [troubleshooting guide](troubleshooting.md) for homebrew issues.

---

## Phase 5: EmuNAND Setup (Recommended for Safety) 🔒

**Time Required**: 30-60 minutes
**Difficulty**: Intermediate
**⚠️ Highly Recommended**: Protects you from bans while allowing online play

> **What is EmuNAND?**: A copy of your system running from the SD card. Use EmuNAND for piracy/homebrew, keep SysNAND clean for online play. See [EmuNAND Guide](emunand.md) for full details.

### When to Create EmuNAND

✅ **Create EmuNAND if you want to**:
- Play purchased games online safely
- Have maximum protection against bans
- Keep your original system clean
- Test homebrew safely

❌ **Skip EmuNAND if**:
- You only want piracy (no online play)
- You're already banned
- SD card space is very limited
- You don't care about online functionality

### EmuNAND Creation Process

1. **Verify Space Requirements**:
   - **Standard Switch**: 32GB additional space needed
   - **Switch OLED**: 64GB additional space needed

2. **Create EmuNAND**:
   - Boot into Hekate
   - Go to "Tools" → "emuMMC"
   - Select "Create emuMMC" → "SD Raw"
   - Choose "SysNAND" as source
   - Wait for creation (15-45 minutes)

3. **Configure Boot Options**:
   - Hekate will auto-configure boot entries
   - You'll now see both "CFW (sysMMC)" and "CFW (emuMMC)" options

4. **Test EmuNAND**:
   - Boot into "CFW (emuMMC)"
   - Verify it boots normally
   - Check that homebrew works

For detailed instructions, see the [complete EmuNAND guide](emunand.md).

---

## Phase 6: Game Installation and Usage 🎮

**Time Required**: 15-30 minutes setup + ongoing
**Difficulty**: Beginner

### Setting Up Game Installation

1. **Choose Your Environment**:
   - **For Pirated Games**: Use EmuNAND (if created) or SysNAND CFW
   - **For Purchased Games**: Use SysNAND Stock (clean)

2. **Install Games Using DBI** (Recommended):
   - Launch Homebrew Launcher (L + Album)
   - Select "DBI" installer
   - Choose installation method:
     - **Local**: Install from files on SD card
     - **Network**: Install from PC via USB/WiFi
   - Follow the [complete games installation guide](games.md)

3. **Alternative Installers**:
   - [Tinfoil](tinfoil.md): Alternative with more features
   - Awoo Installer: Simple installer option

### Game Sources

- **Recommended**: [Switch Torrent Library Bot](https://t.me/Switch_library_bot) (Password: LONDON)
- Always verify game file integrity before installation
- Keep games organized in folders on your SD card

---

## Phase 7: Save Management Setup 💾

**Time Required**: 10-20 minutes
**Difficulty**: Beginner

### Regular Save Backup Routine

1. **Set Up JKSV** (included in KEFIR):
   - Launch from Homebrew Launcher
   - Explore the interface
   - Practice backing up a save

2. **Create Backup Schedule**:
   - **Before major changes**: Always backup
   - **Weekly**: For games you play regularly
   - **Before CFW updates**: Backup everything

3. **Storage Locations**:
   - Primary: SD card `/JKSV/` folder
   - Secondary: Copy to computer regularly
   - Emergency: Cloud storage for critical saves

For detailed instructions, see [Save Backup Guide](backup-saves.md).

---

## Phase 8: Advanced Features (Optional) ⚡

**Time Required**: Variable
**Difficulty**: Intermediate to Advanced

### AutoRCM (Convenience Feature)

**What it does**: Automatically enters RCM mode when powered on (no jig needed)

⚠️ **Important Considerations**:
- **Pros**: No jig needed, faster boot process
- **Cons**: Can't boot stock without payload, harder to detect when console is off
- **NEVER use with Caffeine exploit** - will brick your console!

**Setup**: See [AutoRCM Guide](autorcm.md) for detailed instructions.

### Performance Enhancements

1. **Overclocking** (sys-clk module):
   - Improves performance in demanding games
   - Included in KEFIR
   - Access via Tesla overlay (L + R)

2. **Tesla Overlay System**:
   - Hold L + R in any game to access overlay menu
   - Quick access to system tools and cheats

### Cheats and Mods

- **Cheat codes**: See [Cheats Guide](cheats.md)
- **Game mods**: Various modification options
- ⚠️ **Warning**: Using cheats online will result in a ban!

---

## Phase 9: Daily Usage Workflow 📱

**Time Required**: Ongoing
**Difficulty**: Beginner

### Typical Daily Routine

1. **Starting Your Console**:
   - Power on → Enter RCM → Inject payload → Select boot option
   - **With AutoRCM**: Just inject payload after power on
   - **With Modchip**: Power on normally (automatic)

2. **Environment Selection**:
   - **SysNAND Stock**: For purchased games, online play, eShop
   - **SysNAND CFW**: For homebrew with original system
   - **EmuNAND**: For pirated games, testing, mods

3. **Switching Environments**:
   - Power off completely
   - Boot back into Hekate
   - Select different boot option

### Best Practices

- **Keep environments separate**: Don't mix pirated and purchased content
- **Regular backups**: Update your save backups frequently
- **Stay updated**: Check for KEFIR updates monthly
- **Monitor community**: Stay informed about firmware compatibility

For complete usage patterns, see [Usage Guide](usage.md).

---

## Maintenance and Updates 🔧

### Regular Maintenance Schedule

**Weekly**:
- Backup important game saves
- Check for critical homebrew updates
- Verify SD card health

**Monthly**:
- Check for new KEFIR releases
- Update homebrew applications
- Review backup integrity

**Before Major Changes**:
- Full NAND backup
- Complete save backup
- Verify recovery procedures

### Updating Your Setup

1. **Updating Custom Firmware**:
   - Download latest [KEFIR release](https://github.com/rashevskyv/kefir/releases)
   - Backup current setup
   - Replace old files with new ones
   - Test boot process

2. **Firmware Updates**:
   - Can update safely with Fusée Gelée
   - Recommend using [ChoiDujourNX](update-fw.md) to preserve downgrade ability
   - Always backup before firmware updates

---

## Troubleshooting Quick Reference 🆘

### Most Common Issues

| Problem | Quick Fix | Detailed Guide |
|---------|-----------|----------------|
| Can't enter RCM | Check jig contact, verify serial number | [Troubleshooting](troubleshooting.md) |
| Payload injection fails | Try different USB cable/port/software | [Troubleshooting](troubleshooting.md) |
| Black screen after boot | Wait 2 minutes, check firmware compatibility | [Troubleshooting](troubleshooting.md) |
| Games won't install | Update DBI, check storage space | [Games Guide](games.md) |
| Homebrew won't launch | Verify CFW is running, try different method | [HBL Guide](hbl.md) |
| Console seems "bricked" | Try NAND restore, don't panic | [System Recovery](system-wipe.md) |

### Emergency Recovery

1. **If console won't boot**: Try NAND backup restore
2. **If RCM doesn't work**: Verify console compatibility
3. **If completely stuck**: Consult [troubleshooting guide](troubleshooting.md) and community forums

### Getting Help

- **First**: Check the [FAQ](faq.md) for common questions
- **Second**: Review [troubleshooting guide](troubleshooting.md)
- **Third**: Ask on community forums with specific details

---

## Success! What You've Accomplished 🎉

✅ **You now have a fully functional hacked Nintendo Switch with**:

- **Custom Firmware**: Atmosphere (via KEFIR) running on your console
- **Homebrew Access**: Ability to run unofficial software and tools
- **Game Installation**: Can install games via DBI/Tinfoil
- **Save Management**: JKSV for backing up and managing saves
- **Safety Measures**: NAND backup for emergency recovery
- **Optional EmuNAND**: Separate environment for maximum safety
- **Advanced Features**: Tesla overlay, potential overclocking, and more

### Your Next Steps

1. **Explore**: Try different homebrew applications
2. **Organize**: Set up your game library and backup routine
3. **Learn**: Understand the difference between environments
4. **Stay Updated**: Monitor the community for updates and news
5. **Be Safe**: Always backup before making changes

### Important Reminders

- **Keep your NAND backup safe** - it's your lifeline
- **Regular save backups** - protect your gaming progress
- **Don't mix environments** - keep piracy and legitimate use separate
- **Stay informed** - join community forums for support and updates

---

## Additional Resources 📚

### Essential Reading
- [Complete FAQ](faq.md) - Answers to most common questions
- [Troubleshooting Guide](troubleshooting.md) - Solutions to common problems
- [EmuNAND Deep Dive](emunand.md) - Advanced EmuNAND usage
- [Game Installation Guide](games.md) - Detailed installation instructions

### Advanced Topics
- [Custom Firmware Details](cfw.md) - Understanding Atmosphere
- [Cheats and Mods](cheats.md) - Enhancing your games
- [Performance Tuning](usage.md) - Getting the most from your console
- [Network Features](lanplay.md) - LAN play and networking

### Community and Support
- **GBATemp Forums**: Premier Switch hacking community
- **Reddit r/SwitchHacks**: Active discussion and help
- **Discord Servers**: Real-time assistance (search for Switch hacking)

---

**🎮 Congratulations! You've successfully hacked your Nintendo Switch using Fusée Gelée! 🎮**

*Remember: With great power comes great responsibility. Use your hacked console ethically and respect the hard work of game developers.*
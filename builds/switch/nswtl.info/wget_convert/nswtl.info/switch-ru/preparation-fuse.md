# Fusée Gelée Preparation

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

This guide prepares you for hacking your Nintendo Switch using the Fusée Gelée exploit for unpatched consoles.

## Console Compatibility

### Check if Your Console is Unpatched

Use your serial number to check:

1. **Find Serial Number**:
   - Bottom of the console
   - Starts with XAW1xxxxxxx or XAJ1xxxxxxx

2. **Serial Checker**:
   - Visit [damagic.me](https://damagic.me/SerialChecker/)
   - Enter your serial number
   - Check if it's vulnerable

### Compatible Serials

- **XAW10000000000** to **XAW10074000000**
- **XAJ10000000000** to **XAJ10020000000**

If your console is outside these ranges, you need a [modchip](modchip.md).

## What You'll Need

### Hardware Requirements

- Nintendo Switch (unpatched)
- MicroSD card (32GB minimum, FAT32 formatted)
- USB cable for payload injection
- Computer (Windows, macOS, or Linux)

### Software Requirements

1. **[KEFIR](https://github.com/rashevskyv/kefir/releases)** - Latest release
2. **Payload Injector**:
   - Windows: [TegraRcmGUI](https://github.com/eliboa/TegraRcmGUI/releases)
   - macOS: [TegraRcmGUI](https://github.com/eliboa/TegraRcmGUI/releases)
   - Linux: [nx-octo](https://github.com/falquke/nx-octo) or TegraRcmGUI

### Hardware for Payload Injection (Choose one)

1. **Jig/Paperclip**:
   - DIY solution
   - Free but requires skill

2. **RCM Loader**:
   - Commercial dongle
   - Easiest method

3. **Android Phone**:
   - With USB OTG
   - Free apps available

## Pre-Setup Checklist

### Console Preparation

1. **Verify Console Status**:
   - Serial number confirmed unpatched
   - Firmware version (any version works)
   - Console not in AutoRCM

2. **Charge Your Switch**:
   - Minimum 50% battery
   - Keep connected during setup

### SD Card Preparation

1. **Format as FAT32**:
   - Use [SD Card Formatter](https://www.sdcard.org/downloads/formatter/)
   - Quick format is sufficient
   - Full format recommended for new cards

2. **Check Card Health**:
   - Test for counterfeit cards
   - Verify actual capacity
   - Run [H2testw](https://www.h2testw.org/) on PC

## Downloading KEFIR

1. **Get Latest Release**:
   - Visit [KEFIR GitHub](https://github.com/rashevskyv/kefir/releases)
   - Download latest stable version
   - Verify file integrity with checksum

2. **Extract Files**:
   - Extract ZIP archive to your computer
   - Keep extracted files organized
   - Verify all components are present

## SD Card Setup

### Directory Structure

Your SD card should look like this after setup:
```
/
├── atmosphere/
├── bootloader/
├── config/
├── emummc/
├── payload.bin
├── boot.ini
├── hekate_ipl.ini
└── switch/
```

### Copying Files

1. **Copy KEFIR Files**:
   - Copy all contents to SD card root
   - Merge folders when prompted
   - Replace existing files

2. **Verify Installation**:
   - Check file structure
   - Ensure no missing files
   - Confirm proper folder names

## Payload Injection Setup

### Option 1: TegraRcmGUI (Recommended)

1. **Download and Install**:
   - Get from [GitHub releases](https://github.com/eliboa/TegraRcmGUI/releases)
   - Install on Windows/macOS/Linux
   - Install USB drivers

2. **Configure**:
   - Launch application
   - Select payload file: `payload.bin`
   - Set driver options

3. **Test Connection**:
   - Connect Switch (in RCM)
   - Verify it's detected
   - Check if injection works

### Option 2: NX-OCTO (Linux)

1. **Install**:
   ```bash
   pip install nx-octo
   ```

2. **Use**:
   ```bash
   nx-octo --help
   nx-octo --payload payload.bin
   ```

### Option 3: Android Phone

1. **Install App**:
   - ReSwitched
   - NXLoader
   - Switch RCM

2. **Connect**:
   - USB OTG cable
   - Enable USB debugging

## Creating a Jig

### Paperclip Method

1. **Materials**:
   - Small paperclip
   - Needlenose pliers
   - Electrical tape (optional)

2. **Instructions**:
   - Straighten paperclip
   - Bend into shape
   - Ensure proper contact points
   - Add tape for insulation

### Buying a Jig

Better to buy a proper jig:
- More reliable
- Safer for console
- Inexpensive
- Lasts longer

## Entering RCM Mode

1. **Power Off Console**:
   - Hold POWER button for 12+ seconds
   - Screen stays black
   - Console is off

2. **Insert Jig**:
   - Insert into right Joy-Con rail
   - Ensure proper contact
   - Jig should be fully inserted

3. **Enter RCM**:
   - Hold VOLUME UP (+)
   - Press POWER button
   - Release POWER (keep VOLUME UP held)

4. **Check RCM**:
   - Screen should remain black
   - Console detected by injector
   - Blue light on Joy-Con (if connected)

## Testing Setup

### First Injection Test

1. **Connect to Computer**:
   - USB cable connected
   - Console in RCM
   - Injector running

2. **Inject Payload**:
   - Click inject button
   - Console should light up
   - Screen remains black (normal)

3. **Launch Hekate**:
   - Auto-loads KEFIR payload
   - See menu options
   - Can now launch CFW

### Verification Checklist

Before proceeding with full hack:

- [ ] Console is unpatched (serial check)
- [ ] SD card formatted as FAT32
- [ ] KEFIR copied to SD card
- [ ] Payload injector installed
- [ ] Jig made or bought
- [ ] Can enter RCM mode
- [ ] Can inject payload
- [ ] Hekate menu appears

## Troubleshooting

### Cannot Enter RCM

**Possible causes**:
- Console is patched
- Jig not making contact
- Incorrect button combination

**Solutions**:
- Double-check serial number
- Clean Joy-Con rail
- Try different jig
- Hold buttons longer

### Payload Injection Fails

**Possible causes**:
- USB driver issues
- Bad USB cable
- Software problems

**Solutions**:
- Install/reinstall drivers
- Try different cable
- Use different injector
- Try different USB port

### Black Screen After Injection

**Normal for first boot**:
- Wait 30-60 seconds
- Hekate should appear
- If not, try re-injecting

**If persists**:
- Check SD card files
- Try different payload
- Reformat SD card

## Safety Precautions

### Electrical Safety

- Use proper USB cable
- Avoid cheap cables
- Don't force connections
- Disconnect when not in use

### Console Safety

- Don't scratch Joy-Con rail
- Use proper jig size
- Avoid metal shavings
- Be gentle with connections

## Next Steps

After successful preparation:

1. **[Fusée Gelée Guide](fusee-gelee.md)** - Complete the hack
2. **[NAND Backup](backup-nand.md)** - Essential backup
3. **[EmuNAND Setup](emunand.md)** - Create safe environment
4. **[Game Installation](games.md)** - Install your games

## Additional Resources

### Visual Guides

- YouTube tutorials for Fusée Gelée
- Diagrams for jig creation
- Video guides for payload injection

### Community Support

- Switch hacking Discord servers
- GBATemp forums
- r/SwitchHacks on Reddit

### Help Documentation

- [FAQ](faq.md) - Common questions
- [Troubleshooting](troubleshooting.md) - Problem solving
- Contact support if issues persist

---

**SWITCH TORRENT LIBRARY TELEGRAM BOT**

THE LARGEST FREE GAME LIBRARY FOR NINTENDO SWITCH

[JOIN NOW. PASSWORD: LONDON](https://t.me/Switch_library_bot)
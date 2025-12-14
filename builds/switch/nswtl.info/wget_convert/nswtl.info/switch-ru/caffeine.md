# Caffeine Exploit

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

## What is Caffeine?

Caffeine is a software exploit for Nintendo Switch that allows running custom firmware on consoles with firmware versions 4.0.0 - 4.1.0. It's a browser-based exploit that doesn't require any hardware modifications.

## Compatibility

### Supported Firmware
- ✅ **4.0.0** - Supported
- ✅ **4.1.0** - Supported
- ❌ **Other versions** - Not supported

### Console Requirements
- Any Nintendo Switch model (including patched units)
- Must be on firmware 4.0.0 or 4.1.0
- Working internet connection for initial setup

## Preparation

### Before Starting

1. **Check firmware version**:
   - Go to System Settings → System → System Update
   - Verify you're on 4.0.0 or 4.1.0

2. **Prepare SD card**:
   - Format as FAT32
   - [macOS users: see special instructions](sd-macos.md)
   - Minimum 32GB recommended

3. **Download required files**:
   - Latest [KEFIR](https://github.com/rashevskyv/kefir/releases) build
   - Caffeine files from preparation guide

## Installation Process

Follow the detailed instructions in: [Caffeine Preparation Guide](preparation-caffeine.md)

### Overview of Steps

1. **Prepare files** according to preparation guide
2. **Set up browser** with required certificates
3. **Initialize Caffeine** exploit
4. **Install KEFIR** custom firmware
5. **Configure boot options**

## Important Notes

### Firmware Updates

⚠️ **DO NOT UPDATE FIRMWARE!**
- Caffeine only works on 4.0.0 - 4.1.0
- Updating will permanently remove exploit
- Use EmuNAND for newer games

### EmuNAND Requirement

Since you cannot update your firmware:
- **EmuNAND is mandatory** for newer games
- EmuNAND allows running updated firmware while keeping SysNAND at 4.1.0
- See [EmuNAND guide](emunand.md) for setup

### Network Connection

- Required for initial exploit
- Not needed after CFW installation
- Use 90DNS for blocking Nintendo servers

## Usage

### Daily Boot Process

1. Power on console
2. Launch web browser
3. Visit the exploit URL
4. Launch CFW through Hekate

### Alternative: AutoRCM

Consider AutoRCM for convenience:
- Always requires payload injection
- Faster boot process
- No need for browser each time

## Troubleshooting

### Exploit Fails to Load

1. Check internet connection
2. Verify firmware version
3. Clear browser cache
4. Try different browser method

### Black Screen After Exploit

1. Wait 1-2 minutes (first boot takes time)
2. Check SD card files
3. Reinstall KEFIR
4. Verify payload injection

### Browser Issues

1. Try different DNS settings
2. Clear all browser data
3. Use alternative launch method
4. Check certificate installation

## Advantages

### Pros
- Works on patched consoles
- No hardware modifications needed
- Free method
- Can use EmuNAND

### Cons
- Limited to old firmware
- Requires browser access
- Slower boot process
- Cannot update firmware

## Alternatives

If Caffeine doesn't work for you:

1. **Modchip**: Works on any firmware
2. **Fusée Gelée**: For unpatched consoles
3. **Buy pre-modded**: Professional installation

## Conclusion

Caffeine is an excellent option for those with consoles on firmware 4.0.0 - 4.1.0. While it has limitations, it provides a free software method to hack your Nintendo Switch without any hardware modifications.

Remember to use EmuNAND for maximum safety and compatibility with newer games!

---

**SWITCH TORRENT LIBRARY TELEGRAM BOT**

THE LARGEST FREE GAME LIBRARY FOR NINTENDO SWITCH

[JOIN NOW. PASSWORD: LONDON](https://t.me/Switch_library_bot)
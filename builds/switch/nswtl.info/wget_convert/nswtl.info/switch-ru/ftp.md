# FTP File Transfer

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

## What is FTP?

FTP (File Transfer Protocol) allows you to transfer files between your Nintendo Switch and computer over WiFi. It's included in KEFIR by default through the sys-ftpd module.

## Requirements

- Custom firmware with sys-ftpd (included in KEFIR)
- Computer on same WiFi network
- FTP client software

## Setting Up FTP

### On Nintendo Switch

1. **Launch CFW** (Atmosphere/KEFIR)
2. **Wait for module to load** (automatic)
3. **Note IP address**:
   - Go to System Settings → Internet
   - View connection status
   - Write down the IP address

### On Computer

Install an FTP client:
- **Windows**: File Explorer, WinSCP
- **macOS**: Finder, Cyberduck, FileZilla
- **Linux**: File manager, FileZilla

## Using FTP

### Windows File Explorer

1. Open File Explorer
2. In address bar, type: `ftp://[Switch IP]`
3. Press Enter
4. Browse files directly

### Finder (macOS)

1. Open Finder
2. Go → Connect to Server
3. Enter: `ftp://[Switch IP]`
4. Click Connect
5. Browse as Guest

### FileZilla (All Platforms)

1. Open FileZilla
2. Host: `[Switch IP]`
3. Port: `21`
4. Username: leave blank
5. Password: leave blank
6. Click Quickconnect

## Directory Structure

```
/
├── atmospshere/
├── bootloader/
├── config/
├── Nintendo/
│   ├── Contents/
│   └── save/
├── switch/
└── emummc/ (if using EmuNAND)
```

## Common Uses

### Transferring Games

1. Copy NSP/NSZ files to `/switch/`
2. Install with DBI from SD card
3. Or copy directly to install location

### Managing Saves

1. Navigate to `/Nintendo/save/`
2. Copy save files to backup
3. Restore saves as needed

### Homebrew Management

1. Copy NRO files to `/switch/`
2. Organize in subfolders
3. Access via Homebrew Launcher

## Security Considerations

### Network Security

- **Use on trusted networks only**
- **Don't use public WiFi**
- **Keep console updated**
- **Monitor network activity**

### Data Safety

- **Backup before transfers**
- **Verify file integrity**
- **Don't interrupt transfers**
- **Use wired connections for large files**

## Troubleshooting

### Connection Issues

**"Cannot connect to server"**:
- Check both devices on same network
- Verify IP address
- Disable firewall temporarily
- Try different FTP client

**"Connection timed out"**:
- Check WiFi strength
- Restart network equipment
- Move closer to router
- Try wired connection if possible

**"Access denied"**:
- Ensure CFW is running
- Check sys-ftpd module is loaded
- Reboot console
- Check module configuration

### File Transfer Issues

**Slow transfers**:
- Check WiFi signal strength
- Close other network apps
- Try different channel
- Consider wired connection

**Corrupted files**:
- Verify file integrity
- Use wired connection
- Check SD card health
- Retry transfer

## Advanced Features

### Multiple Connections

- Some FTP clients support multiple connections
- Can improve transfer speed
- Use with care

### Resume Transfers

- Many clients support resume
- Useful for large files
- Check client settings

### File Permissions

- Most operations allowed
- Some restrictions apply
- System files protected

## Best Practices

### Organization

```
/switch/
├── games/
│   ├── nsp/
│   ├── nsz/
│   └── xci/
├── homebrew/
├── tools/
└── temp/
```

### Transfer Tips

1. **Batch small files**
2. **Use wired for large files**
3. **Verify after transfer**
4. **Organize as you go**

### Regular Tasks

- Backup saves regularly
- Clean up temporary files
- Update homebrew
- Check available space

## Alternative Methods

### MTP Mode (DBI)

1. Launch DBI
2. Select Tools → MTP responder
3. Connect USB cable
4. Browse like USB drive

### USB Network

- Faster than WiFi
- More stable
- Requires setup

### Direct SD Card

- Fastest method
- Physical access needed
- Remove from console

## FAQ

### Q: Is FTP safe to use?

A: Yes, but only on trusted networks. Never use on public WiFi.

### Q: Can I transfer large games?

A: Possible but slow. Use wired methods for better speed.

### Q: Why can't I connect?

A: Check network, IP address, and ensure CFW is running with FTP module.

### Q: Do I need password?

A: Default setup uses anonymous login (no password).

### Q: Can I use this with EmuNAND?

A: Yes, works with both SysNAND and EmuNAND.

---

**SWITCH TORRENT LIBRARY TELEGRAM BOT**

THE LARGEST FREE GAME LIBRARY FOR NINTENDO SWITCH

[JOIN NOW. PASSWORD: LONDON](https://t.me/Switch_library_bot)
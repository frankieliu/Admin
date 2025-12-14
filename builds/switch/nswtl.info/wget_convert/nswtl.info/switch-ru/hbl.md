# Homebrew Launcher (HBL)

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

## What is Homebrew Launcher?

Homebrew Launcher (HBL) is an application that allows you to run unofficial software on your Nintendo Switch. It's the gateway to accessing homebrew applications, emulators, and various tools.

## Installation

HBL is included in [KEFIR](kefir.md) by default. If you need to install it manually:

1. Download latest HBL from [GitHub](https://github.com/switchbrew/nx-hbmenu/releases)
2. Copy `hbmenu.nro` to `/switch/` on your SD card
3. Ensure the correct config is in place

## Launching Homebrew Launcher

### Method 1: Album Icon (Default)

1. Go to the Home Menu
2. Hover over the Album icon
3. Hold the **L button**
4. Press A while still holding L
5. HBL should launch

### Method 2: Title Override

If configured, you can launch HBL through:
- Specific game icons
- Web applet
- News applet

### Method 3: From CFW Menu

Some custom firmware allows direct HBL access from reboot menu.

## Using Homebrew Launcher

### Navigation

- **D-Pad**: Navigate menu
- **A**: Select/launch application
- **B**: Go back
- **X**: Show file options
- **Y**: Refresh listing
- **ZL/ZR**: Page up/down

### Directory Structure

HBL looks for applications in:
- `/switch/` (default location)
- Subfolders within `/switch/`
- SD card root

## Essential Homebrew Applications

### System Tools

- **DBI** - Game installer and manager
- **JKSV** - Save backup/restore tool
- **Checkpoint** - Alternative save manager
- **Goldleaf** - File manager
- **Edizon** - Save editor
- **TegraExplorer** - File browser

### Emulators

- **RetroArch** - Multi-system emulator
- **PPSSPP** - PSP emulator
- **Citra** - 3DS emulator (experimental)
- **mGBA** - GBA emulator
- **Snes9x** - SNES emulator

### Utilities

- **nxdumptool** - Game cartridge dumper
- **Lockpick** - Key dumper
- **FTP Server** - File transfer
- **Lakka** - Linux-based gaming OS

## Installing Homebrew

### From SD Card

1. Download homebrew `.nro` files
2. Create folders in `/switch/` for organization
3. Copy files to appropriate folders
4. Launch HBL to see applications

### From USB/Network

1. Use FTP server or MTP
2. Transfer files to Switch
3. Refresh HBL listing

## Troubleshooting

### HBL Won't Launch

1. Check if you're holding the right button (L)
2. Verify HBL is properly installed
3. Check your `config.ini` file
4. Try different launch method

### Applications Not Showing

1. Ensure files are in `/switch/` folder
2. Check file permissions
3. Refresh HBL listing (Y button)
4. Verify files are `.nro` format

### Homebrew Crashes

1. Update the application
2. Check firmware compatibility
3. Report issue to developer
4. Try alternative application

## Best Practices

### Organization

```
/switch/
├── dbi/
│   └── dbi.nro
├── jksv/
│   └── jksv.nro
├── checkpoint/
│   └── checkpoint.nro
└── emulators/
    ├── retroarch/
    │   └── retroarch.nro
    └── mgba/
        └── mgba.nro
```

### Safety

1. Only download from trusted sources
2. Keep applications updated
3. Backup before trying new homebrew
4. Read documentation before use

## Advanced Usage

### Arguments

Some homebrew accept command line arguments:
- Right-click application in HBL
- Select "Edit arguments"
- Enter desired parameters

### Overclocking

Use Tesla overlay or sys-clk for performance:
- Access while in game (L+R)
- Adjust CPU/GPU clocks
- Monitor temperature

---

**SWITCH TORRENT LIBRARY TELEGRAM BOT**

THE LARGEST FREE GAME LIBRARY FOR NINTENDO SWITCH

[JOIN NOW. PASSWORD: LONDON](https://t.me/Switch_library_bot)
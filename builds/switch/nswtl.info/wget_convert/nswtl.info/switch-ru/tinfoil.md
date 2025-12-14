# Tinfoil - Game Installer

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

## What is Tinfoil?

Tinfoil is a Nintendo Switch homebrew application used for installing and managing game files (.NSP, .NSZ, .XCI). It's an alternative to DBI with different features and setup requirements.

## Features

- Install games from USB, network, or SD card
- Automatic update checking
- DLC management
- Built-in file browser
- USB network installation
- Theme support

## Installation

### Prerequisites

- Custom firmware (Atmosphere/KEFIR)
- USB cable
- PC with network connection

### Setup

1. Download latest Tinfoil from [GitHub](https://github.com/Adélie/Tinfoil/releases)
2. Place `tinfoil.nro` in `/switch/` on your SD card
3. Download and install the USB driver from [here](https://zadig.akeo.ie/)
4. Configure network settings

## Network Setup

### Using USB Network

1. Install libusbK driver with Zadig
2. Connect Switch to PC via USB
3. Launch Tinfoil on Switch
4. On PC, use your preferred installation method

### Alternative Network Methods

- FTP server
- HTTP server
- Samba/SMB share

## Usage

### Installing Games

1. Launch Tinfoil from homebrew menu
2. Select source (USB, Network, SD card)
3. Navigate to game files
4. Select and install

### Updates and DLC

1. Tinfoil automatically checks for updates
2. Browse for DLC in the same location as games
3. Install updates before launching games

## Comparison: Tinfoil vs DBI

| Feature | Tinfoil | DBI |
|---------|---------|-----|
| Setup complexity | More complex | Simple |
| USB installation | Yes | Yes |
| Network install | Yes | Yes |
| Update checking | Built-in | Manual |
| User interface | Basic | Modern |
| Speed | Moderate | Fast |

## Troubleshooting

- **Connection issues**: Check USB drivers
- **Installation fails**: Check file integrity
- **Can't find games**: Verify file paths

---

**SWITCH TORRENT LIBRARY TELEGRAM BOT**

THE LARGEST FREE GAME LIBRARY FOR NINTENDO SWITCH

[JOIN NOW. PASSWORD: LONDON](https://t.me/Switch_library_bot)
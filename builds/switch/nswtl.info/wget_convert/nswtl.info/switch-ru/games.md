# Installing Games, DLC, Updates

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

<details>
<summary>Video Instruction</summary>

⚠️ **ATTENTION!!!** We don't recommend blindly following video instructions! Use it only as a supplementary aid! The fact is that the text guide is constantly updated. It's impossible to keep track of all updates in the guide and change the video instruction every time! Therefore, the text guide will always be more accurate and current than the video!

[![Installation Video 1](https://img.youtube.com/vi/b96cgwg7R58/0.jpg)](https://www.youtube.com/watch?v=b96cgwg7R58)

[![Installation Video 2](https://img.youtube.com/vi/XNexdqrRfm0/0.jpg)](https://www.youtube.com/watch?v=XNexdqrRfm0)

</details>

## Important Information

- Games, DLC and updates are installed the same way and in any order
- Don't go online with running pirated games - risk of ban
  - You won't be able to go online on Atmosphere. It's specifically blocked. For access to online console functions, use **Full Stock**
  - You can use a special method for [network play](lanplay.md)

### In What Order to Install Games and About Naming Conventions

As a rule, besides the game, you need to install the latest patch and DLC if they were released. Regarding patches, you only need to install the latest one, you don't need to install all previous ones. The latest patch can always be found in [tinfoil](tinfoil.md)

### Game Naming Standards

- **NSP** - dumps of games from eShop
- **NSZ** - dumps of games from eShop, but specially packaged (archived)
- **XCI** - bit-by-bit dumps of cartridges. Similar to how disk images were made for PC in the past. For use with Atmosphere, install using [DBI](https://github.com/rashevskyv/dbi/releases) (see below)

Currently, games are named by this unwritten rule - `game_name`[`game_titleid`][`game_version`].`extension`

For example: `FINAL FANTASY X X-2 HD Remaster [0100BC300CB48000][v0].nsp`

`FINAL FANTASY X X-2 HD Remaster` - game name
`0100BC300CB48000` - Title ID (need to know for using modifications through LayeredFS)
`v0` - game version
`.nsp` - file extension

## Recommended Installation Method - DBI

### Why DBI?

[DBI (Dude's Beautiful Installer)](https://github.com/rashevskyv/dbi/releases) is the recommended installer because:
- Fast installation speed
- Can install from USB drive
- Can install directly from internet
- Clean user interface
- Automatic splitting for large files
- Update and DLC management

### Installing with DBI

#### Method 1: Installing from SD Card

1. Download game files from [Switch Torrent Library](https://t.me/Switch_library_bot)
2. Copy files to your SD card (any folder)
3. Launch DBI from the homebrew menu
4. Select "Install" → "Browse SD card"
5. Navigate to your game files
6. Select the files you want to install
7. Choose "Install to NAND" or "Install to SD card"
8. Wait for installation to complete

#### Method 2: USB Installation

1. Connect Switch to PC via USB
2. Launch DBI on Switch
3. Select "Tools" → "MTP responder"
4. On PC, your Switch will appear as a device
5. Copy game files directly to the Switch
6. Back on Switch, select "Install" → "Browse USB"
7. Install as described above

#### Method 3: Internet Installation

1. Launch DBI
2. Select "Install" → "From the Internet"
3. Choose your source (CDN, etc.)
4. Enter game Title ID or name
5. Download and install directly

### Installing Updates and DLC

With DBI:
1. After installing a game, select "Install" → "From the Internet"
2. Choose "Update DLC"
3. Select the game
4. Choose which updates/DLC to install
5. Install automatically

## Alternative Installers

### Tinfoil

[Tinfoil](tinfoil.md) is another popular installer:
- Requires USB network setup
- Supports various installation sources
- More complex setup but powerful features

### Awoo Installer

Simple alternative:
- Easy to use
- Good for beginners
- Fewer features than DBI

## File Formats Explained

### NSP vs NSZ vs XCI

| Format | Description | Advantages | Disadvantages |
|--------|-------------|------------|---------------|
| **NSP** | eShop dump | Fast to install | Larger file size |
| **NSZ** | Compressed NSP | Smaller size | Slower to install |
| **XCI** | Cartridge dump | Exact 1:1 copy | Larger, need conversion |

## Installation Tips

### Before Installing

1. **Check free space**:
   - Game size = installed size
   - Keep at least 10% free on SD card

2. **Check file integrity**:
   - Use checksums if provided
   - Redownload if corrupted

3. **Sort your games**:
   - Create folders: `/Games/`, `/Updates/`, `/DLC/`

### During Installation

1. Don't turn off the console
2. Keep the console charging
3. Don't remove the SD card

### After Installation

1. Check the game launches properly
2. Install updates if available
3. Install DLC separately

## Troubleshooting

### Installation Fails

1. Check SD card free space
2. Reformat SD card as FAT32
3. Try different installer
4. Check if file is corrupted

### Game Won't Launch

1. Check firmware compatibility
2. Install required updates
3. Check if you need the base game for DLC
4. Try reinstalling

### Corrupted Installation

1. Delete and reinstall
2. Check your SD card for errors
3. Try a different SD card

## Managing Your Games

### Uninstalling Games

1. Go to System Settings → Data Management
2. Select "Delete Software"
3. Choose the game to remove
4. Confirm deletion

### Moving Games Between Storage

1. Use DBI's move function
2. Or reinstall to desired location
3. Saves are stored separately

## Storage Management

### Internal Storage (NAND)

- Use for frequently played games
- Faster loading times
- Limited space (32GB/64GB)

### SD Card Storage

- Main storage for games
- Larger capacity possible
- Slower loading than NAND

## Legal Notice

This guide is for educational purposes. You should only install games you legally own. We are not responsible for how you use this information.

---

**SWITCH TORRENT LIBRARY TELEGRAM BOT**

THE LARGEST FREE GAME LIBRARY FOR NINTENDO SWITCH

[JOIN NOW. PASSWORD: LONDON](https://t.me/Switch_library_bot)
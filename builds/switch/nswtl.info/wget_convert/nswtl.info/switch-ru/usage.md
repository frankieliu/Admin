# Using an Already Hacked Console

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

This guide is for users who already have their console hacked and want to know how to use it effectively.

## Daily Usage

### Starting Your Console

1. **Power on** your console
2. If using **RCM exploit**:
   - Inject payload (usually hekate)
   - Choose your boot option
3. If using **modchip**:
   - Power on normally
   - Chip should automatically launch CFW

### Choosing Your Boot Option

- **SysNAND Stock**: For official firmware, online play
- **SysNAND CFW**: For homebrew on internal memory
- **EmuNAND**: For pirated games (recommended)

## Installing and Playing Games

### Installing Games

1. Get games from [Switch Torrent Library](https://t.me/Switch_library_bot)
2. Use [DBI](games.md) for installation:
   - Launch DBI from homebrew menu
   - Select installation source
   - Install to SD card or internal storage

### Managing Updates

1. Launch DBI
2. Select "Install" → "From Internet"
3. Choose "Update DLC"
4. Select games to update
5. Install automatically

## Homebrew Applications

### Accessing Homebrew Menu

1. **Album Method**: Hold L while opening Album
2. **Rosalina Menu**: Hold X + Y (if on Luma3DS)
3. **Tesla Overlay**: Hold L + R in-game

### Essential Homebrew

- **DBI** - Game installer
- **JKSV** - Save manager
- **Edizon** - Save editor
- **Checkpoint** - Alternative save manager
- **Goldleaf** - File manager
- **nxdumptool** - Game dumping tool

## Save Management

### Backing Up Saves

1. Launch **JKSV** or **Checkpoint**
2. Select the game
3. Choose "Export" or "Backup"
4. Save to SD card

### Restoring Saves

1. Launch save manager
2. Select the game
3. Choose "Import" or "Restore"
4. Select backup file

## EmuNAND vs SysNAND

### When to Use SysNAND

- Playing purchased games online
- Using official eShop
- Updating system software
- Maintaining warranty (if applicable)

### When to Use EmuNAND

- Playing pirated games
- Testing homebrew
- Safe experimentation
- Custom themes and mods

## Maintenance

### Updating CFW

1. Download latest [KEFIR](https://github.com/rashevskyv/kefir/releases)
2. Back up important saves
3. Delete old CFW folders
4. Install new version
5. Reboot

### Updating Firmware

- **For EmuNAND**: Update through game cartridges or eShop
- **For SysNAND**: Keep offline or use official methods
- Never update if using Caffeine exploit

## Troubleshooting

### Common Issues

- **Games not launching**: Check firmware compatibility
- **Homebrew crashes**: Update homebrew applications
- **Save corruption**: Restore from backup
- **Can't boot**: Check payload injection

### Recovery

If something goes wrong:
1. Try rebooting
2. Check [troubleshooting.md](troubleshooting.md)
3. Restore NAND backup if necessary

## Best Practices

### Security

1. Use EmuNAND for unofficial activities
2. Keep SysNAND clean for online play
3. Don't mix pirated and legitimate content
4. Use DNS blocking (90DNS)

### Organization

1. Keep games organized in folders
2. Label your saves with dates
3. Keep multiple backup copies
4. Document your setup

## Advanced Features

### Overclocking

Use **sys-clk** or **4IFIR** for better performance:
- Not recommended for all games
- Can cause instability
- May reduce battery life

### Themes and Mods

1. **Themes**: Custom home menu designs
2. **Mods**: Game modifications
3. **Cheats**: In-game advantages

⚠️ Using cheats online will likely result in a ban!

---

**SWITCH TORRENT LIBRARY TELEGRAM BOT**

THE LARGEST FREE GAME LIBRARY FOR NINTENDO SWITCH

[JOIN NOW. PASSWORD: LONDON](https://t.me/Switch_library_bot)
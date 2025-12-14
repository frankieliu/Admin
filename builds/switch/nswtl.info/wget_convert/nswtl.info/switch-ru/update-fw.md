# Updating Firmware Safely

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

## Important Notes

- **Caffeine users**: Cannot update! Stay on 4.1.0
- **Modchip users**: Can update safely
- **Fusée Gelée users**: Can update but preserves downgrade possibility
- **Always make a NAND backup** before updating!

## Update Methods

### Method 1: Game Cartridge (Safest)

1. Get a game cartridge with required firmware
2. Insert cartridge while connected to internet
3. Follow on-screen prompts
4. Update automatically

### Method 2: DBI Update Tool

1. Launch DBI
2. Select "Update Firmware"
3. Choose update version
4. Download and install

### Method 3: ChoiDujourNX (Manual)

1. Download ChoiDujourNX
2. Download firmware files
3. Place files in correct folder
4. Run ChoiDujourNX
5. Install update

## Preserving Downgrade Ability

### Why It Matters

- Maintains homebrew compatibility
- Allows future exploits
- Keeps fuses from burning

### How to Preserve

1. Use ** ChoiDujourNX with "No Burn Fuses" option
2. Use game cartridge method
3. Use CFW update tools (like in KEFIR)

## Update Preparations

### Before Updating

1. **Backup everything**:
   - NAND backup
   - Save files
   - Important homebrew

2. **Check compatibility**:
   - Your hacking method
   - Current firmware
   - Homebrew compatibility

3. **Charge your console**:
   - At least 50% battery
   - Keep connected during update

### What to Backup

```
/atmosphere/
/switch/
/Nintendo/save/
/emummc/
/backup/
```

## Updating EmuNAND

### Steps

1. Boot into EmuNAND
2. Connect to internet
3. Use System Settings → System Update
4. Update normally
5. Reboot and verify

### Benefits

- Keeps SysNAND at lower firmware
- Maintains exploit possibility
- Safe testing ground

## Post-Update Checklist

### Verify Everything Works

- [ ] CFW boots properly
- [ ] Homebrew launches
- [ ] Games still play
- [ ] Save files intact
- [ ] Network settings work

### If Issues Occur

1. Reboot and try again
2. Check homebrew updates
3. Update CFW if needed
4. Restore NAND backup if critical

## Troubleshooting

### Update Failed

1. Ensure stable internet
2. Free up space
3. Try different method
4. Check SD card integrity

### Homebrew Not Working

1. Update homebrew applications
2. Check CFW compatibility
3. Reinstall CFW if needed
4. Report issues to developers

### Console Won't Boot

1. Inject payload
2. Restore NAND backup
3. Check update file integrity

## Best Practices

### General Rules

1. **Never update SysNAND if using Caffeine**
2. **Always backup before major updates**
3. **Test updates in EmuNAND first**
4. **Keep older firmware handy for downgrading**

### Recovery Plan

Always have:
- Working payload injector
- NAND backup
- SD card with known good files
- Alternative update method

## Specific Scenarios

### I'm on Caffeine

**DO NOT UPDATE!**
- Stay on 4.1.0
- Use EmuNAND for newer games
- Consider modchip for newer firmware

### I'm on Fusée Gelée

- Can update safely
- Use ChoiDujourNX to preserve fuses
- Keep downgrade possibility

### I Have a Modchip

- Can update freely
- Modchip handles boot
- No restrictions on updates

---

**SWITCH TORRENT LIBRARY TELEGRAM BOT**

THE LARGEST FREE GAME LIBRARY FOR NINTENDO SWITCH

[JOIN NOW. PASSWORD: LONDON](https://t.me/Switch_library_bot)
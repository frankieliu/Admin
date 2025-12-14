# Downgrading Firmware

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

⚠️ **Warning**: Downgrading is risky and can brick your console if done incorrectly!

## When to Downgrade

Downgrading may be necessary for:
- Homebrew compatibility
- Specific exploits
- Firmware requirements
- Running older game versions

## Prerequisites

### Requirements

- Custom firmware already installed
- NAND backup from older firmware
- ChoiDujourNX tool
- Firmware files for target version

### Console Compatibility

- **Unpatched consoles**: Can downgrade
- **Patched consoles**: Cannot downgrade (burned fuses)
- **Mariko consoles**: Cannot downgrade

## Methods

### Method 1: Restore NAND Backup

**Safest method if you have backup**

1. **Check your backup**:
   - Verify firmware version
   - Ensure backup is complete
   - Confirm backup integrity

2. **Prepare console**:
   - Power off completely
   - Insert SD card with backup

3. **Enter Hekate**:
   - Inject payload
   - Boot into Hekate menu

4. **Restore NAND**:
   - Go to "Tools" → "Restore Options"
   - Select "Full NAND restore"
   - Choose your backup
   - Confirm and wait

### Method 2: ChoiDujourNX

**For those without older backup**

1. **Download ChoiDujourNX**:
   - Get from [GitHub](https://github.com/rajkosto/ChoiDujourNX/releases)
   - Place on SD card

2. **Download firmware**:
   - Get target firmware files
   - Verify file integrity
   - Extract to proper folder

3. **Run ChoiDujourNX**:
   - Launch via homebrew
   - Select firmware folder
   - Choose "No Burn Fuses"
   - Install firmware

## Firmware Sources

### Official Sources

- Download firmware updates legally
- Extract from game cartridges
- Use official Nintendo servers

### Preparation

1. Create firmware folder structure
2. Organize by version number
3. Keep multiple versions available

## Important Notes

### Fuse Counting

- Each update burns fuses
- Downgrade without matching fuses = brick
- "No Burn Fuses" option preserves downgrade ability

### Limitations

- Cannot downgrade below lowest fuse count
- Mariko consoles cannot downgrade at all
- Some exploits version-specific

## After Downgrading

### What to Check

- [ ] CFW boots properly
- [ ] Homebrew works
- [ ] Games launch
- [ ] Network functions work

### Next Steps

1. Install homebrew
2. Set up emunand
3. Configure your setup
4. Make new NAND backup

## Troubleshooting

### Common Issues

**Black screen after downgrade**:
- Check firmware compatibility
- Verify file integrity
- Try alternative method

**Boot loops**:
- Restore NAND backup
- Check SD card
- Reinstall CFW

**Error messages**:
- Document error code
- Check online solutions
- Ask for help

### Recovery

If downgrade fails:
1. Restore NAND backup
2. Use latest firmware
3. Consider professional help

## Best Practices

### Before Downgrading

1. **Backup everything**:
   - NAND backup
   - Save files
   - Important data

2. **Verify compatibility**:
   - Console type
   - Current firmware
   - Target firmware

3. **Prepare tools**:
   - ChoiDujourNX
   - Firmware files
   - Recovery options

### During Downgrade

1. **Don't interrupt process**
2. **Keep console charging**
3. **Follow instructions carefully**

### After Downgrading

1. **Test everything works**
2. **Make new backup**
3. **Document setup**

## Alternatives to Downgrading

Consider these options instead:

### EmuNAND

- Keep SysNAND on current firmware
- Create older firmware EmuNAND
- Switch between as needed

### Compatible Homebrew

- Use homebrew compatible with current firmware
- Wait for updates
- Find alternatives

## Safety Checklist

Before starting:

- [ ] NAND backup exists
- [ ] Right firmware files downloaded
- [ ] Console is compatible
- [ ] Power supply stable
- [ ] SD card checked
- [ ] Recovery method known

## Conclusion

Downgrading can unlock older exploits and compatibility but carries risks. Always have a recovery plan and backups before attempting.

When possible, consider alternatives like EmuNAND that provide similar benefits without downgrade risks.

---

**SWITCH TORRENT LIBRARY TELEGRAM BOT**

THE LARGEST FREE GAME LIBRARY FOR NINTENDO SWITCH

[JOIN NOW. PASSWORD: LONDON](https://t.me/Switch_library_bot)
# Switching to EmuNAND for Safe Hacking

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

This guide helps you switch from direct SysNAND hacking to EmuNAND for maximum safety and to restore online capability.

## Why Switch to EmuNAND?

### Benefits

1. **Safety**: Separate environment for hacking
2. **Online Play**: Keep SysNAND clean for official online
3. **Testing**: Safe environment for experiments
4. **Organization**: Different setups for different purposes
5. **Risk Reduction**: Lower ban probability

### When to Switch

- Already hacking on SysNAND
- Want to play online games
- Concerned about bans
- Need to test homebrew safely
- Want multiple configurations

## Preparation

### Requirements

- Already hacked console
- [NAND backup](backup-nand.md) from before hacking
- MicroSD card with enough space (32GB+)
- [KEFIR](https://github.com/rashevskyv/kefir/releases)

### Back Everything Up

1. **Game Saves**:
   - Use [JKSV](backup-saves.md)
   - Backup all saves to computer
   - Keep multiple copies

2. **Current Setup**:
   - Document current configuration
   - Note installed homebrew
   - Save important files

3. **Verify NAND Backup**:
   - Check if you have pre-hack backup
   - If not, proceed with current setup

## Switching Process

### Step 1: Backup Current State

1. **Save Files**:
   - Launch JKSV
   - Backup every game save
   - Save to multiple locations

2. **Important Data**:
   - Screenshots
   - Game data
   - Homebrew configurations

### Step 2: Create EmuNAND

Follow the [EmuNAND Installation Guide](emunand.md):
1. Boot into Hekate
2. Go to Tools → EmuMMC
3. Create EmuNAND from current SysNAND
4. Wait for completion

### Step 3: Configure Boot Options

1. **Hekate Configuration**:
   - Edit `hekate_ipl.ini`
   - Add boot entries for EmuNAND
   - Set EmuNAND as default

2. **Test Boot**:
   - Boot into EmuNAND
   - Verify everything works
   - Test homebrew

### Step 4: Clean SysNAND (Optional)

If you want completely clean SysNAND:

1. **Restore Original NAND**:
   - Only if you have clean backup
   - Will lose all current data
   - Save everything first

2. **Or Keep Current**:
   - Use as-is
   - Keep homebrew
   - Accept current state

### Step 5: Set Up DNS Blocking

In EmuNAND:
- Set DNS to 90DNS
- Block Nintendo servers
- Prevent telemetry

In SysNAND:
- Remove DNS blocking
- Allow official Nintendo services
- Keep clean

## Daily Usage

### Typical Workflow

1. **For Piracy/Homebrew**:
   - Boot into EmuNAND
   - Use DNS blocking
   - Keep offline or use LAN Play

2. **For Official Online**:
   - Boot into SysNAND
   - Remove DNS blocking
   - Play purchased games online

### Switching Between

1. **Reboot Console**:
   - Power off completely
   - Boot into Hekate
   - Select desired NAND

2. **Different SD Cards** (Advanced):
   - One card per environment
   - Switch cards for different uses
   - More complex but safer

## Advanced Configuration

### Multiple EmuNANDs

Create different EmuNANDs for:
- **Gaming**: Pirated games
- **Testing**: Homebrew experiments
- **Emulation**: Retro gaming
- **Development**: Homebrew development

### System Separation

| Environment | Use | DNS | Online | Bans |
|-------------|-----|-----|--------|------|
| SysNAND | Official games | No | Yes | None |
| EmuNAND 1 | Piracy | Yes | No | Risky |
| EmuNAND 2 | Testing | Yes | No | Safe |

## Best Practices

### Safety Rules

1. **Never mix environments**:
   - Don't use purchased games in EmuNAND
   - Don't use pirated games in SysNAND
   - Keep accounts separate if possible

2. **Regular Backups**:
   - Backup both environments
   - Keep saves separate
   - Update backups regularly

3. **Update Procedures**:
   - Update SysNAND officially
   - Update EmuNAND carefully
   - Check compatibility

### Organization

```
SD Card Structure:
├── emummc/
│   ├── emummc.bin (EmuNAND 1)
│   └── emummc2.bin (EmuNAND 2)
├── backup/
│   ├── sysnand.bin
│   └── saves/
└── switch/
```

## Troubleshooting

### Common Issues

**Can't boot EmuNAND**:
- Check hekate configuration
- Verify EmuNAND creation
- Try re-creating

**Games not appearing**:
- Different save locations
- Check environment
- Reinstall as needed

**DNS not blocking**:
- Verify settings
- Check connection
- Use alternative blocking

### Recovery

If something goes wrong:
1. Restore NAND backup
2. Re-create EmuNAND
3. Reinstall as needed
4. Contact support if needed

## Advantages of This Setup

### Security

- Isolated environments
- Reduced ban risk
- Safe testing ground
- Clean official use

### Flexibility

- Multiple configurations
- Easy switching
- Safe experiments
- Custom setups

### Organization

- Clear separation
- Dedicated environments
- Specific purposes
- Easy management

## Limitations

### Storage

- EmuNAND takes SD card space
- Multiple backups needed
- Limited SD card capacity
- Management complexity

### Complexity

- More advanced setup
- Requires understanding
- Potential confusion
- More maintenance

## FAQ

### Q: Is EmuNAND required?

A: Not required, but highly recommended for safety.

### Q: Can I sync saves between environments?

A: Not recommended. Keep them separate for safety.

### Q: Will online work in SysNAND?

A: Yes, if kept clean and no telemetry from EmuNAND.

### Q: How many EmuNANDs can I have?

A: As many as your SD card can store.

### Q: Do I need to update both?

A: Update SysNAND officially, EmuNAND carefully.

## Conclusion

Switching to EmuNAND provides a safer, more organized hacking experience. While more complex, the benefits outweigh the learning curve for most users.

Take your time with the transition, backup everything, and test thoroughly before relying on the setup.

---

**SWITCH TORRENT LIBRARY TELEGRAM BOT**

THE LARGEST FREE GAME LIBRARY FOR NINTENDO SWITCH

[JOIN NOW. PASSWORD: LONDON](https://t.me/Switch_library_bot)
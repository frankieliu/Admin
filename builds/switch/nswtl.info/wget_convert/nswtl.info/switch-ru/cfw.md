# Custom Firmware

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

Currently, custom firmware refers to official firmware with a set of patches that allow launching unsigned code and add unique functions to the firmware, such as **LayeredFS**. The most important can be considered **Atmosphere**, from which RajNX, ReiNX and SX OS were forked. The latter, like the others, is based on the source code of the first and is more user-friendly. However, it is not free.

Using any firmware in its current form is completely legal (until you start piracy, since the firmware runs in the console's RAM and does not change any files of the official firmware).

## Atmosphere

[GitHub](https://github.com/Atmosphere-NX/Atmosphere)

Atmosphere is an open source project. It consists of five main modules, each with its own functions:

- **Fusée** - first-stage bootloader. It handles launching and verifying the second stage (custom TrustZone) and package2 (kernel and system modules), as well as patching them as necessary (**implemented**)

- **Exosphère** - modified TrustZone, necessary for launching Secure Monitor (**implemented**)

- **Thermosphère** - module that provides EmuNAND support (**implemented**)

- **Stratosphère** - modified system modules. Will be something like Rosalina on 3DS, which will expand kernel capabilities and provide new features (**partially implemented**)

- **Troposphère** - patches for implementing planned custom firmware functions. Application interaction level (**not implemented**)

Allows installing games in any format, installing updates and DLC for them.

<details>
<summary>Pros</summary>

- Free
- Constantly developing
- Can launch eShop game images
- Supports **LayeredFS**
- Supports **EmuNAND**, including switching between multiple EmuNANDs
- Supports [cheats](cheats.md)
- Can install games from USB drives

</details>

<details>
<summary>Cons</summary>

- Not as user-friendly as commercial solutions
- Requires some technical knowledge
- Development ongoing - some features incomplete

</details>

## KEFIR

KEFIR is a build based on modified Atmosphere, necessary programs, and scripts that install everything correctly. It was invented to simplify the installation and maintenance of software on a hacked Nintendo Switch.

For more information, see the [KEFIR guide](kefir.md).

## Other Custom Firmwares

### SX OS (Discontinued)

- Was a commercial CFW with user-friendly interface
- Development has stopped
- Users should migrate to Atmosphere/KEFIR

### ReiNX (Discontinued)

- Fork of Atmosphere
- Development has stopped
- Use Atmosphere/KEFIR instead

### RajNX (Discontinued)

- Another Atmosphere fork
- No longer maintained
- Migrate to modern solutions

## Choosing Custom Firmware

### For Beginners

- **KEFIR** - All-in-one solution
- Easy installation
- Includes all necessary tools

### For Advanced Users

- **Pure Atmosphere** - More control
- Can customize installation
- Requires more setup

### Recommendation

Use **KEFIR** for:
- Simplicity
- Latest features
- Included tools
- Regular updates

## Installation Methods

The installation method depends on your console:

- **Unpatched consoles**: [Fusée Gelée](fusee-gelee.md)
- **Firmware 4.0.0-4.1.0**: [Caffeine](caffeine.md)
- **All others**: [Modchip](modchip.md)

## Features Overview

### Common Features

- Launch homebrew applications
- Install and run unofficial games
- Modify system behavior
- Access developer features

### Advanced Features

- **EmuNAND**: Separate environment
- **LayeredFS**: Game modifications
- **Cheats**: In-game advantages
- **Overclocking**: Performance boost
- **Themes**: Custom appearance

## Safety Considerations

### Legal Status

- Custom firmware itself is legal
- Modifying your console is legal
- Piracy is illegal

### Ban Prevention

- Use EmuNAND for unofficial activities
- Keep SysNAND clean
- Use DNS blocking
- Avoid online features with pirated games

## Maintenance

### Updates

- Regularly update your CFW
- Follow official channels
- Backup before updating

### Troubleshooting

- Check [troubleshooting.md](troubleshooting.md)
- Update individual components
- Reinstall if necessary

---

**SWITCH TORRENT LIBRARY TELEGRAM BOT**

THE LARGEST FREE GAME LIBRARY FOR NINTENDO SWITCH

[JOIN NOW. PASSWORD: LONDON](https://t.me/Switch_library_bot)
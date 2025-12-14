# Installing EmuNAND

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

> For already hacked users who want to restore the ability to play online on an already hacked console, and exclusively pirate in EmuNAND, there is a separate instruction - [Switching to EmuNAND for already hacked](preparation-white.md).

## What You Need to Know About EmuNAND

**EmuNAND** is a copy of the system firmware located on the memory card from which the system boots. If there is emunand, then there is also **stock firmware**. Usually, stock firmware, SysNAND, is used for playing online in purchased or officially downloaded from eShop games. If you don't run piracy on **SysNAND**, the chance of getting banned is extremely low. EmuNAND, on the contrary, is used specifically for running pirated games. It specially hides the console's serial number, so even with an active internet connection, Nintendo cannot track that unauthorized software was launched on the console.

### You might need EmuNAND if…

- You want to play online in purchased/free games. In this case, you will boot into EmuNAND for piracy, and use **SysNAND** exclusively for playing licensed games. In this case, the chance of a ban is significantly lower.
- You use **Caffeine**. In this case, you have no choice and the only way to hack the console is to use EmuNAND
- You use [4IFIR](https://github.com/rashevskyv/4IFIR/blob/main/README_ENG.md) for overclocking. Emunand is required there for safety reasons.

In other cases, EmuNAND is not required. That is, if you're just going to play pirated games and online doesn't interest you, then EmuNAND won't be useful.

> ⚠️ Remember that without EmuNAND, after launching Full Stock or Semi-Stock, after installing pirated games on the console, you will **inevitably** get banned!

> ℹ️ If you really want to play online but you're already banned, then EmuNAND won't help you.

### Can you work without EmuNAND?

Yes, quite. If you don't need online on the console, or the console is already banned, you won't need EmuNAND.

### How much space does EmuNAND take?

As a rule, the size of EmuNAND is equal to the size of the console's internal memory. For all Switches except OLED, its size is 32GB, for OLED - 64GB. Keep in mind that you won't be able to use the **internal memory of your console** (those built-in 32GB) to install games, since EmuNAND itself will act as internal memory, which is completely located on the memory card. That is, when you launch EmuNAND, you'll see "internal memory" that can be used to install games, but this is the internal memory of emunand, which is located on the memory card, not the console itself. It's important to understand this.

For simplicity, imagine that you took the internal memory out of the console and placed it inside your memory card. This is EmuNAND. When you work from EmuNAND, you don't have access to the physical internal memory of your console located on a separate chip. When you use internal memory, **SysNAND**, you don't have direct access to its copy on the memory card - EmuNAND.

### Pros and Cons of Using EmuNAND

**Pros:**
- **Complete isolation from the main system** - emunand is in a completely isolated environment, so actions in it don't affect the main system at all. It has separate games, separate saves, separate logs. If you corrupt EmuNAND, it won't affect the main system at all and the console will continue to work.
- **Security** - using emunand significantly reduces the risk of getting banned
- **Clean system** - you can always keep your main system clean for official use

**Cons:**
- Takes up a lot of space on the memory card (32GB or 64GB)
- Requires additional setup and configuration
- Slightly longer boot time compared to SysNAND

## Creating EmuNAND

### What You'll Need

- A hacked Nintendo Switch
- Hekate bootloader (included in KEFIR)
- SD card with sufficient free space (at least 32GB for regular Switch, 64GB for OLED)
- Full NAND backup (see [Backup NAND guide](backup-nand.md))

### Creating EmuNAND with Hekate

1. **Boot into Hekate**:
   - Power off your console
   - Inject the hekate payload using your method (RCM injector, modchip, etc.)
   - You should see the Hekate menu

2. **Go to Tools**:
   - Select "Tools" from the main menu

3. **Create EmuNAND**:
   - Select "EmuMMC"
   - Choose "Create EmuMMC"
   - Select the type:
     - **EmuMMC RAW**: Creates a raw copy of your NAND (recommended)
     - **EmuMMC SD Raw**: Creates a split file emunand
   - Select your NAND backup (if you have one) or create from SysNAND
   - Confirm and wait for the process to complete

4. **Configure Bootloader**:
   - Go back to the main menu
   - Select "Tools" → "More configs"
   - Edit your `hekate_ipl.ini` to set your preferred boot options

5. **Test EmuNAND**:
   - Reboot into Hekate
   - Select "Launch" → "Cfw (emuMMC)"
   - Your console should boot into EmuNAND

## Managing EmuNAND

### Switching Between SysNAND and EmuNAND

From Hekate menu:
- **SysNAND**: Launch → "Cfw (sysMMC)"
- **EmuNAND**: Launch → "Cfw (emuMMC)"

### Updating EmuNAND

1. Never update SysNAND if you want to keep Caffeine working
2. To update EmuNAND:
   - Boot into EmuNAND
   - Use official update methods (game cartridges, eShop)
   - The update will only affect EmuNAND, not SysNAND

### Backing Up EmuNAND

- You can create backups of your EmuNAND using Hekate's backup tools
- These are separate from SysNAND backups

## Important Notes

- Always keep a clean SysNAND backup before creating EmuNAND
- EmuNAND and SysNAND have separate game saves
- You can use different Nintendo accounts on each
- Remember which environment you're in to avoid confusion

---

**SWITCH TORRENT LIBRARY TELEGRAM BOT**

THE LARGEST FREE GAME LIBRARY FOR NINTENDO SWITCH

[JOIN NOW. PASSWORD: LONDON](https://t.me/Switch_library_bot)
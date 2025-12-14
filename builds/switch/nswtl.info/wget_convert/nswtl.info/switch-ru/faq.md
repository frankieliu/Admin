# Frequently Asked Questions

> This guide is created based on guides by xHЯ - developer of [KEFIR](https://github.com/rashevskyv/kefir/releases/latest).

> Most common problems can be solved by [using KEFIR](kefir.md).
>
> We strongly recommend [using DBI](https://github.com/rashevskyv/dbi/releases) for game installation.
>
> The best way to get games, DLC and updates today is the Telegram bot [Switch Torrent Library](https://t.me/Switch_library_bot).

> If you're a MacOS user, follow [these recommendations](sd-macos.md) to avoid memory card issues.

> Make [save backups](backup-saves.md) as often as possible!

> **If the console freezes or shows no signs of life, turn it off by holding the POWER button for 30 seconds, then turn it on and inject the payload!**

---

This section contains only answers to the most frequently asked questions. The section with the most common problems and their solutions is located here - [Problems and Solutions](troubleshooting.md)

ℹ️ Don't hesitate to use search in this section. To do this, press **Ctrl+F**

---

<details>
<summary>Too many unfamiliar words - I don't understand anything!</summary>

**A:** Study the [glossary](index.md#glossary) in the main guide

</details>

<details>
<summary>Can my console be hacked?</summary>

**A:** Check your serial number:
- Unpatched consoles (vulnerable to Fusée Gelée): XAW10000000000 - XAW10074000000, XAJ10000000000 - XAJ10020000000
- All other consoles require a modchip

Use the [serial checker](https://damagic.me/SerialChecker/) to be sure

</details>

<details>
<summary>Will I get banned?</summary>

**A:** If you use pirated games, there's always a risk. To minimize:
- Use EmuNAND for piracy
- Keep SysNAND clean and offline
- Use 90DNS or Incognito
- Don't play games before release date
- Avoid online features in pirated games

</details>

<details>
<summary>Can I play online after hacking?</summary>

**A:** Yes, but only with legally purchased games on SysNAND. Use EmuNAND for pirated games and SysNAND for official online play.

</details>

<details>
<summary>What firmware version should I be on?</summary>

**A:** The latest supported is 21.0.0. For Caffeine exploit, you need 4.0.0 - 4.1.0. Always keep your console offline until hacking is complete.

</details>

<details>
<summary>Do I need AutoRCM?</summary>

**A:** Not recommended. AutoRCM makes it so you can't boot normally without payload injection. This can drain your battery if you forget.

</details>

<details>
<summary>How big should my SD card be?</summary>

**A:** Minimum 32GB, recommended 128GB or more. If using EmuNAND, you'll need at least 64GB (OLED needs 128GB).

</details>

<details>
<summary>Should I format as FAT32 or exFAT?</summary>

**A:** FAT32 is recommended. It's more stable and reliable. Yes, you can install games larger than 4GB on FAT32.

</details>

<details>
<summary>Fixing Archive Bit</summary>

1. In **hekate**, go to the **Tools** menu, switch to the **Arch bit • RCM • Touch • Partitions** tab (at the bottom of the screen), select **Fix Archive Bit**
   - To get into hekate if you're not in it, restart the console: hold the power button for 5 seconds in CFW, then select **Power Options** → **Restart**. When the kefir splash screen appears, press (VOL-) (volume down button)
2. After fixing attributes, press **Close** in the top right corner
3. Select **Home** → **Launch** → **YOUR_OS_NAME** to boot back into firmware

</details>

<details>
<summary>What is Tesla Menu Overlay and how to use it?</summary>

[Tesla Menu Overlay Guide](https://gbatemp.net/threads/tesla-the-nintendo-switch-overlay-menu.557362/)

Tesla is an overlay menu that appears when you hold L and R while in-game. It provides access to:
- Reboot to payload
- Sys-clk (overclocking)
- Edizon (save editing)
- FTP server
- And more homebrew tools

</details>

<details>
<summary>Can I get better performance / overclock the Switch?</summary>

[Use 4IFIR](https://github.com/rashevskyv/4IFIR/blob/main/README_ENG.md)

4IFIR is an overclocking tool that can improve performance in demanding games. Use with caution as it can cause instability.

</details>

<details>
<summary>Using Chiaki and Remote Play for streaming games from PS4 to Switch</summary>

[Chiaki PS5/PS4 Remote Play Homebrew](https://gbatemp.net/threads/chiaki-ps5-ps4-remote-play-homebrew.564553/)

Allows you to stream your PS4/PS5 games to your Nintendo Switch over the internet.

</details>

<details>
<summary>How do I update games?</summary>

**A:** Use [DBI](https://github.com/rashevskyv/dbi/releases):
1. Open DBI
2. Select "Install" → "From the Internet"
3. Choose "Update DLC"
4. Select your game
5. Download and install updates

</details>

<details>
<summary>How do I install DLC?</summary>

**A:** With DBI:
1. Download DLC from [Switch Torrent Library](https://t.me/Switch_library_bot)
2. Copy to SD card
3. Open DBI → "Install" → "Browse SD card"
4. Select DLC files
5. Install to base game

</details>

<details>
<summary>My saves are corrupted, what do I do?</summary>

**A:** Try restoring from backup:
1. Use [JKSV](https://github.com/J-D-K/JKSV/releases)
2. Select the game
3. Choose "Restore"
4. Select your backup file

If no backup exists, start a new save.

</details>

<details>
<summary>Can I transfer saves from retail cartridges?</summary>

**A:** Yes, use JKSV or Checkpoint:
1. Launch homebrew
2. Select save manager
3. Select the game
4. Choose "Export"
5. Save to SD card

</details>

<details>
<summary>How do I update my CFW?</summary>

**A:** For KEFIR:
1. Download latest version from [GitHub](https://github.com/rashevskyv/kefir/releases)
2. Back up your saves
3. Delete old kefir folders
4. Copy new version to SD card
5. Boot normally

</details>

<details>
<summary>Can I use cheats?</summary>

**A:** Yes:
1. Download cheat files
2. Place in `/atmosphere/contents/[TitleID]/cheats/`
3. Enable in Tesla menu
4. Start game

Note: Using cheats online will likely get you banned.

</details>

<details>
<summary>What's the difference between SysNAND and EmuNAND?</summary>

**A:**
- **SysNAND**: Internal memory, use for official/firmware, online play
- **EmuNAND**: Copy on SD card, use for piracy, offline only

They have separate games, saves, and settings.

</details>

<details>
<summary>Can I uninstall CFW?</summary>

**A:** Yes:
1. Make a NAND backup first
2. Delete all CFW folders from SD card
3. Restore your original NAND backup
4. Console will be stock

</details>

<details>
<summary>My Joy-Cons drift, can I fix it?</summary>

**A:** Hardware issue, but some software fixes exist:
- Use calibration in settings
- Some homebrew can recalibrate
- Best solution: Clean/replace Joy-Con stick

</details>

<details>
<summary>Can I use Bluetooth headphones?</summary>

**A:** Only on official firmware with latest update. Not available in most custom firmware versions.

</details>

<details>
<summary>How do I take screenshots?</summary>

**A:** Hold Capture button. Screenshots save to:
- SysNAND: Internal memory/Nintendo
- EmuNAND: SD card/emummc/Nintendo

</details>

<details>
<summary>What's the best game installer?</summary>

**A:** [DBI](https://github.com/rashevskyv/dbi/releases) is recommended:
- Fast installation
- USB installation support
- Update/DLC management
- Clean interface

</details>

<details>
<summary>Can I use my console as a USB device?</summary>

**A:** Yes with kefir:
1. Connect to PC via USB
2. Use DBI's MTP mode
3. Browse files like USB drive

</details>

<details>
<summary>How do I check if games are updating properly?</summary>

**A:** In DBI:
1. Select game properties
2. Check version
3. Compare to latest known version online

</details>

---

**Still have questions?**
- Join our [Discord](https://discord.gg/switch) community
- Check [GBATemp](https://gbatemp.net/forums/nintendo-switch.286/) forums
- Visit [r/SwitchHacks](https://reddit.com/r/SwitchHacks) subreddit

---

**SWITCH TORRENT LIBRARY TELEGRAM BOT**

THE LARGEST FREE GAME LIBRARY FOR NINTENDO SWITCH

[JOIN NOW. PASSWORD: LONDON](https://t.me/Switch_library_bot)
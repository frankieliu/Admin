# Blocking Updates and Nintendo Server Access via Incognito (Caffeine Only)

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

> Before you start, enable file extensions if you're on Windows.

---

This instruction is primarily intended for Caffeine users. If you're using Fusée Gelée, you don't need to perform this instruction. Atmosphere has already done everything for you.

- **Pros**
  - Doesn't block access to Nintendo servers, but blocks the ability to authenticate on them. The server simply won't recognize the console as a Switch when communicating
  - Will work even if Nintendo changes the authentication method, server addresses, or anything else
  - Requires no additional setup

- **Cons**
  - Requires interaction with system files through an application, therefore potentially dangerous

## Instructions

### Blocking Access to Nintendo Servers

1. Create a [NAND backup](backup-nand.md) of your console and store it in a safe place if you haven't done so already
2. Boot into [hekate](cfw.md) using the exploit supported on your console by launching the `payload.bin` from the `.zip` archive of [kefir](kefir.md)
   - Hold (VOL-) on the console during the kefir logo appearance to enter hekate
   - Skip this step if you're already in hekate
3. Install [kefir](kefir.md) according to the instructions in its repository
   - If you've already done this, you don't need to repeat it
4. Navigate to the "**Payloads**" menu
5. Select "**Incognito_RCM.bin**"
6. Select "**Backup (SysNAND)**" or "**Backup (EmuMMC)**" depending on which partition you want to block Nintendo server access from
   - Menu navigation is done with volume buttons, selection with (POWER) button
   - If you don't use EmuNAND, select SysNAND
   - If you use EmuNAND for piracy and SysNAND for legitimate games, select EmuNAND
7. Select "**Incognito (SysNAND)**" or "**Incognito (EmuMMC)**" depending on which partition you want to block Nintendo server access from
8. Wait for the installation to complete and press any button
9. Select "**Power Off**" to turn off the console
10. Remove the memory card from the console and insert it into your PC
11. Copy `prodinfo_sysnand.bin` from the root of the memory card to a safe place - this is a backup of your PRODINFO in its unmodified state

---

**SWITCH TORRENT LIBRARY TELEGRAM BOT**

THE LARGEST FREE GAME LIBRARY FOR NINTENDO SWITCH

[JOIN NOW. PASSWORD: LONDON](https://t.me/Switch_library_bot)
# AutoRCM

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

AutoRCM modifies the boot sector on the console in a special way, causing the console to be unable to boot directly into the system and automatically boot into RCM mode. Simply turning on the console will automatically put it into recovery mode. No need to hold button combinations or use a shorting tool, but you still need to send the payload to launch the firmware!

> **WARNING**: If you're using [Caffeine](caffeine.md), you **MUST NOT** use AutoRCM under any circumstances! Otherwise, the console will become a brick! If you suspect AutoRCM is enabled, remove it using this instruction!

## What You'll Need

- Ability to [run payloads via Fusée Gelée](fusee-gelee.md)

## Recommended Method

### Installing AutoRCM

1. Boot into [hekate](cfw.md) using the exploit supported on your console by launching the `payload.bin` from the `.zip` archive of [kefir](kefir.md)
   - Hold (VOL-) on the console during the kefir logo appearance to enter hekate
   - Skip this step if you're already in hekate
2. Navigate to "**Tools**" → "**Archive bit - AutoRCM**" (at the bottom of the screen) and set "**AutoRCM**" to "**ON**"
3. Press "**Home**" at the top of the screen
4. [Launch](cfw.md) the custom firmware

---

### Disabling AutoRCM

1. Boot into [hekate](cfw.md) using the exploit supported on your console by launching the `payload.bin` from the `.zip` archive of [kefir](kefir.md)
   - Hold (VOL-) on the console during the kefir logo appearance to enter hekate
   - Skip this step if you're already in hekate
2. Navigate to "**Tools**" → "**Archive bit - AutoRCM**" (at the bottom of the screen) and set "**AutoRCM**" to "**OFF**"
3. Press "**Home**" at the top of the screen
4. [Launch](cfw.md) the custom firmware

---

**SWITCH TORRENT LIBRARY TELEGRAM BOT**

THE LARGEST FREE GAME LIBRARY FOR NINTENDO SWITCH

[JOIN NOW. PASSWORD: LONDON](https://t.me/Switch_library_bot)
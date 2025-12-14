# Save Backup and Restoration

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

## Creating and Restoring Backups via MTP

### Connecting the Console to PC

1. Connect the console to PC with a USB-C cable
2. **On the console**, launch **DBI** through the [Homebrew Launcher](hbl.md)
3. Press "**Run MTP Responder**"
   - A new MTP device will be mounted to your PC
4. Open the newly appeared "**Switch**" device on your computer (in "This Computer" on Windows)

### Creating Save Backups

1. Navigate to the "**Saves**" drive and copy the folders `Installed games` and `Uninstalled games` to your PC
   - To create a backup of a **specific installed game**, go to the `Installed games` folder and copy that game's folder to your PC. Look for saves of uninstalled games in the `Uninstalled games` folder
   - If you're looking for a backup for a specific user, go to the game's folder and you'll see backups for all users on the console

### Restoring Save Backups

> For save restoration using this method, the game must have been launched at least once on your console

1. Navigate to "**Saves**" drive → `Installed games` → `%game_name%` → `%user_name%` and copy the data from the corresponding folder in your backup
   - This allows you to copy save backups created by other programs, or restore someone else's saves

---

**SWITCH TORRENT LIBRARY TELEGRAM BOT**

THE LARGEST FREE GAME LIBRARY FOR NINTENDO SWITCH

[JOIN NOW. PASSWORD: LONDON](https://t.me/Switch_library_bot)
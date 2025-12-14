# Getting Started?

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

## How to Read This Guide

The guide is structured linearly. This means it's intended to be read starting from this page until you achieve the desired result.

First, it's recommended to read the entire guide, mentally performing all the actions you'll take during the hacking process. Familiarize yourself with the [FAQ](faq.md). This will make it much easier to understand what's expected of you when going through the guide in real situations. The guide is large and comprehensive, often including many unfamiliar terms for beginners and cross-references. Much information in the guide may seem excessive to you, as the goal was to cover the largest number of users and their configurations. It's impossible to simultaneously help everyone while keeping the guide accessible even to a small child. If you want to hack - **figure it out**.

I recommend opening the guide in a separate browser window, as many additional tabs will open during its execution. If you see a link in the guide - follow it, it's not there for nothing. Almost all links, except those that lead to the next step of the instruction, will open in a new tab. After completing the instruction from that link, close it and return to the page from which you opened it.

## Basic Terms

### Glossary

#### Kefir
In the context of this guide - a collection consisting of the selected custom firmware, necessary programs, and scripts that will install everything correctly. More about kefir [here](kefir.md). Why is it needed? It's very simple. Kefir contains the most useful and time-tested software, which in fresh kefir is always of the current version. Kefir is installed using a script written in such a way as to remove all problematic modules during installation, due to which the system may work unstably or not work at all. If problems arise, it's enough to name the kefir version to immediately understand which exact software and version is currently on your console. The basis of kefir is Atmosphere.

#### Atmosphere
An overlay over the console system that allows using it for piracy and launching homebrew, as well as many other interesting things. It's noteworthy that the original philosophy of Atmosphere did not imply launching pirated content, but it's precisely thanks to it that this is possible.

#### Chip (modchip, PicoFLY, RP2040, HWFLY, SXCore, SXLite, RCMX86, SAMD21)
A special device soldered to the console's motherboard. There are two types - glitch chips (SX Core and SX Lite / HWFly / PicoFly / RP2040) and SAMD21 (Trinket M0, Gemma M0, ItsyBitsy M0 Express, RCMx86 and others). Chips of the first type are intended for modifying so-called "unhackable" consoles. Thanks to chips of this type, it's now possible to hack absolutely any Nintendo Switch. Chips of the second type are only suitable for consoles hackable by the Fusée Gelée method. These chips don't actually hack anything by themselves. All they do is put the console into RCM and inject the payload, and they're only needed for the convenience of the end user. It's important to understand that without a chip of the first type, it's impossible to hack the console, while a chip of the second type is strictly optional.

#### RCM Mode (recovery mode)
**RCM** is the standard recovery mode for chips installed in the Nintendo Switch. It's through it that hacking via the Fusée Gelée method occurs. The console is put into RCM mode by shorting the necessary contacts in the rail where the right joycon enters. Remember that any console can be put into recovery mode, but the code from the payload will only launch on vulnerable ones. Consoles hacked by this method were released until summer 2018.

#### Erista
The codeword **Erista** designates first revision consoles (serial number starts with XA*). Erista are of two types - unpatched, vulnerable to the Fusée Gelée method, as well as patched, with the vulnerability closed. Patched consoles can be hacked **only** with the help of a chip!

#### Mariko
The codeword **Mariko** designates second revision consoles (the second letter in the serial number is a consonant, e.g., XK* or XJ*), as well as Switch Lite and OLED. They are built on a new process, giving them better battery life (large switches). They are hacked **only** by modchipping.

#### AutoRCM
**AutoRCM** is a state that requires special modification of the console's bootloader so that the console cannot boot normally. Hitting the wrong bootloader, the console immediately goes into RCM mode. It's used to avoid shorting contacts every time the console is turned off. Not recommended for use because it's impossible to distinguish whether the console is off without injecting a payload, due to which the console can discharge and it will be difficult to turn it on.

#### Custom Firmware (CFW, custom)
Custom firmware allows using all the console's capabilities and doing things inaccessible to regular homebrew users. For example, you can install unsigned software and launch it directly from the home screen. Currently, only one custom firmware is in development - Atmosphere. However, even in its current state, it's suitable for work and allows launching commercial games and homebrew. Based on Atmosphere's source code, the commercial firmware SX OS was created, as well as two free ones ReiNX and RajNX, whose development is currently stopped because even at the current stage, Atmosphere can do the same things but better.

#### Payload
A file with *.bin extension containing various tools for launching custom firmware on your console using a vulnerability in the console's protection.

#### NAND (internal memory)
The internal memory of the console, physically located on the NAND chip on the console's motherboard.

#### Stock (stock firmware, sysnand, OFW, official firmware, system software)
In this guide, this term refers to firmware launched from the console's internal memory (not from EmuNAND). A console from the store will come with exactly this firmware. Often serves as an antonym to EmuNAND. Stock can be patched by Atmosphere, can be used for licensing, can be used for piracy, however when saying stock we most often mean that the console's firmware is launched from the internal memory card to use the console for playing licensed games. A console from the store will come with exactly this firmware (without modifications). Therefore, it's most often called official. Can be found as stock (Full Stock) or semi-stock (Semi-Stock). In the first case, official firmware launches without additional patches, as it is without hacking. In the second case, a number of patches are still applied, for example, Homebrew Launcher will work, third-party modules will be loaded, reboot to hekate will work, etc. Full Stock is considered more secure, but primarily due to the human factor, since it doesn't allow the user to do anything at all that could potentially lead to a ban.

#### Semi-Stock
The same as stock, but with Atmosphere launched on top, but without patches that allow piracy. Needed for playing in official firmware, but with the ability to use mods, translations, overclocking, and cheats. Remember that you will likely be banned for using some mods and cheats.

#### EmuNAND, emuMMC
A full copy of NAND located on the memory card. Used to keep the official firmware as untouched as possible. For example, you can play pirated games in EmuNAND, and use online and purchased games in stock (as they call the original firmware located in the console's internal memory). This way, the chance of getting banned will be minimized.

#### Hekate
A custom bootloader that replaces Nintendo's. Thanks to hekate, we can greatly simplify launching custom firmware, make console backups in case of failure, install and configure emunand, as well as launch various payloads.

#### Homebrew
Under the word **[Homebrew](https://en.wikipedia.org/wiki/homebrew_(computer_games))**, they usually mean software not authorized by Nintendo. As an example, various homemade games, save backup and editing programs, and emulators of previous generation consoles can be given. Homebrew is launched through a special launcher - Homebrew Launcher.

#### Ban
If you get banned, you won't be able to use Nintendo's services, including online, the ability to buy games, etc. And that's all. A ban won't lead to console breakdown and won't turn it into a "brick".

#### Brick
A broken console. It's extremely difficult to bring a Switch to this state. Most often, an uncertain user will call absolutely anything a brick, even if it's cured by reinstalling kefir. However, in reality, only hardware failure can turn your console into a brick.

#### Dongle
A small-sized special device whose only task is to send a payload to the console. Used only with hardware exploits.

#### JIG
To use the Fusée Gelée vulnerability, the console must be put into RCM mode, for which certain contacts in the right joycon rail on the console must be shorted. Any device used for this is called a JIG for simplicity. [More details..](fusee-gelee.md)

#### Fuse (safety fuse)
A fuse from a special array indicating the console version. It "burns" when updating firmware to certain versions. Saving them, preventing burning, paying attention to their quantity at the moment makes no sense.

#### v2 (patched console)
A console in which the hardware vulnerability Fusée Gelée was closed, as well as a console with a reduced process chip - Mariko (second revision consoles) and Switch Lite. Such a console can be hacked ONLY with the help of a modchip, or if its firmware is 4.1.0 or lower.

#### v1 (unpatched console, old console, first revision console)
A console in which the hardware vulnerability Fusée Gelée is not closed, as a result of which such a console can be hacked with a paperclip, cable, and computer. Such consoles stopped being released since summer 2018.

#### Flashing process (flashing, installing custom firmware)
The process during which custom firmware is installed on the console. This process is dedicated to this guide.

#### Vulnerability (exploit)
A breach in the console's protection that hackers use to obtain extra rights on the console and launch unsigned code. Vulnerabilities can be hardware and software. The first require interaction with the console at the physical level, the second at the software level.

#### Host (payload sender)
A device that allows sending a payload to the console, a PC, smartphone on Android (iOS, if jailbroken) or a special device - dongle can be used as a host. Used only with hardware exploits.

## How Does Hacking Work?

With the appearance of "unhackable" consoles, hacking types are divided into **hacking with Fusée Gelée** and **hacking with a chip**. Works on firmware **21.0.0** and below.

### Hacking with Fusée Gelée
This method exploits a vulnerability in old versions of the Tegra chip, thanks to which a payload can be sent to the console - a file with executable code that will be launched on the console. This method is "tethered", meaning that if the console is completely turned off, the payload needs to be sent again after turning it on. More about this method will be told in the corresponding section of the guide.

### Hacking with a Chip
This method is suitable for absolutely all types of consoles, but is only recommended for those that cannot be hacked with Fusée Gelée. The console is hacked thanks to a mod chip installed on its motherboard. Keep in mind that chip installation is not simple and requires experience and tools, so it's not recommended to do it yourself.

## What Is Installed in This Guide?

With this guide, you will learn:
- Make NAND console backups
- Make EmuNAND
- Launch custom firmware
- Launch Homebrew
- Update console firmware in a way that leaves the possibility of downgrading for the future
- And finally, launch pirated games

## What You Need to Know Before You Start?

- Hacking is in active development. Therefore, some of its elements may seem non-trivial and will require skill and technical knowledge
- At any moment you can get banned, even if your goal is just to launch Homebrew
  - Once you launch homebrew on the console at least once, you leave logs on it that will be sent to Nintendo immediately when connecting to the internet. Currently, all custom firmware know how to save logs on the memory card instead of sending them to Nintendo, but even this doesn't give 100% guarantee that you won't be banned. If you get banned, all you lose is access to Nintendo's services. Exactly the same thing you'll deprive yourself of if you intentionally disconnect from the internet in an attempt to avoid a ban.
  - All protection methods against bans are purely theoretical, there's no guarantee that they will work
  - The most effective method against bans at the moment is using unlicensed software in EmuNAND. We will create it during the guide execution.
  - Use EmuNAND for launching unlicensed software and SysNAND for online
  - After completing the guide, you'll be able to safely use the internet, but still won't be able to play online games without buying them
- Your memory card must be [SDHC](https://en.wikipedia.org/wiki/Secure_Digital) or better, formatted in FAT32. GPT memory cards will not work. exFAT cards will work, however, FAT32 is **much** more reliable.

---

[Let's Start!!](get-started.md)

---

**SWITCH TORRENT LIBRARY TELEGRAM BOT**

THE LARGEST FREE GAME LIBRARY FOR NINTENDO SWITCH

[JOIN NOW. PASSWORD: LONDON](https://t.me/Switch_library_bot)
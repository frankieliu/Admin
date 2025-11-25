- This guide is based on the guides of xНЯ, the developer of KEFIR .
- You can solve most of the problems that arise using KEFIR
- We strongly recommend using DBI to install games.
- The best way to get games, DLC, and updates today is the Switch Torrent Library Telegram bot.

- If you are a MacOS user, use these tips to avoid memory card problems.

- Make backups of your saves as often as possible!

- If the console freezes or shows no signs of life, turn it off by holding the (POWER) button for 30 seconds, then turn it on and forward the payload!

# How to read this guide

The guide is structured linearly. This means you're expected to read it starting from this page and continuing until you achieve your desired result.

First, we recommend reading the entire manual, mentally performing all the steps you'll be performing during the flashing process. Check out the FAQ . This will make it much easier for you to understand what's being asked of you when you go through the guide in a real-world situation. The manual is extensive and comprehensive, often including many unfamiliar terms and cross-references for beginners. Much of the information in the manual may seem superfluous, as the goal of the manual is to cover as many users and their configurations as possible. It's impossible to help everyone and make the guide accessible even to a small child. If you want to flash the firmware, figure it out .

I recommend opening the guide in a separate browser window, as many additional tabs will open while you complete it. If you see a link in the guide, click it—it's there for a reason. Almost all links, except those that take you to the next step in the instructions, will open in a new tab. After you complete the instructions for a given link, close it and return to the page from which you opened it.

# Basic terms

## Glossary

### Kefir
In the context of this guide, it's a collection consisting of the selected custom version, the necessary programs, and scripts that will install everything correctly. Learn more about Kefir here . Why do you need it? It's very simple. Kefir contains the most useful and time-tested software, which is always up-to-date in the latest Kefir release. Kefir is installed using a script written to remove any problematic modules during installation that could cause the system to become unstable or not work at all. If problems arise, simply specify the Kefir version to immediately identify the specific software and version currently installed on your console. Kefir's core is Atmosphere.

Kefir

### Atmosphere
An add-on to the console system that allows it to be used for pirated content, homebrew, and many other interesting things. It's worth noting that Atmosphere's original philosophy didn't include running pirated content, but it's precisely thanks to it that it's possible to do so.

Atmosphere

### Chip (modchip, PicoFLY, RP2040, HWFLY, SXCore, SXLite, RCMX86, SAMD21)
A special device soldered to the console's motherboard. There are two types: a glitch chip (SX Core and SX Lite / HWFly / PicoFly / RP2040) and a SAMD21 (Trinket M0, Gemma M0, ItsyBitsy M0 Express, RCMx86, and others). The first type of chip is designed for modifying so-called "unflashable" consoles. Thanks to this type of chip, any Nintendo Switch can now be flashed. The second type of chip is only suitable for consoles flashed using the Fusée Gelée method. Chips of this type do not hack anything by themselves. All they do is enter the console into RCM and forward the payload; they are intended solely for the end user's convenience. It is important to understand that without the first type of chip, it is impossible to flash the console, and the second type of chip is strictly optional.

Chip (modchip, PicoFLY, RP2040, HWFLY, SXCore, SXLite, RCMX86, SAMD21)

### RCM mode (recovery mode)
RCM is the default recovery mode for the chips installed in the Nintendo Switch. It's used for the Fusée Gelée hack. The console is put into RCM by shorting the appropriate contacts in the cradle containing the right Joy-Con. It's important to remember that any console can enter recovery mode, but only a vulnerable one will run the payload code. Consoles hackable using this method were released before the summer of 2018.

RCM mode (recovery mode)

### Distinguish
The code word "Erista" designates first-revision consoles (the serial number begins with XA*). There are two types of Erista: unpatched, vulnerable to the Fusée Gelée method, and patched, with the vulnerability closed. Patched consoles can only be flashed using a chip!

Distinguish

### Virtual
The codename "Mariko" refers to the second-revision prefixes (the second letter in the serial number is a consonant, such as XK* or XJ*), as well as the Switch Lite and OLED. They are assembled using a new process technology, resulting in improved battery life (large switches). They can be flashed only by chipping.

Virtual

### AutoRCM
AutoRCM is a mode that requires deliberately corrupting the console's bootloader, preventing it from turning on normally. If the console encounters an invalid bootloader, it immediately enters RCM mode. This is used to avoid shorting contacts every time the console is turned off. It is not recommended for use because it is impossible to determine whether the console is turned off without forwarding the payload, which can cause the console to die and be difficult to turn on.

AutoRCM

### Custom firmware (CFW, custom)
Custom firmware allows you to take full advantage of the console's features and do things unavailable to regular homebrew users. For example, you can install unsigned software and launch it directly from the home screen. Currently, only one custom firmware is in development: Atmosphere. However, in its current state, it is already functional and can run commercial games and homebrew. A commercial firmware, SX OS, was created based on Atmosphere's source code, as well as two free firmware versions, ReiNX and RajNX. Development of these two versions has been discontinued because, even in its current state, Atmosphere can do everything the same, but better.

Custom firmware (CFW, custom)

### Payload
A *.bin file containing various tools for running custom games on your console, exploiting a security vulnerability in the console.

Payload

### NAND (internal memory)
The console's internal memory, physically located on a NAND chip on the console's motherboard.

NAND (internal memory)

### Stock (stock firmware, sisnand, OFW, official firmware, system software)
In this guide, this term refers to firmware running from the console's internal memory (not EmuNAND). Store-bought consoles will come with this firmware. It's often used interchangeably with EmuNAND. Stock firmware can be patched with Atmosphere, used for licensed games, or used for pirated versions. However, by "stock" we most often mean the console's firmware is running from the internal memory card for use with licensed games. Store-bought consoles will come with this firmware (without modifications). Therefore, it's often referred to as official. It can be found as "Full Stock" or "Semi-Stock." The former runs the official firmware without any additional patches, just as it is, without any hacking. In the second case, a number of patches are still applied, for example, the Homebrew Launcher will work, third-party modules will be loaded, rebooting to Hecate will work, etc. Full Stock is considered more secure, but primarily due to the human factor, since it does not allow the user to do anything that could potentially lead to a ban.

Stock (stock firmware, sisnand, OFW, official firmware, system software)

### Semi-stock
Same as stock, but with Atmosphere running on top, but without the patches that allow piracy. Required for playing on the official firmware, but with the ability to use mods, translations, overclocking, and cheats. Keep in mind that using some mods and cheats will likely result in a ban.

Semi-stock

### EmuNAND, emuMMC
A complete copy of the NAND flash memory located on the memory card. This is used to leave the official firmware as untouched as possible. For example, you can play pirated EmuNAND while using the stock firmware (the original firmware located in the console's internal memory) for online play and purchased games. This minimizes the chance of getting banned.

EmuNAND, emuMMC

### Hecate
A custom bootloader that replaces Nintendo's. Thanks to hekate, we can greatly simplify launching custom firmware, backing up the console in case of a crash, installing and configuring emu-and, and running various payloads.

Hecate

### Homebrew
Homebrew typically refers to software not authorized by Nintendo. Examples include various homebrew games, save backup and editing programs, and emulators for previous-generation consoles. Homebrew runs via a special launcher called the Homebrew Launcher .

Homebrew

### Ban
If you get banned, you won't be able to use Nintendo services, including online play, the ability to purchase games, and so on. That's all. A ban won't brick or damage your console.

Ban

### Brick
A broken console. Bringing a Switch to this state is extremely difficult. More often than not, an insecure user will call anything a "brick," even if it can be fixed by reinstalling the software. However, in reality, only a hardware failure can brick your console.

Brick

### Dongle
A small, specialized device whose sole purpose is to send a payload to the console. Used only with a hardware exploit.

Dongle

### JIG
To exploit the Fusée Gelée exploit, the console must be put into RCM mode, which requires shorting contacts in the right Joy-Con sled in a specific manner. For simplicity, any device used for this purpose is called a paperclip. More details...

JIG

### Fuse
A fuse from a special array indicating the console version. It "burns" when updating the firmware to certain versions. Saving them, preventing them from burning out, or paying attention to their number is currently pointless.

Fuse

### Not a patched console
A console with the Fusée Gelée hardware vulnerability patched, as well as a console with a chip using a reduced manufacturing process—the Mariko (second revision consoles) and Switch Lite. Such consoles can ONLY be flashed using a modchip or if their firmware is 4.1.0 or lower.

v2 (patched console)

### v1 (unpatched console, old console, first revision console)
A console that is vulnerable to the Fusée Gelée hardware vulnerability, making it possible to flash the console using a paperclip, a cable, and a computer. These consoles have been discontinued since the summer of 2018.

v1 (unpatched console, old console, first revision console)

### The firmware process (flashing, custom installation)
The process of installing custom firmware on a set-top box. This guide is dedicated to this process.

The firmware process (flashing, custom installation)

### Vulnerability (exploit)
A security flaw in a console that hackers exploit to gain extra privileges on the console and run unsigned code. Vulnerabilities can be hardware-based or software-based. The former require physical interaction with the console, while the latter rely on software.

Vulnerability (exploit)

### Host (payload sender)
A device that allows you to send a payload to the console. The host can be a PC, an Android smartphone (or iOS if jailbroken), or a special device called a dongle. This is only used with a hardware exploit.

Host (payload sender)

### Glossary

# How does hacking work?
With the advent of "unflashable" consoles, hacking methods have become divided into Fusée Gelée hacking and chip hacking . Works on firmware 20.4.0 and below.

## Hacking with Fusée Gelée
This method exploits a vulnerability in older versions of the Tegra chip, allowing a payload—a file containing executable code—to be sent to the set-top box. This method is untethered, meaning that if the set-top box is completely powered off, the payload must be re-sent after powering it on. This method is discussed in more detail in the relevant section of the manual.

## Hacking with a chip
This method is suitable for all types of consoles, but is only recommended for those that cannot be flashed with Fusée Gelée. The console is hacked using a mod chip installed on its motherboard. Keep in mind that installing the chip is not easy and requires experience and tools, so we do not recommend attempting it yourself.

# What is installed in this guide?
With this guide you will learn how to:

- Make a backup of the console's NAND
- Make EmuNAND
- Run custom firmware
- Run Homebrew
- Update the firmware of the set-top box in such a way as to leave the possibility of downgrading in the future
- And finally, run pirated games

## What do you need to know before you start?
- The hack is in active development. Therefore, some elements may seem non-trivial and require skill and technical knowledge.
- You can get banned at any time, even if your goal is just to run Homebrew.
  - By running Hombre even once on your console, you leave logs on it, which will be sent to Nintendo as soon as you connect to the internet. Currently, all custom games can save logs to a memory card instead of sending them to Nintendo, but even this doesn't guarantee you won't be banned. If you are banned, all you'll lose is access to Nintendo services. You'll lose exactly the same if you intentionally disconnect from the internet in an attempt to avoid a ban.
  - All methods of protection against bans are purely theoretical, there is no guarantee that they will work.
  - The most effective method for preventing a ban is currently using unlicensed software in EmuNAND. We'll create one as part of this guide.
  - Use EmuNAND to run unlicensed software and SysNAND for online use
  - After completing the guide, you will be able to use the internet safely, but you will still not be able to play online games without purchasing them.
- Your memory card must be SDHC or better, formatted in FAT32. GPT memory cards will not work. exFAT cards will work, but FAT32 is much more reliable.

Let's begin!!
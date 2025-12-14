# Launching Payload through Fusée Gelée

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

<details>
<summary>Video Instruction</summary>

⚠️ **ATTENTION!!!** We don't recommend blindly following video instructions! Use it only as a supplementary aid! The fact is that the text guide is constantly updated. It's impossible to keep track of all updates in the guide and change the video instruction every time! Therefore, the text guide will always be more accurate and current than the video!

[![Video Guide](https://img.youtube.com/vi/jxrkxHPfec8/0.jpg)](https://www.youtube.com/watch?v=jxrkxHPfec8)

</details>

> ℹ️ This page is explanatory. It doesn't cover the actual launching of custom firmware, but only provides the theoretical part. The practical part will be given later in the guide execution process.

## Information about Fusée Gelée

Some NVIDIA Tegra mobile processors released before 2016 contain a buffer overflow vulnerability in BootROM recovery mode (**RCM**). An attacker with physical access to the device's USB port and the ability to force a device reboot into **RCM** can use the vulnerability to execute unsigned code.

**Fusée Gelée** is a chain of exploits for Nintendo Switch built around the hardware vulnerability of the Nvidia Tegra chip. With its help, it's possible to launch unsigned code on Nintendo Switch. Since the vulnerability is hardware-based, it's impossible to patch without changing the hardware revision. However, the latest console versions lack this hole, so be careful when purchasing a device for hacking. You can find out if your console can be hacked [here](get-started.md).

## What is RCM

RCM is the standard recovery mode on Tegra devices. To enter it, you need to turn off the console, then hold (POWER) + (VOL+) + (HOME). But not the (HOME) we see on the right joycon, but the button that NVIDIA Tegra considers as such. Unfortunately, it's not on the console itself. We'll need to turn off the console, short a specific contact in the right joy-con mounting place to ground (for this, a shorting tool is used), connect the console to a PC, and send a payload to it in any convenient way. Below we'll look in more detail at how to do this.

## How It All Happens

In general terms, the chain is this - you insert a **jig** into the console, enter it into **RCM** and send a payload to it, which in turn executes code on the console itself. The payload, also called a **payload**, can be transmitted through a PC, smartphone, or a special **dongle** created exclusively for this purpose. For simplicity, any device capable of transmitting a payload we will call a **host**. To simplify firmware launching, the host can be [built into the console itself](https://gbatemp.net/threads/internal-modchip-samd21-trinket-m0-gemma-m0-itsybitsy-m0-express-guide-files-support.508068/).

A host built into the console is called a **chip**. The difference between a chip and a dongle is primarily that the first is always in the console, launches the payload immediately when it's turned on, and also monitors to prevent complete console discharge. It should be understood that this is not the same chip used to hack consoles on Mariko and patched first revision consoles. In this case, the chip simply replaces the dongle. In the case of chipping on Mariko, the chip itself is the hack. That is, on Mariko without a chip, you won't be able to hack the console at all, while in the case of a console vulnerable to Fusée Gelée, you can do without a chip by sending a payload through a dongle or PC.

## What You'll Need

- **Jig** (shorting tool)
- **Host** (PC, Android phone, or dongle)
- USB cable (USB-C to USB-A for PC, USB-C to USB-C for modern phones)

## Popular Payload Injectors

### For PC:
- **TegraRcmGUI** - Windows application
- **NXBoot** - Cross-platform
- **ReiNX Injector** - Simple web injector

### For Android:
- **ReiNX for Android**
- **NXPlay Mobile**
- **RCM Loader app**

### Dedicated Dongles:
- **RCM Loader**
- **SX Pro**
- **NanoRCM**

## Step-by-Step Process

### Preparing Your Console

1. **Power off** your Switch completely
2. **Insert the jig** into the right Joy-Con rail
3. Connect the USB cable to your Switch

### Entering RCM Mode

1. **Hold VOLUME UP** button
2. **Press POWER** button while still holding VOLUME UP
3. The screen should remain black (this is normal - you're in RCM)
4. Keep holding both buttons for 3-5 seconds

### Injecting the Payload

1. **Launch your injector** on the host device
2. **Select the payload file** (e.g., `hekate.bin` from KEFIR)
3. **Click inject** or send
4. Your console should boot into the payload (usually Hekate menu)

### After Injection

1. **Remove the jig** from the rail
2. **Launch CFW** from the menu
3. **Enjoy** your hacked console!

## Troubleshooting

- **If nothing happens**: Check if the jig is making proper contact
- **If console boots normally**: Jig didn't work, try repositioning
- **If screen is black but no boot**: Try different USB port or cable
- **If injector fails**: Try different injector software

---

**SWITCH TORRENT LIBRARY TELEGRAM BOT**

THE LARGEST FREE GAME LIBRARY FOR NINTENDO SWITCH

[JOIN NOW. PASSWORD: LONDON](https://t.me/Switch_library_bot)
[Skip to content](https://switch.hacks.guide/user_guide/rcm/sending_payload.html#VPContent)

[NH Switch Guide](https://switch.hacks.guide/)

Main Navigation [User Guide](https://switch.hacks.guide/user_guide/getting_started.html)[Homebrew](https://switch.hacks.guide/homebrew/)[Tutorials](https://switch.hacks.guide/extras/)[FAQ](https://switch.hacks.guide/faq.html)[About](https://switch.hacks.guide/about.html)

[](https://discord.gg/C29hYvh)[](https://github.com/nh-server/switch-guide)

Appearance

[](https://discord.gg/C29hYvh)[](https://github.com/nh-server/switch-guide)

Menu

On this page

Sidebar Navigation

## User Guide

[

Getting Started

](https://switch.hacks.guide/user_guide/getting_started.html)

[

RCM

](https://switch.hacks.guide/user_guide/rcm/)

[

Entering RCM

](https://switch.hacks.guide/user_guide/rcm/entering_rcm.html)

[

Sending a Payload

](https://switch.hacks.guide/user_guide/rcm/sending_payload.html)

[

CFW on sysMMC vs. CFW on emuMMC

](https://switch.hacks.guide/user_guide/all/cfw_environment.html)

### Multiple Options

[

Partitioning the microSD Card and creating the emuMMC

](https://switch.hacks.guide/user_guide/all/partitioning_sd.html)

[

Formatting and/or partitioning the microSD Card

](https://switch.hacks.guide/user_guide/all/partitioning_sd_syscfw.html)

[

microSD Card preparations

](https://switch.hacks.guide/user_guide/all/sd_preparation.html)

[

Making Essential Backups

](https://switch.hacks.guide/user_guide/all/making_essential_backups.html)

[

Launching CFW

](https://switch.hacks.guide/user_guide/all/launching_cfw.html)

## Other

[

FAQ

](https://switch.hacks.guide/faq.html)

[

About

](https://switch.hacks.guide/about.html)

On this page

-   [Injecting a payload](https://switch.hacks.guide/user_guide/rcm/sending_payload.html#injecting-a-payload "Injecting a payload")
-   [Preparing hekate](https://switch.hacks.guide/user_guide/rcm/sending_payload.html#preparing-hekate "Preparing hekate")

# Sending a Payload [​](https://switch.hacks.guide/user_guide/rcm/sending_payload.html#sending-a-payload)

WARNING

**If you are here to test if your Switch is patched**

Make sure you have [put your device into RCM](https://switch.hacks.guide/user_guide/rcm/entering_rcm.html) and downloaded hekate. Once finished, if your console is **not** patched, continue with the "Preparing hekate" section at the bottom of the page.

Now that the device is in RCM, we will need to send it a payload. The methods are mostly the same but slightly differ depending on what hardware you have available.

## Injecting a payload [​](https://switch.hacks.guide/user_guide/rcm/sending_payload.html#injecting-a-payload)

Windows

### What you need: [​](https://switch.hacks.guide/user_guide/rcm/sending_payload.html#what-you-need)

-   The latest release of [TegraRcmGUI](https://github.com/eliboa/TegraRcmGUI/releases) (either the MSI or zip)
-   A USB-A to USB-C cable (or a standard USB-C cable if your computer natively supports USB-C)
-   The latest release of [hekate](https://github.com/CTCaer/Hekate/releases/). The hekate payload (`hekate_ctcaer_(version).bin`) is located inside of the `hekate_ctcaer_(version).zip`.

### Instructions: [​](https://switch.hacks.guide/user_guide/rcm/sending_payload.html#instructions)

1.  Install and run TegraRcmGUI.
2.  Navigate to the `Settings` tab, then press `Install Driver` and follow the on-screen instructions.
    -   If you face issues when installing the driver, follow the [driver installation with Zadig](https://switch.hacks.guide/user_guide/rcm/sending_payload.html#driver-installation-with-zadig) section below.
3.  Connect your Switch in RCM to your PC using the USB cable.
4.  Navigate to the `Payload` tab of TegraRcmGUI.
    -   Your Switch should be shown as detected in the bottom left corner.
5.  Press the file button next to `Inject payload`, and navigate to and select the `hekate_ctcaer_X.X.X.bin` file.
    -   Do not use the hekate payload included in TegraRcmGUI. It is outdated and missing a feature needed later in the guide.
6.  Click `Inject payload` to launch the payload you selected.
    -   If your payload was successfully injected your switch should have yellow text that says "Update bootloader folder!", this will be resolved soon.

### Driver installation with Zadig [​](https://switch.hacks.guide/user_guide/rcm/sending_payload.html#driver-installation-with-zadig)

Follow these steps if you face issues when installing the driver with TegraRcmGUI. You will need the latest version of [Zadig](https://zadig.akeo.ie/).

1.  Launch Zadig. In the `Options` menu, be sure that `List All Devices` is enabled.
2.  Connect your Switch in RCM to your PC using the USB cable.
3.  In Zadig, select "APX" in the device list.
4.  Select `libusbK (v3.1.0.0)` in the driver list.
5.  Click `Install Driver` and wait for the installation to finish.

Linux

### What you need: [​](https://switch.hacks.guide/user_guide/rcm/sending_payload.html#what-you-need-1)

-   The latest release of [fusee-nano](https://github.com/DefenderOfHyrule/fusee-nano/releases) (also available on the [AUR](https://aur.archlinux.org/packages/fusee-nano))
    -   If you use Arch Linux or a derivative distro, the AUR package is recommended.
-   A USB-A to USB-C cable (or a standard USB-C cable if your computer natively supports USB-C)
-   The latest release of [hekate](https://github.com/CTCaer/hekate/releases/). The hekate payload (`hekate_ctcaer_(version).bin`) is located inside of the `hekate_ctcaer_(version).zip`.

### Instructions: [​](https://switch.hacks.guide/user_guide/rcm/sending_payload.html#instructions-1)

1.  Download and run the payload injector from your terminal. You will need to run the injector as root, unless you follow the instructions at [Linux injection without root](https://switch.hacks.guide/extras/adding_udev.html).
2.  Connect your Switch in RCM to your PC using the USB cable.
3.  Run fusee-nano with: `./fusee-nano /path/to/hekate-ctcaer_X.X.X.bin`
    -   As mentioned earlier, unless you have followed the instructions at [Linux injection without root](https://switch.hacks.guide/extras/adding_udev.html), this will require root to run. For most systems, this is done with `sudo`
    -   If your payload was successfully injected your switch should have yellow text that says "Update bootloader folder!", this will be resolved soon.

Mac

### What you need: [​](https://switch.hacks.guide/user_guide/rcm/sending_payload.html#what-you-need-2)

-   The latest release of [CrystalRCM](https://github.com/prayerie/CrystalRCM/releases) (the `CrystalRCM.(version).dmg` file)
-   A USB-A to USB-C cable (or a standard USB-C cable if your computer natively supports USB-C)
-   The latest release of [hekate](https://github.com/CTCaer/hekate/releases/). The hekate payload (`hekate_ctcaer_(version).bin`) is located inside of the `hekate_ctcaer_(version).zip`.

### Instructions: [​](https://switch.hacks.guide/user_guide/rcm/sending_payload.html#instructions-2)

1.  Download the latest release of CrystalRCM.
2.  Mount the `CrystalRCM.(version).dmg` file, open the mounted disk image in File Explorer and copy the `CrystalRCM.app` file inside of the mounted disk image to any location on your Mac.
3.  Open the `CrystalRCM.app` app, then click `Payload...` and select the `hekate_ctcaer_X.X.X.bin` file.
    -   macOS may warn you about the application being downloaded from the internet. To get around this warning, hold the control key while clicking the application, then click Open and Open again.
    -   **macOS Sequoia users:** Apple has changed how unsigned applications from the internet are opened. You will need to follow the instructions [here](https://wiki.hacks.guide/wiki/Open_unsigned_applications_on_macOS_Sequoia) to open the application.
4.  Connect your Switch in RCM to your PC using the USB cable, make sure it's also detected in CrystalRCM.
5.  Once selected, click `Push!`. The payload should now be injected successfully.
    -   If your payload was successfully injected your switch should have yellow text that says "Update bootloader folder!", this will be resolved soon.

Android

### What you need: [​](https://switch.hacks.guide/user_guide/rcm/sending_payload.html#what-you-need-3)

-   The latest release of [Rekado](https://github.com/MenosGrante/Rekado/releases)
-   You will need to enable Unknown Sources in your device settings to install this
-   A USB-C cable
-   If your device has a USB-C port, you may use a C-C cable
-   If your device only has a Micro USB port, you will need a USB OTG adapter and a USB A-C cable
    -   This **will not work** on every phone!
-   The latest release of [hekate](https://github.com/CTCaer/hekate/releases/). The hekate payload (`hekate_ctcaer_(version).bin`) is located inside of the `hekate_ctcaer_(version).zip`.

### Instructions: [​](https://switch.hacks.guide/user_guide/rcm/sending_payload.html#instructions-3)

1.  Copy the hekate\_ctcaer `.bin` file from the hekate `.zip` file to a location on your phone.
    -   A tool such as Amaze File Manager can do this.
2.  Launch Rekado on your phone.
3.  Navigate to `Payloads` (Signified by a downwards arrow with a line), then press the `+` button at the bottom right.
4.  Navigate to your hekate\_ctcaer `.bin` file and tap it to add it to Rekado's menu.
5.  **Optional, but recommended**: Navigate to Rekado's settings in the top right and enable `Hide bundled`.
6.  Connect your Switch in RCM to your phone using the USB cable.
7.  If prompted, grant Rekado access to the Switch.
8.  Select the `hekate_ctcaer_X.X.X.bin` file in the dialog that pops up.
    -   If your payload was successfully injected your switch should have yellow text that says "Update bootloader folder!", this will be resolved soon.

Chromebook

### What you need: [​](https://switch.hacks.guide/user_guide/rcm/sending_payload.html#what-you-need-4)

-   A USB-A to USB-C cable

WARNING

**About USB-C**

If your Chromebook has a USB-C port, do note that this will not work using a C-C cable.

### Instructions: [​](https://switch.hacks.guide/user_guide/rcm/sending_payload.html#instructions-4)

1.  Go to the injection [website](https://fusee.eiphax.tech/) and scroll all the way down
2.  Open the dropdown menu and select `hekate_ctcaer_X_X_X` from the list.
3.  Connect your Switch in RCM to your Chromebook using the USB cable.
4.  Select "Deliver Payload". A pop-up will appear. Click the `APX` option.
5.  Press the Connect button and the payload will be injected.
    -   If your payload was successfully injected your switch should have yellow text that says "Update bootloader folder!", this will be resolved soon.

DANGER

**If nothing happens after you send the payload**

If your console's screen remains black after you've sent hekate (or any other payload), it's possible your payload was corrupted, or that your console is patched. If your payload injector program shows that zero or 0x0000 bytes were sent, then it is patched. This isn't a one-time glitch or up for debate; it is patched. Consider an alternate method that isn't via RCM.

## Preparing hekate [​](https://switch.hacks.guide/user_guide/rcm/sending_payload.html#preparing-hekate)

We will prepare the microSD card for formatting/partitioning before going to the next page. Removing the microSD card while in hekate is safe so turning off the console is not necessary and keeping it on will save time that would be spent reinjecting the payload.

DANGER

Following the guide will delete everything on your microSD card!

Later in the guide, you will be formatting and/or partitioning your microSD card. This means that all data on the microSD card will be lost. Now is a good time to back up _all_ of its data to a safe place (for example, on your PC or external drive) so that you can restore it later. You can do this by following the instructions below.

### What you need: [​](https://switch.hacks.guide/user_guide/rcm/sending_payload.html#what-you-need-5)

-   The latest release of [hekate](https://github.com/CTCaer/hekate/releases/).
-   Your microSD card

### Instructions: [​](https://switch.hacks.guide/user_guide/rcm/sending_payload.html#instructions-5)

1.  Without turning your Switch off, remove the microSD card from the Switch.
2.  Insert your microSD card into your computer.
3.  Copy the `Nintendo` folder (and any other important data) from the root of your microSD card to a safe space on your device.
4.  Extract the hekate `.zip` to a location on your computer
5.  Inside the extracted hekate folder you will find a folder named `bootloader`.
6.  Copy the `bootloader` folder to the root of your microSD card.
7.  Put your microSD card back into your Switch.
8.  Press any button to continue to the hekate menu.
9.  Use volume up and volume down to navigate the hekate menu. Hover over 'reload' and press the power button to select. Your screen should now have the hekate GUI (Nyx) pictured below. ![Nyx](https://switch.hacks.guide/assets/nyx.C8ytBgWB.bmp)

TIP

[Continue to choosing your CFW environment](https://switch.hacks.guide/user_guide/all/cfw_environment.html)
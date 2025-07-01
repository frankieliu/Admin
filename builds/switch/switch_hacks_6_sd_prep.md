[Skip to content](https://switch.hacks.guide/user_guide/all/sd_preparation.html#VPContent)

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

### RCM

[

RCM

](https://switch.hacks.guide/user_guide/rcm/)

[

Entering RCM

](https://switch.hacks.guide/user_guide/rcm/entering_rcm.html)

[

Sending a Payload

](https://switch.hacks.guide/user_guide/rcm/sending_payload.html)

### Modchip

[

Introduction to Modchips

](https://switch.hacks.guide/user_guide/modchip/)

[

Payload and bootloader folder placement

](https://switch.hacks.guide/user_guide/modchip/preparing_hekate.html)

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

- [What you need:](https://switch.hacks.guide/user_guide/all/sd_preparation.html#what-you-need "What you need:")
- [Instructions:](https://switch.hacks.guide/user_guide/all/sd_preparation.html#instructions "Instructions:")

# microSD Card preparations [​](https://switch.hacks.guide/user_guide/all/sd_preparation.html#microsd-card-preparations)

We will now place the required files for the Atmosphère custom firmware and some additional homebrew files on the microSD card.

Atmosphère has its own bootloader, called fusee. For the purposes of this guide we will be using hekate instead, so that we can back up the system's NAND (internal storage) and take advantage of other advanced features in the future.

WARNING

**File name extensions**

If you use Windows, you should enable file name extensions before continuing. See [this link](https://switch.hacks.guide/extras/showing_file_extensions.html) for a guide on how to do this.

## What you need: [​](https://switch.hacks.guide/user_guide/all/sd_preparation.html#what-you-need)

- The latest release of [hekate](https://github.com/CTCaer/Hekate/releases/) (Download the `hekate_ctcaer_(version).zip` release of hekate)
- The hekate config file: [hekate\_ipl.ini](https://switch.hacks.guide/files/emu/hekate_ipl.ini)
- The DNS.MITM DNS redirection config: [emummc.txt](https://switch.hacks.guide/files/emummc.txt)
- The bootlogo zip folder: [bootlogos.zip](https://switch.hacks.guide/files/bootlogos.zip)
- The latest release of [Atmosphère](https://github.com/Atmosphere-NX/Atmosphere/releases). Download the `atmosphere-(version)-master-(version)+hbl-(version)+hbmenu-(version).zip` release of Atmosphère.
- The latest release of [JKSV](https://github.com/J-D-K/JKSV/releases) (Download the `JKSV.nro` release of JKSV)
- The latest release of [FTPD](https://github.com/mtheall/ftpd/releases) (Download the `ftpd.nro` release of FTPD)
- The latest release of [NXThemesInstaller](https://github.com/exelix11/SwitchThemeInjector/releases) (Download the `NXThemesInstaller.nro` release of NXThemesInstaller)
- The latest release of [NX-Shell](https://github.com/joel16/NX-Shell/releases) (Download the `NX-Shell.nro` release of nx-shell)
- The latest release of [Goldleaf](https://github.com/XorTroll/Goldleaf/releases) (Download the `Goldleaf.nro` release of Goldleaf)

DANGER

**About ChromeOS**

If you're on a Chromebook, the following section may prove to be difficult. The native file manager on ChromeOS does not support basic file manager functionalities such as replacing and/or merging files/folders. Please verify your file and folder placement using the "**Full folder/file structure**" section near the bottom of this page.

## Instructions: [​](https://switch.hacks.guide/user_guide/all/sd_preparation.html#instructions)

1. Navigate to the accessible drive.
    
2. Copy _the contents of_ the Atmosphère`.zip` file to the root of your microSD card.
    
3. Copy the `bootloader` folder from the hekate `.zip` file to the root of your microSD card.
    
    - If you're asked to replace files or merge folders, do so.
        - On macOS, you will need to _merge_ folders, _not_ replace them.
4. Copy the `bootloader` folder from the `bootlogos.zip` file to the root of your microSD card.
    
    - If you're asked to merge the bootloader folders, do so.
5. Copy `hekate_ipl.ini` to the `bootloader` folder on your microSD card.
    
    - If you're asked to replace the file, do so.
6. Create a folder named `hosts` inside the `atmosphere` folder on your microSD card, and put `emummc.txt` inside of the `hosts` folder.
    
7. Copy `JKSV.nro`, `ftpd.nro`, `NxThemesInstaller.nro`, `NX-Shell.nro` and `Goldleaf.nro` to the `switch` folder on your microSD card.
    
8. If you were already using your microSD card as a storage device for your games and backed up the Nintendo folder before partitioning your microSD card, please place it back on the root of your microSD card now.
    
    - _If_ you created an emuMMC on the previous page; don't forget to copy the Nintendo folder to `sd:/emuMMC/RAW1/`, in addition to the Nintendo folder on the root of your microSD card.
    
    DANGER
    
    **About emummc.txt**
    
    Putting the `emummc.txt` file provided by this guide into `/atmosphere/hosts` will prevent your emuMMC (emuNAND) from connecting to Nintendo. Not doing this will likely result in a ban.
    
    TIP
    
    Your microSD card should look similar to the image below. The `Nintendo` folder will not be present if your Switch has not already booted with the microSD card inserted and the `emuMMC` folder will not be present if you're following the sysCFW path of the guide/you haven't created an emuMMC! The `payload.bin` file will not be present if you're using an unpatched Switch, as it's only for modchipped console users.
    
    If you'd like to check the full folder/file structure of your microSD card, unfold the "**Full folder/file structure**" section below.
    
    Full folder/file structure (Click to unfold)
    
    Below you will find the full folder/file structure on your microSD card, `SWITCH SD:` indicates the root of the microSD card.
    
    ```
    SWITCH SD:
    ├── atmosphere
    │   ├── config
    │   ├── config_templates
    │   │   ├── exosphere.ini
    │   │   ├── override_config.ini
    │   │   ├── stratosphere.ini
    │   │   └── system_settings.ini
    │   ├── fatal_errors
    │   ├── flags
    │   ├── hbl_html
    │   │   └── accessible-urls
    │   │       └── accessible-urls.txt
    │   ├── hbl.nsp
    │   ├── hosts
    │   │   └── emummc.txt
    │   ├── kip_patches
    │   ├── package3
    │   ├── reboot_payload.bin
    │   └── stratosphere.romfs
    ├── bootloader
    │   ├── hekate_ipl.ini
    │   ├── ini
    │   ├── payloads
    │   ├── res
    │   │   ├── emu_boot.bmp
    │   │   ├── icon_payload.bmp
    │   │   ├── icon_switch.bmp
    │   │   ├── stock_boot.bmp
    │   │   └── sys_cfw_boot.bmp
    │   ├── sys
    │   │   ├── emummc.kipm
    │   │   ├── l4t
    │   │   │   ├── bpmpfw_b01.bin
    │   │   │   ├── bpmpfw.bin
    │   │   │   ├── mtc_tbl_b01.bin
    │   │   │   ├── sc7entry.bin
    │   │   │   ├── sc7exit_b01.bin
    │   │   │   └── sc7exit.bin
    │   │   ├── libsys_lp0.bso
    │   │   ├── libsys_minerva.bso
    │   │   ├── nyx.bin
    │   │   ├── res.pak
    │   │   └── thk.bin
    │   └── update.bin
    ├── emuMMC
    │   ├── emummc.ini
    │   └── RAW1
    │       ├── Nintendo
    │       │   ├── Album
    │       │   ├── Contents
    │       │   └── save
    │       └── raw_based
    ├── hbmenu.nro
    ├── Nintendo
    │   ├── Album
    │   ├── Contents
    │   └── save
    ├── payload.bin
    └── switch
        ├── daybreak.nro
        ├── ftpd.nro
        ├── Goldleaf.nro
        ├── haze.nro
        ├── JKSV.nro
        ├── NX-Shell.nro
        ├── NXThemesInstaller.nro
        └── reboot_to_payload.nro
    ```
    
    ![sdfilesimg](/assets/sdfiles3.CdEVBdlM.png)
    

TIP

[Continue to Making Essential Backups](https://switch.hacks.guide/user_guide/all/making_essential_backups.html)
# initial hekate


1. For maximum performance of UMS in Windows, you need to run nyx_usb_max_rate__run_only_once_per_windows_pc.reg, only once per PC you have.
[hekate](https://github.com/ctcaer/hekate/releases)

1. Needed if your switch was powered off
1. Put the RCM (recovery mode) on right controller
1. Press Volume Up and Power
1. Remove the Jig
1. Open TegraRcmGUI
1. Install Driver (if laptop needs it)
1. Attach USB-C cable
1. TegraRcmGUI navigate to Payload
1. Press file button and choose hekate_ctcaer_X.X.X.bin
1. Press Inject Payload

# setting up a new sd card
1. format it to fat32 via rufus
1. extract hekate .zip
1. copy bootloader to root of microSD card
1. put the SD card into Switch
1. press any button to continue to hekate menu
   1. vol up and down and power to select

# Emummc path
1. Hekate/Tools/Partition SD card
1. Set emuMMC (RAW) to 29 FULL (not 2x29!)
1. Next Step / Start
1. Hekate/emuMMC/Create emuMMC/SD Partition/Part 1  / Close
1. Hekate/emuMMC/Change emuMMC/SD RAW 1 > Close 
1. Hekate/Tools/USB Tools/SD Card
1. Plug in USB-C to PC

# Hats package
1. add emummc.txt to atmosphere/hosts
1. check the folder structure
   1. will be slightly different
   1. note that hekate_ipl.ini is different
      than the one from switch.hacks.guide
    
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
1. Copy the Hats zipped content + emummc.txt  into the SD card
1. Click on replace to merge contents
1. Eject SD card from PC

# CFW
1. Hekate/Launch/EMUMMC
1. HomeBrew
   1. Start FallOut
   1. Don't update
   1. Start the game
   1. Press R button, select Amiibo
   1. Throw you into homebrew
1. Goldleaf
   1. Console & GL settings
   1. Firmware and updates
      1. Delete firmware update to 20.1.5
      1. Note can be done Maintenance Mode
         - Up/Down + Power

# DBI installer
1. [dbi](https://github.com/rashevskyv/dbi/blob/main/README.md)
1. [rentry](https://rentry.org/NSUSBInstall/#dbi-installer-mtp)
1. Download game
   1. connect switch to pc
   1. dbi / MTP responder
   1. drag and drop game file

#### DBI Installer MTP[](https://rentry.org/NSUSBInstall/#dbi-installer-mtp "Permanent link")

[rentry](https://rentry.org/NSUSBInstall/)

##### What you'll need:[](https://rentry.org/NSUSBInstall/#what-youll-need_1 "Permanent link")

---

- [DBI](https://github.com/rashevskyv/dbi/releases/latest)

##### Steps:[](https://rentry.org/NSUSBInstall/#steps_1 "Permanent link")

---

1. Connect your device to your PC.
2. On your Switch, access the homebrew menu and launch `DBI`.
    - There are two methods you can use to access the homebrew menu:
        - Hold **R** and click on a title in your home menu **(Recommended)**.
        - Pressing the album icon **(Not recommended)**.
3. Select `Run MTP responder` from the menu.
4. Once your device is connected, on your PC access your device by clicking on the `Switch` drive.
5. Access `5: MicroSD install`.
6. Place your desired title in the folder.
    - The following file formats are supported:
        - **NSP**
        - **NSZ**
        - **XCI**
        - **XCZ**

7. Your installation should start now. You will be notified in DBI once it has finished.


# Local LAN play

Ldn\_mitm is a system module for the Nintendo Switch that enables local wireless multiplayer games to be played over a Local Area Network (LAN). It essentially replaces the system's [ldn service](https://www.google.com/search?cs=0&sca_esv=94c780ffd014c36e&sxsrf=AE3TifPfXxlMWpKXvJtQQf7d2YfiqiMN5Q%3A1751385327290&q=ldn+service&sa=X&ved=2ahUKEwiokPbhgpyOAxW7BDQIHV1lNcUQxccNegQIBBAB&mstk=AUtExfDisEtYQEL3zggxkGqakJwmrZ9UHQN-i7DVsz4BQ6AIdnzfOEzGoxxANrTFh7B6-nb8Y9o9ZqyFCP98HfpoGvWLD1jnhMeCmS1oneZCa1JTgqeg7Jyr40lUNJLCctpvTNqz-YkWKP7UxTKVm7J-E1cHzLI813Z_G9qKHAyUXPArM7Q&csui=3) (Local Wireless) with a LAN-based emulation, allowing players to connect via their network instead of relying on the console's built-in wireless functionality. This is particularly useful for playing games with hidden LAN modes or for using services like XLink Kai that facilitate online play through LAN connections. 

.f5cPye .WaaZC:first-of-type .rPeykc.uP58nb:first-child{font-size:var(--m3t3);line-height:var(--m3t4);font-weight:400 !important;letter-spacing:normal;margin:0 0 10px 0}.rPeykc.uP58nb{font-size:var(--m3t5);font-weight:500;letter-spacing:0;line-height:var(--m3t6);margin:20px 0 10px 0}.f5cPye ul{font-size:var(--m3t7);line-height:var(--m3t8);margin:10px 0 20px 0;padding-left:24px}.f5cPye .WaaZC:first-of-type ul:first-child{margin-top:0}.f5cPye ul.qh1nvc{font-size:var(--m3t7);line-height:var(--m3t8)}.f5cPye li{padding-left:4px;margin-bottom:8px;list-style:inherit}.f5cPye li.K3KsMc{list-style-type:none}.f5cPye ul>li:last-child,.f5cPye ol>li:last-child,.f5cPye ul>.bsmXxe:last-child>li,.f5cPye ol>.bsmXxe:last-child>li{margin-bottom:0}.zMgcWd{padding-bottom:16px;padding-top:8px;border-bottom:none}.dSKvsb{margin-left:-28px;padding-bottom:0}.GmFi7{display:flex;width:100%}.f5cPye li:first-child .zMgcWd{padding-top:0}.f5cPye li:last-child .zMgcWd{border-bottom:none;padding-bottom:0}.xFTqob{flex:1;min-width:0}.Gur8Ad{font-size:var(--m3t11);font-weight:500;line-height:var(--m3t12);overflow:hidden;padding-bottom:4px;transition:transform 200ms cubic-bezier(0.20,0.00,0.00,1.00)}.vM0jzc{color:var(--m3c10);font-size:var(--m3t7);letter-spacing:0.1px;line-height:var(--m3t8)}.vM0jzc ul,.vM0jzc ol{font-size:var(--m3t7) !important;line-height:var(--m3t8) !important;margin-top:8px !important}.vM0jzc li ul,.vM0jzc li ol{font-size:var(--m3t9) !important;letter-spacing:0.1px !important;line-height:var(--m3t10) !important;margin-top:0 !important}.vM0jzc ul li{list-style-type:disc}.vM0jzc ui li li{list-style-type:circle}.vM0jzc .rPeykc:first-child{margin-top:0}

Here's a more detailed breakdown:

- **What it does:**
    
    ldn\_mitm intercepts the Switch's local wireless communication and redirects it to use UDP over a LAN. 
    
- **Why it's used:**
    
    It allows games that support local wireless multiplayer (like Mario Kart 8, Splatoon 2, and others) to be played over LAN, enabling connections with other Switch consoles on the same network. 
    
- **How it works:**
    
    The original ldn service primarily handles the scanning and connection to nearby consoles via WiFi. ldn\_mitm replaces this with a LAN-based system, effectively tricking the game into thinking it's connected via local wireless when it's actually using the network. 
    
- **Popular use case:**
    
    A common application is using ldn\_mitm with XLink Kai, which provides a platform for online gaming via LAN connections, allowing users to play with others remotely. 
    
- **Prerequisites:**
    
    ldn\_mitm is typically used with custom firmware (CFW) on the Nintendo Switch, such as Atmosphere, ReiNX, or SXOS.

[ldn_mitm](https://github.com/spacemeowx2/ldn_mitm)

[setup](https://www.teamxlink.co.uk/wiki/Nintendo_Switch_ldn_mitm_setup)
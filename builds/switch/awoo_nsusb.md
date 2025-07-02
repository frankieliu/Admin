[ns-usbloader](https://github.com/developersu/ns-usbloader)
[awoo](https://github.com/Huntereb/Awoo-Installer/releases/tag/1.3.5)

An error occurred attemting to install the NSP:

Goldleaf error:
Errpr 2002-4058 (0x1fb402)
Module: fs
Description: The content signatures cannot be verified. Are you missing any required patches?

[reddit](https://www.reddit.com/r/SwitchPirates/comments/ufg20j/gold_leaf_is_giving_me_error_20024058_0x1fb402/)
Gold leaf is giving me error 2002-4058 (0x1FB402)
Question
Solved!
Thank you u/Aeon-Lewis for providing a solution other than using AIO. Below is how to solve the problem without using AIO, straight from u/Aeon-Lewis' comment. You can see the original comment if you want, just go to the comments.

Manual Solution (u/Aeon-Lewis):
There's no need to install a 3rd party app like AIO updater to online update Sigpatches & fix Error 2002-4058.

First thing first, manually update the Sigpatches from ITotalJustice's github page (Alternative). After that, make sure that you've used the latest LockPick & have dev.keys, prod.keys & title.keys in your switch folder.

After that, make sure that you edit your hekate_ipl.ini to contain kip1patch=nosigchk

A simple Example:

[CFW (emuMMC)]

emummcforce=1

fss0=atmosphere/package3

kip1patch=nosigchk

icon=bootloader/res/icon_payload.bmp

TLDR: You need to add kip1patch=nosigchk line to your own hekate_ipl.ini in order for the Sigpatches to work properly.

---

[gbatemp.net](https://gbatemp.net/threads/sigpatches-for-atmosphere-hekate-fss0-fusee-package3.571543/page-156#post-10389534)

```
[config]
autoboot=0
autoboot_list=0
bootwait=0
autohosoff=0
autonogc=1
updater2p=1
backlight=100

[CFW - sysMMC]
fss0=atmosphere/package3
kip1patch=nosigchk
atmosphere=1
emummc_force_disable=1
icon=bootloader/res/icon_payload.bmp

[CFW - emuMMC]
fss0=atmosphere/package3
kip1patch=nosigchk
emummcforce=1
atmosphere=1
icon=bootloader/res/icon_payload.bmp

[Stock - sysMMC]
fss0=atmosphere/package3
emummc_force_disable=1
stock=1
icon=bootloader/res/icon_switch.bmp
```


# roms

https://fmhy.net/storage#switch-roms
Nsw2u and nxbrew
https://fmhy.net/gamingpiracyguide#nintendo-roms

https://rutracker.org/forum/viewforum.php?f=1605
https://nsw2u.com/
https://nxbrew.net/
https://romsim.com/

 https://freegamesmall.neocities.org/

 nintendoproject.com
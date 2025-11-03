# Modded Switch Updating Guide For Complete Beginners (CFW, OFW, Hekate, Atmosphere, Sigpathes)

# \---Updating Modded Switch and General Maintenance---

I really appreciate all the support I received from my recent switch hacking guide. Thanks everyone for the support! A lot of you wanted a guide on updating the switch CFW, OFW, do's/don't, etc. So here it is!

# \--- Who am I? ---

I own and run So-Cal Console Modding, a board level repair, modding, and customization shop. I have helped many newbies get their switch up and running and have a lot of experience installing modchips, repairing switches, and troubleshooting software for customers.

**Quick note**: I create these detailed guides and answer questions in my free time to help the Switch modding community grow. If you find my work helpful, consider [buying me a coffee](https://buymeacoffee.com/socalconsolemodding). Your support helps me continue providing free resources and assistance to everyone. Thanks for being awesome! Now, onto the good stuff...

# \--- Other Guides By Me ---

# [All guides are located here!](https://www.reddit.com/r/NxSwitchModding/comments/1c5nf1j/list_of_guides_and_tutorials/?utm_source=share&utm_medium=web3x&utm_name=web3xcss&utm_term=1&utm_content=share_button)

# \--- When to update emuMMC? ---

**I want to play a game, DLC or game update on my CFW emuMMC that requires a system update**

Go ahead and update

**I want to play using NSO on sysmmc/stock**

No need to update your emuMMC

# \--- FAQ and General Info ---

**Custom Firmware (CFW)**

A customized operating system (typically Atmoshpere) which allows you to perform functions such as launch custom applications.

**Official Firmware (OFW)**

The stock switch firmware that comes on a console when you purchase it.

**SYSMMC**

The memory unit on the motherboard that stores the OFW in an unhacked switch

**EMUMMC**

An emulated memory stored on your sd card. This is basically a copy of you operating system stored on your sd card and is unique to your switch's hardware

**"Semi-Stock"**

Semi-stock is a HATS boot option that boots OFW sysMMC. It does this through hekate's boot options which means two things: it skips efuse checks and burning, and is only compatible with OFW versions that Hekate is compatible with. So if you have a fuse mismatch error you can simply boot using this portion. If you updated your OFW to a version hekate doesn't yet support, this option will not boot. You can always boot 100% stock using the "reboot" button and selecting OFW. Semi-Stock is safe to use while connected to Nintendo's servers as long as you don't have any pirated games or custom software installed on OFW.

**HATS**

HATS is a combination of Hekate, Atmosphere, Tinfoil, and Sigpatches. It was created and is maintained by Sthetix.

**Hekate**

Hekate is the first application that you boot to when you turn on your switch. It has a variety of tools and boots before any firmware. It allows you to select which firmware you would like to boot. You could also boot straight to payload tools, Android, Ubuntu, or Lakka. Most people use it to switch between CFW emuMMC, OFW, and CFW sysMMC.

**Atmosphere**

Atmosphere is a modified version of the switch operating system that allows you to launch a homebrew menu from the photo gallery icon (or holding R while loading an installed app) and install games and applications unofficially.

**Tinfoil**

Tinfoil is a multipurpose application primarily used for installing games and apps. It has the ability to install games and apps via the internet through a "shop".

**Sigpatches**

Sigpatches allow you to install games and apps within atmosphere while bypassing the Nintendo eShop.

**\---** **Overview ---**

Basically we will be setting up a dual boot layout. One side is the stock system (how the switch normal comes) and an emulated version (a copy that we will hack). When you launch hekate, you can choose which system to boot into.

**What you use SYSMMC for:**

Playing games you own and using Nintendo Switch Online features such as online multiplayer.

**What you use EMUMMC for:**

Using homebrew apps, RetroArch (emulation of other consoles), installing and playing pirated games, etc. Anything that is not a feature of an unmodded switch.

**How do I prevent being banned?**

Only install and use custom apps, pirated software, and tinfoil on CFW EMUMMC, use the HATS pack which includes exosphere and DNS-MITM.

**Can this break my switch?**

If you update your emuMMC to a firmware that is not supported by atmosphere, then you will need to wait until an update for atmosphere is released. They are typically released just a few days after and update is put out. Always check atmosphere's GitHub page to make sure it supports the latest switch update before updating your emuMMC.

**What firmware versions are supported?**

Ongoing support is added for switch updates as they come out. Switch updates typically get supported a week or so after they are released. Always check to see if the newest update version is supported by atmosphere before you update.

**Can I update my OFW SysMMC and not my CFW EmuMMC?**

Yes, the two systems run completely seperate from one another. So if you have already set up CFW on an emuMMC you can update your sysMMC via Nintendo's servers to continue using NSO services and it will not effect your emuMMC.

**Can I upgrade to a larger SD card in the future?**

Yes, if you create a file based emummc then all you have to do is format the new card to FAT32 and copy all the files to the new card. If you have a partition based emummc it is a bit more complicated and I would recommend following my sd card migrading/upgrading guide.

# \--- Before You Update ---

Check that atmosphere supports the switch firmware that you plan to update to. You can check [on atmosphere's GitHub page](https://github.com/Atmosphere-NX/Atmosphere/releases)

**Download the following files:**

Latest Hats Pack (google search "sthetix hats pack releases" if I link the post will get DMCA'd)

Switch firmware you plan to update your emummc to (the hats pack telegram has the latest compatible firmware)

# \--- Updating Atmosphere, Sigpatches, and Hekate ---

Open and copy or extract the HATS zip file to the root of your sd card.

[![r/NxSwitchModding - Modded Switch Updating Guide For Complete Beginners (CFW, OFW, Hekate, Atmosphere, Sigpathes)](https://preview.redd.it/modded-switch-updating-guide-for-complete-beginners-cfw-ofw-v0-g77nw7j2ontc1.jpg?width=2248&format=pjpg&auto=webp&s=44f35a52349495aca26eba543d89d4142905c563)](https://preview.redd.it/modded-switch-updating-guide-for-complete-beginners-cfw-ofw-v0-g77nw7j2ontc1.jpg?width=2248&format=pjpg&auto=webp&s=44f35a52349495aca26eba543d89d4142905c563 "Image from r/NxSwitchModding - Modded Switch Updating Guide For Complete Beginners (CFW, OFW, Hekate, Atmosphere, Sigpathes)")

Overwrite any files if it asks you.

Done!

# \--- Updating CFW ---

Double check that atmosphere supports the switch firmware that you downloaded

1. Open and copy or extract the firmware zip file in a new folder titled "Firmware"
    

[![r/NxSwitchModding - Modded Switch Updating Guide For Complete Beginners (CFW, OFW, Hekate, Atmosphere, Sigpathes)](https://preview.redd.it/modded-switch-updating-guide-for-complete-beginners-cfw-ofw-v0-y1paxsu3ontc1.jpg?width=2280&format=pjpg&auto=webp&s=64374cab710972009b2fd56d68cb2883a850338e)](https://preview.redd.it/modded-switch-updating-guide-for-complete-beginners-cfw-ofw-v0-y1paxsu3ontc1.jpg?width=2280&format=pjpg&auto=webp&s=64374cab710972009b2fd56d68cb2883a850338e "Image from r/NxSwitchModding - Modded Switch Updating Guide For Complete Beginners (CFW, OFW, Hekate, Atmosphere, Sigpathes)")

2\. Insert your sd card into your switch and load your CFW EMUMMC

3\. Click on the album icon (or hold R while loading a playable app) and launch daybreak

[![r/NxSwitchModding - Modded Switch Updating Guide For Complete Beginners (CFW, OFW, Hekate, Atmosphere, Sigpathes)](https://preview.redd.it/modded-switch-updating-guide-for-complete-beginners-cfw-ofw-v0-t5iko035ontc1.jpg?width=1498&format=pjpg&auto=webp&s=791231c548eb570e43a50e19885feda47f6ddcb8)](https://preview.redd.it/modded-switch-updating-guide-for-complete-beginners-cfw-ofw-v0-t5iko035ontc1.jpg?width=1498&format=pjpg&auto=webp&s=791231c548eb570e43a50e19885feda47f6ddcb8 "Image from r/NxSwitchModding - Modded Switch Updating Guide For Complete Beginners (CFW, OFW, Hekate, Atmosphere, Sigpathes)")

[![r/NxSwitchModding - Modded Switch Updating Guide For Complete Beginners (CFW, OFW, Hekate, Atmosphere, Sigpathes)](https://preview.redd.it/modded-switch-updating-guide-for-complete-beginners-cfw-ofw-v0-4e9cj6g5ontc1.jpg?width=1497&format=pjpg&auto=webp&s=dc1760e1f41ed7cb67927990478250a96eaa4cfb)](https://preview.redd.it/modded-switch-updating-guide-for-complete-beginners-cfw-ofw-v0-4e9cj6g5ontc1.jpg?width=1497&format=pjpg&auto=webp&s=dc1760e1f41ed7cb67927990478250a96eaa4cfb "Image from r/NxSwitchModding - Modded Switch Updating Guide For Complete Beginners (CFW, OFW, Hekate, Atmosphere, Sigpathes)")

4\. Click Install

[![r/NxSwitchModding - Modded Switch Updating Guide For Complete Beginners (CFW, OFW, Hekate, Atmosphere, Sigpathes)](https://preview.redd.it/modded-switch-updating-guide-for-complete-beginners-cfw-ofw-v0-dh7kql56ontc1.jpg?width=1373&format=pjpg&auto=webp&s=92ac69532fbdcf6bffe47b7d6de07d64d5dcd208)](https://preview.redd.it/modded-switch-updating-guide-for-complete-beginners-cfw-ofw-v0-dh7kql56ontc1.jpg?width=1373&format=pjpg&auto=webp&s=92ac69532fbdcf6bffe47b7d6de07d64d5dcd208 "Image from r/NxSwitchModding - Modded Switch Updating Guide For Complete Beginners (CFW, OFW, Hekate, Atmosphere, Sigpathes)")

5\. Select the firmware folder you created

[![r/NxSwitchModding - Modded Switch Updating Guide For Complete Beginners (CFW, OFW, Hekate, Atmosphere, Sigpathes)](https://preview.redd.it/modded-switch-updating-guide-for-complete-beginners-cfw-ofw-v0-0nevc807ontc1.jpg?width=1387&format=pjpg&auto=webp&s=6f45b26a4efa0e25d18bacaee1d7a2a9ede2404a)](https://preview.redd.it/modded-switch-updating-guide-for-complete-beginners-cfw-ofw-v0-0nevc807ontc1.jpg?width=1387&format=pjpg&auto=webp&s=6f45b26a4efa0e25d18bacaee1d7a2a9ede2404a "Image from r/NxSwitchModding - Modded Switch Updating Guide For Complete Beginners (CFW, OFW, Hekate, Atmosphere, Sigpathes)")

6\. Select continue

[![r/NxSwitchModding - Modded Switch Updating Guide For Complete Beginners (CFW, OFW, Hekate, Atmosphere, Sigpathes)](https://preview.redd.it/modded-switch-updating-guide-for-complete-beginners-cfw-ofw-v0-5y5vnxp7ontc1.jpg?width=1402&format=pjpg&auto=webp&s=669840c895343d064019cc2a699da0a03a583182)](https://preview.redd.it/modded-switch-updating-guide-for-complete-beginners-cfw-ofw-v0-5y5vnxp7ontc1.jpg?width=1402&format=pjpg&auto=webp&s=669840c895343d064019cc2a699da0a03a583182 "Image from r/NxSwitchModding - Modded Switch Updating Guide For Complete Beginners (CFW, OFW, Hekate, Atmosphere, Sigpathes)")

7\. Select Preserve Settings

[![r/NxSwitchModding - Modded Switch Updating Guide For Complete Beginners (CFW, OFW, Hekate, Atmosphere, Sigpathes)](https://preview.redd.it/modded-switch-updating-guide-for-complete-beginners-cfw-ofw-v0-z7ur2hd8ontc1.jpg?width=1412&format=pjpg&auto=webp&s=7d75a260db6af7f3d332898399766c354f3c3e78)](https://preview.redd.it/modded-switch-updating-guide-for-complete-beginners-cfw-ofw-v0-z7ur2hd8ontc1.jpg?width=1412&format=pjpg&auto=webp&s=7d75a260db6af7f3d332898399766c354f3c3e78 "Image from r/NxSwitchModding - Modded Switch Updating Guide For Complete Beginners (CFW, OFW, Hekate, Atmosphere, Sigpathes)")

8\. Select Install (FAT32) + exFAT

[![r/NxSwitchModding - Modded Switch Updating Guide For Complete Beginners (CFW, OFW, Hekate, Atmosphere, Sigpathes)](https://preview.redd.it/modded-switch-updating-guide-for-complete-beginners-cfw-ofw-v0-5vz1in29ontc1.jpg?width=1429&format=pjpg&auto=webp&s=b39f691f7fca81c63bf391ae5dd7916ffcf1b93f)](https://preview.redd.it/modded-switch-updating-guide-for-complete-beginners-cfw-ofw-v0-5vz1in29ontc1.jpg?width=1429&format=pjpg&auto=webp&s=b39f691f7fca81c63bf391ae5dd7916ffcf1b93f "Image from r/NxSwitchModding - Modded Switch Updating Guide For Complete Beginners (CFW, OFW, Hekate, Atmosphere, Sigpathes)")

9\. Select Continue

[![r/NxSwitchModding - Modded Switch Updating Guide For Complete Beginners (CFW, OFW, Hekate, Atmosphere, Sigpathes)](https://preview.redd.it/modded-switch-updating-guide-for-complete-beginners-cfw-ofw-v0-a867udq9ontc1.jpg?width=1460&format=pjpg&auto=webp&s=0f5d0f0cc9d4578d8b4d3a762f6eb910e45f2323)](https://preview.redd.it/modded-switch-updating-guide-for-complete-beginners-cfw-ofw-v0-a867udq9ontc1.jpg?width=1460&format=pjpg&auto=webp&s=0f5d0f0cc9d4578d8b4d3a762f6eb910e45f2323 "Image from r/NxSwitchModding - Modded Switch Updating Guide For Complete Beginners (CFW, OFW, Hekate, Atmosphere, Sigpathes)")

10\. Let it run and then select reboot

[![r/NxSwitchModding - Modded Switch Updating Guide For Complete Beginners (CFW, OFW, Hekate, Atmosphere, Sigpathes)](https://preview.redd.it/modded-switch-updating-guide-for-complete-beginners-cfw-ofw-v0-o5re2vfaontc1.jpg?width=1423&format=pjpg&auto=webp&s=419ceef53dcee9bfd46b5f08b6925f149c8d60d7)](https://preview.redd.it/modded-switch-updating-guide-for-complete-beginners-cfw-ofw-v0-o5re2vfaontc1.jpg?width=1423&format=pjpg&auto=webp&s=419ceef53dcee9bfd46b5f08b6925f149c8d60d7 "Image from r/NxSwitchModding - Modded Switch Updating Guide For Complete Beginners (CFW, OFW, Hekate, Atmosphere, Sigpathes)")

Done!

# \--- Updating OFW ---

Do not update your SYSMMC to the latest firmware via Nintendo if any are true:

1. Atmosphere does not support the newest firmware version AND you do not have a working EmuMMC. If this is the case make a working EmuMMC before updating.
    
2. You have an HWFLY modchip (typically installed up until ~ Feb 2023) that requires to be reset after updating. Note: newer modchips like picofly and instinct are fine to update. If you have one of these old HWFLY modchips you can update via daybreak on CFW SYSMMC.
    

If the 2 situations above do not apply to you, updating OFW SYSMMC can be done using Nintendo's servers.

After you update via Nintendo's servers, the next time you power on and launch hekate, select "reboot" then "OFW" to reboot into the OFW and burn the efuse properly.

# \--- Troubleshooting ---

# I updated and now I get a black screen when launching OFW

The switch uses efuses to keep track of how many updates you have done. Some updates will cause your console to burn a small efuse when you boot your console after the update. This is an attempt to prevent downgrading. If you update your OFW to a firmware that required an efuse burn, but the fuse did not burn you will get a black screen when booting OFW. This can happen any time the firmware does not match the correct number of fuses and you boot OFW. This is commonly caused by updating OFW via daybreak and then not launching OFW on the next boot.

# How to identify and fix a fuse mismatch error

If you select Semi-Stock or CFW SYSMMC and your console boots but does not boot to OFW, you most likely have a fuse mismatch error.

# To verify:

Launch Hekate View Fuse count and make a note of the expected firmware range Load CFW SYSMMC and check the firmware in settings if your firmware is not in the expected range you have a fuse mismatch issue

1. Launch hekate and select Console Info
    

[![r/NxSwitchModding - Modded Switch Updating Guide For Complete Beginners (CFW, OFW, Hekate, Atmosphere, Sigpathes)](https://preview.redd.it/modded-switch-updating-guide-for-complete-beginners-cfw-ofw-v0-bqrjaxebontc1.jpg?width=1833&format=pjpg&auto=webp&s=3bd71896fd083228ad0c31f6a854cc21e07f6e64)](https://preview.redd.it/modded-switch-updating-guide-for-complete-beginners-cfw-ofw-v0-bqrjaxebontc1.jpg?width=1833&format=pjpg&auto=webp&s=3bd71896fd083228ad0c31f6a854cc21e07f6e64 "Image from r/NxSwitchModding - Modded Switch Updating Guide For Complete Beginners (CFW, OFW, Hekate, Atmosphere, Sigpathes)")

2\. Select HW & Fuses

[![r/NxSwitchModding - Modded Switch Updating Guide For Complete Beginners (CFW, OFW, Hekate, Atmosphere, Sigpathes)](https://preview.redd.it/modded-switch-updating-guide-for-complete-beginners-cfw-ofw-v0-0qozaabcontc1.jpg?width=1414&format=pjpg&auto=webp&s=921ba295b75026da726986c39b5265304e0d6ec9)](https://preview.redd.it/modded-switch-updating-guide-for-complete-beginners-cfw-ofw-v0-0qozaabcontc1.jpg?width=1414&format=pjpg&auto=webp&s=921ba295b75026da726986c39b5265304e0d6ec9 "Image from r/NxSwitchModding - Modded Switch Updating Guide For Complete Beginners (CFW, OFW, Hekate, Atmosphere, Sigpathes)")

3\. Check expected firmware

[![r/NxSwitchModding - Expected firmware is after "HOS"](https://preview.redd.it/modded-switch-updating-guide-for-complete-beginners-cfw-ofw-v0-fp9pe6jdontc1.jpg?width=1466&format=pjpg&auto=webp&s=25a5946d1e4c276d60b484b4c71d5e9281e3153d)](https://preview.redd.it/modded-switch-updating-guide-for-complete-beginners-cfw-ofw-v0-fp9pe6jdontc1.jpg?width=1466&format=pjpg&auto=webp&s=25a5946d1e4c276d60b484b4c71d5e9281e3153d "Image from r/NxSwitchModding - Expected firmware is after \"HOS\"")

Expected firmware is after "HOS"

4\. Launch OFW and go to settings -> System -> and view your current firmware

If your current firmware is not the same as the expected you have a fuse issue.

# To correct a fuse mismatch issue:

This process will not result in a ban _as long as you do_ **not** _install any homebrew to the home menu._

_Do_ **NOT** _click Tinfoil installer in the homebrew menu!!_

1. Download a firmware version in the expected range and place it on your SD card (same process as above)
    
2. Launch Hekate and select CFW SYSMMC
    
3. Click the photo album _do_ **NOT** _click Tinfoil Installer by accident!_
    
4. Open Daybreak and install the firmware version you downloaded the same way as above.
    

Your fuse issue should now be fixed!

_If atmosphere supports the latest switch firmware_ you can now update OFW via Nintendo's servers.

# Semi-Stock Boot Option and Fuse Mismatch

You can update OFW from the Semi-Stock boot option, however, launching OFW via Semi-Stock after you update will bypass the fuse burn. So if you reboot using Semi-Stock after an update that requires a fuse burn you could give yourself a fuse mismatch error. To prevent this, reboot using the "reboot" then OFW buttons in hekate. If you have a picofly it should bypass hekate after an update to do this automatically depending on the firmware version, and if you have an unpatched v1 you can just boot normally.

# I accidentally updated my EMUMMC and now atmosphere won't load

3 possibilities come to mind:

**You did not update atmosphere and bootloader folders correctly**

To fix this delete the atmosphere and bootloader folders from your sd card and copy the latest HATS pack to SD card.

**You updated your emummc to a version that atmosphere does not yet support**

If you don't have a backup of your emummc, then you have to hang tight until atmosphere support is updated. Typically this takes only a few days, but may take longer.

**I updated my emuMMC and now Atmosphere crashes and gives me this screen**

[![r/NxSwitchModding - Modded Switch Updating Guide For Complete Beginners (CFW, OFW, Hekate, Atmosphere, Sigpathes)](https://preview.redd.it/modded-switch-updating-guide-for-complete-beginners-cfw-ofw-v0-l2h1k7hgontc1.jpg?width=1392&format=pjpg&auto=webp&s=be06beece9a0d592fdd73fd43eab9b02820fd85e)](https://preview.redd.it/modded-switch-updating-guide-for-complete-beginners-cfw-ofw-v0-l2h1k7hgontc1.jpg?width=1392&format=pjpg&auto=webp&s=be06beece9a0d592fdd73fd43eab9b02820fd85e "Image from r/NxSwitchModding - Modded Switch Updating Guide For Complete Beginners (CFW, OFW, Hekate, Atmosphere, Sigpathes)")

This could be Tesla, Mission Control, Custom Themes, anything that runs in the background. To fix this: update the app by copying the files to your SD or copying the latest HATS pack if the app is in the pack (do this if the app supports the firmware you are on). If the app does not support your current firmware then navigate to \\emuMMC\\SD00\\Nintendo\\Contents\\ and delete the folder with the same title as shown on your error under program (highlighted in red in the picture above). So for this instance you would delete folder "0100000000001000".
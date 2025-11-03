# Nintendo Switch Hacking Guide For Complete Beginners

# Nintendo Switch Hacking Guide For Complete Beginners

I have seen an overwhelming amount of the same questions in this thread day after day with mixed quality answers. I wanted to create a simple post for newcomers getting into switch modding. While there is the wiki, its formatting is not inviting and the rentry guide is convoluted and unnecessarily confusing to people that are new to the scene. I'm hoping this post provides a valuable resource to new switch modders.

# \--- Who am I? ---

I own and run So-Cal Console Modding, a board level repair, modding, and customization shop. I have helped many newbies get their switch up and running and have a lot of experience installing modchips, repairing switches, and troubleshooting software for customers.

**Quick note**: I create these detailed guides and answer questions in my free time to help the Switch modding community grow. If you find my work helpful, consider [buying me a coffee](https://buymeacoffee.com/socalconsolemodding). Your support helps me continue providing free resources and assistance to everyone. Thanks for being awesome! Now, onto the good stuff...

# \--- Other Guides By Me ---

# [All guides are located here!](https://www.reddit.com/r/NxSwitchModding/comments/1c5nf1j/list_of_guides_and_tutorials/?utm_source=share&utm_medium=web3x&utm_name=web3xcss&utm_term=1&utm_content=share_button)

# \--- Is My Switch Hackable? ---

All switches are hackable, although most require a modchip in order to do so.

# V1s AKA Erista Models

You can tell you have a V1 by looking at the back of the console below the switch logo. If it says “HAC-001” you have a V1. Some early units are exploitable via an RCM exploit. To get a rough idea check your switches serial number (located on the white stick on the bottom of the unit) [here.](https://ismyswitchpatched.com/) The only way to tell for sure is to put your switch in RCM mode and connect to your computer.

**How to put your switch in RCM mode:**

Buy an RCM jig (can be found on ebay, amazon, or aliexpress for cheap. Completely turn off your console by holding the power button until the power menu comes up, selecting "power options", then "turn off". Slide the jig into the right joycon rail. Hold the plus button and press the power button and let go of all buttons. Your console won't outwardly show any signs, but it should now be in RCM mode.

**How to check for certain if your console is patched:**

1. Download the latest version of TegraRCM [here.](https://github.com/eliboa/TegraRcmGUI/releases)
    
2. Install Tegra or extract the portable version.
    
3. Open Tegra and select "options" then "install driver".
    

[![r/NxSwitchModding - Nintendo Switch Hacking Guide For Complete Beginners](https://preview.redd.it/nintendo-switch-hacking-guide-for-complete-beginners-v0-dipal0yfiitc1.jpg?width=771&format=pjpg&auto=webp&s=ff91c868f2c3539301cb5ddce2b4fa1fdf303915)](https://preview.redd.it/nintendo-switch-hacking-guide-for-complete-beginners-v0-dipal0yfiitc1.jpg?width=771&format=pjpg&auto=webp&s=ff91c868f2c3539301cb5ddce2b4fa1fdf303915 "Image from r/NxSwitchModding - Nintendo Switch Hacking Guide For Complete Beginners")

4\. Put your switch in RCM mode and plug it into your computer via a usb-c to usb-a or usb-c to usb-c cable. Tegra should now show your console as connected (if it doesn't, then your switch is not in RCM mode).

[![r/NxSwitchModding - Nintendo Switch Hacking Guide For Complete Beginners](https://preview.redd.it/nintendo-switch-hacking-guide-for-complete-beginners-v0-u5rnup2hiitc1.jpg?width=771&format=pjpg&auto=webp&s=7a6b48ab196af9921fd9b3b7214cecf9ec9ed1bb)](https://preview.redd.it/nintendo-switch-hacking-guide-for-complete-beginners-v0-u5rnup2hiitc1.jpg?width=771&format=pjpg&auto=webp&s=7a6b48ab196af9921fd9b3b7214cecf9ec9ed1bb "Image from r/NxSwitchModding - Nintendo Switch Hacking Guide For Complete Beginners")

5\. Double click the Hekate payload to inject. If you see hekate load on your switch then your console is unpatched and you do not need a modchip. If Tegra says "smashed the stack with 0x0000 bytes" then your switch is patched and you would need a modchip. If Tegra freezes and is unresponsive, then you should try a different usb-c cable.

[![r/NxSwitchModding - Nintendo Switch Hacking Guide For Complete Beginners](https://preview.redd.it/nintendo-switch-hacking-guide-for-complete-beginners-v0-eya90xliiitc1.jpg?width=771&format=pjpg&auto=webp&s=a66f98634f68f2f19ca25e105438fe970c7340a1)](https://preview.redd.it/nintendo-switch-hacking-guide-for-complete-beginners-v0-eya90xliiitc1.jpg?width=771&format=pjpg&auto=webp&s=a66f98634f68f2f19ca25e105438fe970c7340a1 "Image from r/NxSwitchModding - Nintendo Switch Hacking Guide For Complete Beginners")

# V2s AKA Mariko Models

You need a modchip

# Lites/OLEDs (all versions)

You need a modchip

# Can I Install a Modchip Myself?

In most cases this will be a no. V1s and V2s have a chip that is much easier to install than Lites/OLEDs. However, even on V1/V2 consoles the Switch has components that are very small and delicate. There are a ton of gore posts on this sub every day showing the carnage of an attempted install by a novice. The tools and supplies alone tend to cost the same as a professional doing the job. If you just want a hacked switch to save money on games I recommend getting your switch modded by a qualified installer, or buying an unpatched V1. If you want to get into the hobby of soldering then I recommend you do thorough research, practice on broken electronics, and if you try yourself prepare yourself for the potential of damaging your switch. I will be putting out a guide for OLED installs out soon, so definetely use that as a resource if you really want to do it yourself.

# \--- Terminology, General Info and FAQ ---

**Custom Firmware (CFW)**

A customized oporating system (typically Atmoshpere) which allows you to perform functions such as launch custom applications.

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

A**tmosphere**

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

**Can I play pirated games online?**

No

**Can I play games I own online?**

Yes, on OFW SYSMMC.

**How do I prevent being banned?**

Only install and use custom apps, pirated software, and tinfoil on CFW EMUMMC

**Can I use internet for homebrew apps?**

Yes, the HATS pack we will use has Nintendo's servers blocked so you cannot get banned as long as your SYSMMC is clean.

**Can this break my switch?**

You will only brick your switch if you play around with things and don't know what you're doing. Following this guide is safe and in 99% of cases you will not damage your switch.

**What firmware versions are supported?**

Ongoing support is added for switch updates as they come out. As of this writing up to 17.0.1 is supported and 18 was just released. 18 will likely receive support in the coming few weeks and switch updates typically get supported a week or so after they are released. Always check to see if the newest update version is supported by atmosphere before you update.

**Can I update my CFW EMUMMC?**

Yes, via an app called Daybreak. That process is pretty simple and I will likely make a post for that in the future.

**Can I upgrade to a larger SD card in the future?**

Yes, if you have a partition based emummc it takes a few steps. I plan on making a guide to walk you through this process. Stay tuned.

**Is \_\_\_\_\_\_\_\_ YouTube guide good to follow?**

I do not recommend following YouTube guides as a general rule. They are often outdated or offer poor advice. I personally also find a written guide easier to follow and reference than frequently rewinding a video. With that said, there are likely some good guides out there but it can be hard to separate the good from the bad to someone new to the scene.

# \--- Setting Up the microSD Card ---

# Selecting a microSD card

**Fake MicroSD Cards:**

Fake microsd cards are everywhere. Usually you plug them in and they have a spoofed storage capacity, lets say 64gb. Once you fill up 64gb it will then start overwriting other files or will get corrupted. By this point its been a few weeks, you've already left a good review, and it is passed the return window. Meanwhile the seller is laughing to the bank with your money. There are no secret deals on sd cards. Only buy from Sandisk, Samsung, or Lexar brands. If you are buying a 1Tb card only get a sandisk straight from the manufactures website. I have seen fakes sold and shipped by amazon and even packages that were carefully opened and resealed with a fake card inside that were returned to the store. Save yourself the money and headache.

**Recommended Sizes:**

I would recommend 256GB as a minimum. That should leave you room for about 20-50 games depending on the size . 512gb is ideal in most cases. I use that in my personal switch and have not filled it up. If you want an extensive library of more games than you can play, then go for a 1TB.

**I have heard I need incognito/90DNS/Exosphere/DNS MITM to avoid a ban, is that true?**

Incognito and 90DNS are no longer recommended. Exosphere will temporarily set your switches reported serial number to all 0's. So in the event you do connect to Nintendo's servers, they will not have your console's unique serial number to execute a console ban. DNS-MITM blocks connections to Nintendo's servers. DNS-MITM combined with Exosphere is the recommended set up. Both are included in the HATS pack so you don't need to do anything in addition to this guide!

# \--- Setting up the HATS pack ---

The HATS pack is updated frequently and has a complete collection of everything you need to get started including exosphere and DNS MITM to block Nintendo's servers on CFW and prevent you from getting banned.

1. Download the latest HATS pack from Sthetix’s website (google search "sthetix hats pack releases" if I directly link it will get DMCA'd)
    
2. Open the zip file and copy the files (or extract using winrar/7zip) to the root of your sd card
    
3. Back up your "Nintendo" folder to a location on your pc if you have any save files or games that are important to you.
    

Your SD card should look like this:

[![r/NxSwitchModding - Nintendo Switch Hacking Guide For Complete Beginners](https://preview.redd.it/nintendo-switch-hacking-guide-for-complete-beginners-v0-w0t46e3liitc1.jpg?width=2252&format=pjpg&auto=webp&s=d75b842a794975f958b49fa974a8c1216b7b89ad)](https://preview.redd.it/nintendo-switch-hacking-guide-for-complete-beginners-v0-w0t46e3liitc1.jpg?width=2252&format=pjpg&auto=webp&s=d75b842a794975f958b49fa974a8c1216b7b89ad "Image from r/NxSwitchModding - Nintendo Switch Hacking Guide For Complete Beginners")

# \--- Formatting the Card ---

EXFAT works, but has the potential to corrupt your data down the line (especially if you use RetroArch). For that reason it is highly recommended you format your card FAT32. You can do this in Hekate itself or via a computer program. Hekate is the recommended method. There are minor but noticeable speed improvements and it is pretty fool proof and convenient.

**\*\*\* WARNING: Hekate can only backup ~1GB of data. If you have more than that on your sd card and you format it, it will be lost! If you have anything on your sd that you care about back it up to your computer \*\*\***

1. Launch hekate by:
    

Modchip: powering on your console

Unpatched V1: booting into RCM mode and injecting the hekate payload

2\. Click "Tools" and Click "Partition SD Card"

[![r/NxSwitchModding - Nintendo Switch Hacking Guide For Complete Beginners](https://preview.redd.it/nintendo-switch-hacking-guide-for-complete-beginners-v0-xeitw8rmiitc1.jpg?width=1368&format=pjpg&auto=webp&s=b24ad4a67734942a63e806096a6af68273c69153)](https://preview.redd.it/nintendo-switch-hacking-guide-for-complete-beginners-v0-xeitw8rmiitc1.jpg?width=1368&format=pjpg&auto=webp&s=b24ad4a67734942a63e806096a6af68273c69153 "Image from r/NxSwitchModding - Nintendo Switch Hacking Guide For Complete Beginners")

3\. Drag the red slider to 12 GB (you can also do 29gb for v1/v2/lite or 58gb for OLED as pictured, but this space is only for game saves and emummc and 12GB is enough for 500+ games) and click next step.

[![r/NxSwitchModding - Nintendo Switch Hacking Guide For Complete Beginners](https://preview.redd.it/nintendo-switch-hacking-guide-for-complete-beginners-v0-954lwzuniitc1.jpg?width=2258&format=pjpg&auto=webp&s=b594d41a613ea7fe34b8c3d13cbe4921ab616703)](https://preview.redd.it/nintendo-switch-hacking-guide-for-complete-beginners-v0-954lwzuniitc1.jpg?width=2258&format=pjpg&auto=webp&s=b594d41a613ea7fe34b8c3d13cbe4921ab616703 "Image from r/NxSwitchModding - Nintendo Switch Hacking Guide For Complete Beginners")

4\. Click Start

[![r/NxSwitchModding - Nintendo Switch Hacking Guide For Complete Beginners](https://preview.redd.it/nintendo-switch-hacking-guide-for-complete-beginners-v0-vmcnnszoiitc1.jpg?width=2311&format=pjpg&auto=webp&s=dd20203fd3f54a0e34a82fbf9f3cd33823f38038)](https://preview.redd.it/nintendo-switch-hacking-guide-for-complete-beginners-v0-vmcnnszoiitc1.jpg?width=2311&format=pjpg&auto=webp&s=dd20203fd3f54a0e34a82fbf9f3cd33823f38038 "Image from r/NxSwitchModding - Nintendo Switch Hacking Guide For Complete Beginners")

5\. Press the power button

[![r/NxSwitchModding - Nintendo Switch Hacking Guide For Complete Beginners](https://preview.redd.it/nintendo-switch-hacking-guide-for-complete-beginners-v0-c0h67zzpiitc1.jpg?width=2258&format=pjpg&auto=webp&s=ee9fb66f5dca6447032ccd35dd6546dc8f35ab90)](https://preview.redd.it/nintendo-switch-hacking-guide-for-complete-beginners-v0-c0h67zzpiitc1.jpg?width=2258&format=pjpg&auto=webp&s=ee9fb66f5dca6447032ccd35dd6546dc8f35ab90 "Image from r/NxSwitchModding - Nintendo Switch Hacking Guide For Complete Beginners")

Done!

# \--- Creating an EmuMMC ---

While the hidden partition emummc is widely recommended, I personally recommend a partition based emummc. A file based emummc makes transfering to a different or larger sd card much easier. A partitioned emummc has slightly faster speeds and is less prone to corruption.

1. Launch hekate by:
    

Modchip: powering on your console

Unpatched V1: booting into RCM mode and injecting the hekate payload

2\. Select "emuMMC"

[![r/NxSwitchModding - Nintendo Switch Hacking Guide For Complete Beginners](https://preview.redd.it/nintendo-switch-hacking-guide-for-complete-beginners-v0-ynqxvbzqiitc1.jpg?width=2283&format=pjpg&auto=webp&s=5d178ce9a353d3ab06434183976eb512cb4d160a)](https://preview.redd.it/nintendo-switch-hacking-guide-for-complete-beginners-v0-ynqxvbzqiitc1.jpg?width=2283&format=pjpg&auto=webp&s=5d178ce9a353d3ab06434183976eb512cb4d160a "Image from r/NxSwitchModding - Nintendo Switch Hacking Guide For Complete Beginners")

3\. Select "Create emuMMC"

[![r/NxSwitchModding - Nintendo Switch Hacking Guide For Complete Beginners](https://preview.redd.it/nintendo-switch-hacking-guide-for-complete-beginners-v0-u4vtlblriitc1.jpg?width=2212&format=pjpg&auto=webp&s=88e735bc549395abf1d71e6b53e38f5fd437a441)](https://preview.redd.it/nintendo-switch-hacking-guide-for-complete-beginners-v0-u4vtlblriitc1.jpg?width=2212&format=pjpg&auto=webp&s=88e735bc549395abf1d71e6b53e38f5fd437a441 "Image from r/NxSwitchModding - Nintendo Switch Hacking Guide For Complete Beginners")

4\. Select "SD Partition"

[![r/NxSwitchModding - Nintendo Switch Hacking Guide For Complete Beginners](https://preview.redd.it/nintendo-switch-hacking-guide-for-complete-beginners-v0-w0p0wm8siitc1.jpg?width=2300&format=pjpg&auto=webp&s=009d189d180037d9076b61a82ef97b1b8e2b71d1)](https://preview.redd.it/nintendo-switch-hacking-guide-for-complete-beginners-v0-w0p0wm8siitc1.jpg?width=2300&format=pjpg&auto=webp&s=009d189d180037d9076b61a82ef97b1b8e2b71d1 "Image from r/NxSwitchModding - Nintendo Switch Hacking Guide For Complete Beginners")

5\. Select Part 1

[![r/NxSwitchModding - Nintendo Switch Hacking Guide For Complete Beginners](https://preview.redd.it/nintendo-switch-hacking-guide-for-complete-beginners-v0-tcnbxg8tiitc1.jpg?width=2274&format=pjpg&auto=webp&s=e02e06b86f4005b9a1d5442a7e90a2611877cb7f)](https://preview.redd.it/nintendo-switch-hacking-guide-for-complete-beginners-v0-tcnbxg8tiitc1.jpg?width=2274&format=pjpg&auto=webp&s=e02e06b86f4005b9a1d5442a7e90a2611877cb7f "Image from r/NxSwitchModding - Nintendo Switch Hacking Guide For Complete Beginners")

6\. Let it run

[![r/NxSwitchModding - Nintendo Switch Hacking Guide For Complete Beginners](https://preview.redd.it/nintendo-switch-hacking-guide-for-complete-beginners-v0-oq4h4r0uiitc1.jpg?width=2290&format=pjpg&auto=webp&s=1a09835357df64c10a0ccce94e8fe4aad942953f)](https://preview.redd.it/nintendo-switch-hacking-guide-for-complete-beginners-v0-oq4h4r0uiitc1.jpg?width=2290&format=pjpg&auto=webp&s=1a09835357df64c10a0ccce94e8fe4aad942953f "Image from r/NxSwitchModding - Nintendo Switch Hacking Guide For Complete Beginners")

DONE!

Note: if you get an fss0 error then hekate may not have fully backed up all the HATS pack files. In that case just re copy the files and overwrite the old ones.

# \--- Create a backup (Optional but Recommended) ---

A backup is almost never needed, **unless you do something to your nand via CFW on the system mmc (sysmmc).** I included it in case you do something you shouldn't accidentally. As long as you keep CFW on your emummc, you will never need your backup.

1. Enter RCM and inject the Hekate payload
    
2. Use the touch screen to navigate to Tools and then Backup eMMC
    
3. Select eMMC BOOT0 & BOOT1
    
4. Tap on Close to continue, then tap on eMMC RAW GPP This will take a long time. Expect it to take between 10 minutes to an hour (or more, if your SD card is very slow).
    
5. Press Close > Home > Power Off
    
6. Insert your SD card into your PC
    
7. Copy the backup folder on your SD card to a safe location on your PC (you can compress the files via zip or rar to save space)
    

# \--- Where to Get Games and How to Install Them ---

This subreddit has rules against linking actual sources, but I will cover the methods used to install games. There are two main methods I recommend for install games. Just make sure you install the base game and not just an update.

**Tinfoil Shops**

In the homebrew menu (click on the photo album or hold R while opening any app) will be Tinfoil installer. _While on CFW EMUMMC_ click on it and it will install tinfoil. Do a google search for the Liberashop telegram and they will have instruction on setting up the shop. From there you can download games over Wi-Fi in the tinfoil app

**DBI over USB**

You can do a google search to find just about any game you would like, I cannot link to specific sites. NSPs are widely available but DBI can install XCI or NSZ files as well. To install files you simply launch DBI (click on the photo albumn or hold R while opening any app), select mtp responder, plug into your computer, and drag the nsp/nsz/xci file to "SD Card Install".

# \--- Did I miss something? ---

If anything is confusing, has errors, is outdated, etc. Please let me know and I will update the guide.

# Questions

1. how to boot to CFW if on OFW, how to switch between them
   1. Hold the power button
   2. Select Power Options
   3. Turn Off
   4. Turn it back on, should boot to hekate
   5. Select "reboot" -> OFW 
2. auto boot option set to CFW in hekate, how to change
   1. launch hekate from homebrew
   2. there might be a reboot to paylod option in homebrew if using HATS
3. Just wondering if following this guide, we have similar protections as stated in this guide? https://rentry.org/AvoidSwitchBan
   1. Yes. DNS MITM and exosphere are included in the HATS pack
4. A payload needs to be injected everytime power on
   1. RCM loaders are cheap and convenient
   2. Once payload is injected you can remove the jig
5. How to get to the homebrew menu
   1. Launch another app from main homescreen + R button
6. Tinfoil icon not on main screen
   1. replace tinfoil folder in the switch folder on the sd card with the tinfoil installer on their website
   2. if doesn't work download dispatcher updater
   3. update everything and restart
   4. reinstall tinfoil
7. Can I put Nintendo folder on the same SD card and use OFW
   1. OFW will only read archived files from the Nintendo folder, everything else will be ignored
8. How to avoid "accidentally" installing pirated software on OFW?
   1. Don't install anything on CFW sysmmc
   2. Follow up question, how will I have access to installation files for pirated sw on OFW sysmmc, won't they be available only on CFW?
      1. installed NSPS on CFW sysmmc will be installed to the home screen in OFW, but won't run, you can't install anything on OFW or run homebrew, but the titles will be there because you installed them on board memory
9. DON't BOOT the blue "CFW EMUMMC" option
10. Bad SD cards on Mac
    1. "Fix Archive Bit" option
    2. Delete /switch/tinfoil folder
    3. Replace it with the tinfoil installer off of tinfoil.io
 11. liberashop telegram is dead
     1. Download on a computer and use a USB cable and DBI to install games
  12
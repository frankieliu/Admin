Launching the payloader via Caffeine
You can find most of the answers to typical questions in the FAQ section.
If something goes wrong, don't panic! First, read the Problems and Solutions section.
If you are a MacOS user, use these tips to avoid memory card problems.
Make backups of your saves as often as possible!
If the console freezes or shows no signs of life, turn it off by holding the (POWER) button for 30 seconds, then turn it on and forward the payload!
The exploit used for the Caffeine hack is called Deja-Vu. It's compatible with any console, regardless of revision, running firmware version 4.0.0 - 4.1.0, of which there aren't many. If your console is one of those, you're in luck.

It is important to understand that this hacking method has its limitations and important rules that must be followed.

Avoid using any applications that directly interact with the system partition, unless you're using them while following this guide. Applications that allow manipulation of AutoRCM are also considered dangerous . Activating AutoRCM on such a console will effectively brick it.

The only way to restore a brick on such a console is to physically upload a backup to the NAND of your console, which is easiest to do using a second switch with access to hekate.

It's also important to avoid internet connection while preparing to install Caffeine. Even a second of internet connection will cause the console to detect an update and prevent you from using the browser without a system update. This state, where the console detects an update and prevents you from using the browser without it, is called supernag . Currently, there's no way to recover from this state. Even a factory reset won't fix this condition. Simply put, you won't be able to update the firmware on a console that's been supernag'd.

In this guide, we will custom configure the access point on our console so that we can use the internet on it to run the hack, but will not get supernag.

We're considering the case where your console isn't flashable, but its OS version is 4.1.0. Otherwise, use Fusée Gelée for flashing, as it's much safer.

Working with Caffeine
Installing and configuring Caffeine
I - Installing Caffeine on a memory card
Make sure your memory card is formatted as FAT32. If not, format it.
Install the latest version of kefir ▼ , if you haven't done so yet.
Unzip the contents of the caffeine.zip folder to the root of the memory card with the installed Kefir with replacement ( merge on macOS)
Insert the memory card into the console
Launch the console
II - Setting up your Internet connection to use Caffeine
Turn on the set-top box and go to “ System Settings ” -> “ Internet ” -> “ Internet Settings ”
Click on each access point in the “ Registered Networks ” section and select “ Delete Settings ” -> “ Delete ”
Or, specify the DNS for each existing one. You need to delete access points to prevent the set-top box from accidentally accessing the internet.
Go to “ System Preferences ” -> “ Internet ” -> “ Internet Settings ”
Connect to your WiFi network, but enter a long (at least 8 characters) incorrect password
Yes, you need to enter the wrong password.
After the connection check fails, click “ OK ”, “ Close ”
Select “ View network settings ”
Select “ Change settings ” -> “ DNS settings ” -> “ Manual entry ”
In the “ Primary DNS ” field, enter  141.148.246.60 
In the “ Enter password ” field, enter the correct password .
Click “ Save ” and then OK
Select “ Connect to this network ”
To connect you will need to register, click “ Next ”
If the connection is established without a registration request, IMMEDIATELY disable the internet connection on the set-top box and delete the access point ! Most likely, your router is ignoring the DNS settings on the set-top box or overwriting them with its own. In this case, I recommend connecting by sharing the internet through your phone or configuring the DNS on the router itself. I won't tell you how to do this, as the settings will vary for each router.
If, instead of accessing the browser, you receive a message about a new system software update, try turning off the set-top box and turning it on while holding both volume buttons until you reach the recovery menu. Once in the menu, hold the (POWER) button for 30 seconds, then turn the set-top box back on and try accessing the set-top box settings again, running a connection test, and then proceeding to network registration.
If after these steps you still receive a message about a system software update, then you have a supernag! Currently, this console cannot be flashed. Removing the supernag is currently not possible .
Please note that the presence of a supernag is confirmed only after you've registered on the network. If you can connect without registering on the network, you have DNS issues. Resolve these, then try again, after first deleting the firmware update message through the recovery menu.
A browser window will open, displaying the PegaSwitch page . Wait for it to load completely.
III - Launching custom firmware
On the PegaSwitch page, select the right icon - Caffeine
The spinner on the screen will freeze, but the one in the lower left corner will spin. Be patient! On average, it takes about 45 seconds from the moment you click the icon until the exploit is triggered.
If the spinner freezes for more than a minute, reboot the device by holding the power button for 30 seconds and try again. You should also do the same if the screen suddenly turns white.
Wait for the text field to appear
Click on the text field and count to five
Press the power button
If everything is done correctly, the set-top box will reboot into the custom firmware.
Installing and configuring Caffeine
Launching a configured Caffeine
Launch the eShop . The console will require a network connection. Click " Next. "
A browser window will open, displaying the PegaSwitch page . Wait for it to load completely.
On the PegaScape page, select the Caffeine icon
The spinner on the screen will freeze, but the one in the lower left corner will spin. Be patient! On average, it takes about 45 seconds from the moment you click the icon until the exploit is triggered.
If the spinner freezes for more than a minute, reboot the device by holding the power button for 30 seconds and try again. You should also do the same if the screen suddenly turns white.
Wait for the text field to appear
Click on the text field and count to five
Press the power button
If everything is done correctly, the set-top box will reboot into the custom firmware.
Your console is now running custom firmware. If you need to access Hekate, ▼ , reboot the set-top box through the power menu and hold down the volume down button on the kefir splash screen.

If you turned off the console or your battery is dead, run the custom game using these instructions.
If you have changed your access point, you will need to reconfigure your DNS according to the instructions for Configuring an access point to run Caffeine.
Launching a configured Caffeine
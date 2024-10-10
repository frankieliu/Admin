# Disable HW protection
1. Remove the four rubber feet
2. Unscrew the four screws
3. Squeeze the box to make one side bulge out
4. Insert screw driver to loosen any holds
5. Carefully separate the halves
6. There is a power cable between the two sides
7. Next to the RAM remove flat wide screw (protection) 

# Developer mode (enter via Recovery Mode pin)
1. turn off
2. push the pin button next to the lock (enter Recovery Mode)
3. turn on
4. release at some point
5. Ctrl-D - turn off os verification
6. Enter - system will take a while to go into developer mode

# shell
1. boot up
2. at the login prompt (have to go through several screens)
3. Press Ctrl-Alt-F2 (Right-arrow on ChromeOS keyboard)
4. loging is a chronos

# Firmware
1. cd
2. curl -LO mrchromebox.tech/firmware-util.sh
3. sudo bash firmware-util.sh
4. Option 2 to install/update UEFI (Full ROM) Firmware
5. Note that this won't let you install chromeos
   a. you need to have chromeos firmware to install

# Lubuntu
1. Burn using linux disk image writer
2. Can erase most of the disk to install ubuntu

# Sound fix
1. git clone https://github.com/WeirdTreeThing/chromebook-linux-audio
2. cd chromebook-linux-audio
3. comment out exit in ubuntu section of setup-audio
4. ./setup-audio

# restore stock firmware
1. Boot into a live linux usb
2. cd
3. curl -LO http://mrchromebox.texh/firmware-util.sh
4. sudo bash firmware-util.sh
5. utility can download stock firmware
6. make chromeOS recovery USB using ChromeRecoveryUtility 
7. enter recovery mode (using pin button)

# Installing ChromeOS
Not sure if this will work

# Teemo (as recognized by the extension)
Downgrade and firmware recovery if your set-top box is broken
You can find most of the answers to typical questions in the FAQ section.
If something goes wrong, don't panic! First, read the Problems and Solutions section.
If you are a MacOS user, use these tips to avoid memory card problems.
Make backups of your saves as often as possible!
If the console freezes or shows no signs of life, turn it off by holding the (POWER) button for 30 seconds, then turn it on and forward the payload!
This guide is for downgrading the firmware and for those whose console won't turn on, but the PRODINFO section is intact or has a backup (Atmosphere 0.8.1 and above automatically backup PRODINFO to the card). To update the firmware, use these instructions!

What you will need
BE SURE to make a backup of your current firmware before you begin following these instructions, even if your set-top box doesn't turn on!

Keys are unique to each console.
The firmware version you are going to restore to (but not higher than the one from which you removed the keys)
SystemRestoreV3.te - a firmware restore script
Latest version of EmmcHaccGen
Requires .NET SDK 3.1 to run.
Create a backup of the console's NAND and store it in a safe place.
Establish kefir ▼ , if you haven't done it yet
Instructions
Part I - Repackaging the firmware for your system
Install .NET SDK 3.1
Unzip  .zip-архив  EmmcHaccGen to a convenient folder
Place your key  EmmcHaccGen  file in the folder
Unzip  .zip-архив  the firmware into a folder  EmmcHaccGen  so that the folder with the firmware is in the same directory as  EmmcHaccGen.exe 
Launch a command prompt in the folder  EmmcHaccGen  (open the context menu while holding down the Shift key, click on an empty space in the folder, and select “ Open Command Prompt Here ” or “ Open PowerShell Window Here ”)
In the window that opens, type:
For powershell:  .\EmmcHaccGen.exe --keys prod.keys --fw X.X.X 
For command line:  EmmcHaccGen.exe --keys prod.keys --fw X.X.X 
XXX is the name of the folder containing your firmware. For example,  EmmcHaccGen --keys prod.keys --fw 14.1.0 
If you have Mariko ▼ , then add the key  --mariko  after the firmware version (for example,  EmmcHaccGen --keys prod.keys --fw 14.1.0 --mariko  )
Wait for the repackaging to complete. You'll end up with a folder  Y-X.X.X-exfat  containing  Y  [  NX  or  a  ], depending on the console revision.
Part II - Uploading firmware to the device
On the console's memory card, create a folder  FW  and place SystemRestoreV3.te there , as well as  boot.bis  the folders  SYSTEM  that are in the folder  Y-X.X.X-exfat 
Run hekate ▼ -> Payloads ->  TegraExplorer.bin 
Select Browse SD , navigate to the folder  FW  , select  systemRestore.te  -> Launch Script
Follow the on-screen instructions and restore both BIS and SYSTEM.
Try to boot into the system
Please note that if your console is flashed with Fusée Gelée, AutoRCM will be enabled .
If the console still won't boot, perform a factory reset.
Next Step: Safely Update Firmware
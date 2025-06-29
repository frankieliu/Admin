--

Touchpad not working:
Site:
https://forums.linuxmint.com/viewtopic.php?p=2003908#p2003908

Changing grub configuration:

G=/etc/default/grub;sudo cp $G{,.`date +%F.%s`} # add "i8042.nopnp=1 pci=nocrs"
sed 's/i8042.nopnp=1 pci=nocrs//' $G|tr -s ' '|sudo dd of=$G 2>/dev/null
sudo sed -i 's/GRUB_CMDLINE_LINUX_DEFAULT="/&i8042.nopnp=1 pci=nocrs /' $G&&sudo update-grub

Undoing:

G=/etc/default/grub;sudo cp $G{,.`date +%F.%s`} # remove "i8042.nopnp=1 pci=nocrs"
sed 's/i8042.nopnp=1 pci=nocrs//' $G|tr -s ' '|sudo dd of=$G 2>/dev/null&&sudo update-grub

In the above, the first set of commands had problems loading into mint

Then had to boot in advanced mode
Then Update grub

This threw me into a low graphic, then I ran the undo instructions below.
Then the touchpad was working!

----

Setting sound:
--------------

sudo apt install pulseaudio
amixer -D pulse sset Master 5%+

Then add the setting/keyboard to set this command to Fn key

xrandr --output eDP-1 --brightness 0.9

This works ok, but it would be good to incrementally change.

sudo apt install xdotool

Then map
xdotool key XF86MonBrightness{Up,Down}

---
Printer
https://discussions.apple.com/thread/1522861?sortBy=rank

use http://10.0.0.73:631/ipp

---
Use convert to fit to a page
https://imagemagick.org/discourse-server/viewtopic.php?t=35837

convert 24b5f7e1-4e82-4e11-923b-ba7fcaca5043.jpeg 3bb78fc1-c75c-4f65-ab70-adc1fcd75489.jpeg 411b0c39-0d27-494d-8d1e-14e1724a2288.jpeg 7306d99d-4795-43c2-a29f-7c92413e29fe.jpeg d2b0cb0e-f129-4bc4-9f2b-38b523075c1d.jpeg dca4088a-daee-4cf4-b1f3-ecb8726cb54a_part1.jpeg dca4088a-daee-4cf4-b1f3-ecb8726cb54a_part2.jpeg eae44da8-6d41-4b0a-8801-fbc4c0d02954.jpeg -resize 2550x3300 -density 300 -units pixelsperinch -extent 2550x3300 out.pdf

Retroarch bios files
https://retroarchemu.gitlab.io/bios/

unzip into .config/retroarch/system

# serial of t460:
PF0IDJX8

Wireless card
sierra em745

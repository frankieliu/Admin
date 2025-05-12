# Intro
[linux-blog](https://linuxblog.io/boost-battery-life-on-linux-laptop-tlp/)
Boost Battery Life of Linux Laptops

As mentioned, I installed TLP to extend battery life and get approximately an hour and a half of use per 10% of the battery charge. Also, to prolong the battery’s overall lifespan, I’ve limited the charging to a maximum of 80% and set a discharge threshold at 20%.

With these settings, I typically achieve around 7 to 8 hours of battery life in the 80% to 20% charge range. Let’s install TLP and configure it to achieve similar results.

Keep in mind, the outcomes might differ based on the specific hardware you’re using and its age.

# Install

For Ubuntu/Debian (and derivatives like Linux Mint, Pop!_OS), use:

sudo apt install tlp cpufrequtils
For Fedora, CentOS, RHEL and derivatives, use:

sudo dnf install tlp cpufrequtils
For Arch Linux and derivatives, use:

sudo pacman -S tlp tlp-rdw
Now, let’s enable TLP and configure it:

# Start service

sudo systemctl enable tlp.service
sudo systemctl mask systemd-rfkill.service && sudo systemctl mask systemd-rfkill.socket
sudo systemctl restart tlp.service
sudo tlp-stat -p
sudo tlp-stat -b
sudo tlp-stat -s

# Modify config
sudo vi /etc/tlp.conf

START_CHARGE_THRESH_BAT0=75
STOP_CHARGE_THRESH_BAT0=80
# Check how many batteies
tlp-stat -s

# Check current configuration
tlp-stat -c

# Check linux battery info
tlp-stat -b

# Check temperature
tlp-stat -t

# Check Processor data
tlp-stat -p
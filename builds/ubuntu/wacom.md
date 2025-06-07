# installing driver

sudo apt install build-essential autoconf linux-headers-$(uname -r)

bunzip input-wacom-1.4.0.tar.bz2 

tar xf input-wacom-1.4.0.tar.bz2 

cd input-wacom-1.4.0/

if test -x ./autogen.sh; then ./autogen.sh; else ./configure; fi && make && sudo make install || echo "Build Failed"

reboot -f

-- plug in wacom tablet
grep "" /sys/module/wacom*/version
v2.00-0.48.0

or

modprobe wacom | grep version

# 

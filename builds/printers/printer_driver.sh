#!/bin/bash

# USSCA10-3-3237-sp
# ussca10-3-3237-sp.us.oracle.com

#no spaces in printername
printername="ussca10-3-3237-sp"

printerdescription="ussca10-3-3237-sp"
printerhost="ussca10-3-3237-sp.us.oracle.com"
printerdriver="file:///home/adam/HW/xerox-altalink-c8055.ppd"
printerdriver="drv:///sample.drv/generic.ppd"
printerdriver="xerox-altalink-c8055.ppd"
printerdriver="EF572624.PPD"

#installs printer
echo /usr/sbin/lpadmin -p "${printername}" -D "${printerdescription}" -v "ipp://${printerhost}:631/ipp/print" -m "${printerdriver}"

# -v "lpd://${printerhost}/RAW"
# ipp://uswhq5ip1047x2.local:631/ipp/print

cat <<EOF

Installing PPD File From the Command Line

Before proceeding with the installation, be sure to exit all running
applications. Root privileges are required in order to install ppd
file.  Copy the ppd file from the Printer Driver and Documentations CD
to

/usr/share/cups/model

Note: A ppd file for each language is available in the corresponding
“Drivers/ LinuxPPD/<language>” folder on the CD. Use the appropriate
ppd file for the language.  From the Main Menu, select Applications,
then Accessories, then Terminal.  Enter the command

/etc/init.d/cups restart

EOF

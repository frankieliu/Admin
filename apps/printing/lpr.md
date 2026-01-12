lpr filename.pdf
lpr -P printername filename.pdf

lpstat -p -d

This doesn't seem to work

lp -d printername filename.pdf # this works on raspberry

SumatraPDF.exe -print-to "printer_name" --print-settings "1-3,fit,monochrome" file.pdf
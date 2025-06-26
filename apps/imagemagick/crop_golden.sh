filename=$1
base=$(basename $filename .png)
index=0
magick $filename -crop 680x627+109+179 $base-0.png
magick $filename -crop 680x627+901+179 $base-1.png
magick $filename -crop 680x627+1693+179 $base-2.png
magick $filename -crop 680x627+109+1266 $base-3.png
magick $filename -crop 680x627+901+1266 $base-4.png
magick $filename -crop 680x627+1693+1266 $base-5.png
magick $filename -crop 680x627+109+2352 $base-6.png
magick $filename -crop 680x627+901+2352 $base-7.png
magick $filename -crop 680x627+1693+2352 $base-8.png

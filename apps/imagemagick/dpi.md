# check dpi
identify -format "%x" image.jpg  # shows x resolution (dpi)
identify -format "%x x %y %units" image.jpg  # shows x and y resolution and units
identify -format "%w x %h %x %y %units" image.jpg   # shows pixel width and height

# set dpi
magick input.jpg -density 300 -units PixelsPerInch output_300dpi.png

# change resolution
magick input.png -resample 72 output_72dpi.png

- keep pixel dimensions i.e. w x h unchanged, makes printed size smaller
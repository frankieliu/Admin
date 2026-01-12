magick identify -verbose input.jpg | grep "Print size"

magick identity --format "%[fx:w/x] x %[fx:h]\n" input.jpg

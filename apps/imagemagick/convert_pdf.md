magick -density 300 *.jpg output.pdf

- -density placed before the input filenames to affect how the images are read or how the PDF is structured
- -page letter or -resize to control the page layout
  
or

sudo apt install img2pdf
img2pdf *.jpg --output combined.pdf


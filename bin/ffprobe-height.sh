ffprobe $1 2>&1 | grep -E '^ +Stream #0:0' | cut -d, -f5 | cut -d' ' -f1 | cut -dx -f2

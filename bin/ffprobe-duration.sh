ffprobe $1 2>&1 | grep -E '^ +Duration' | cut -d':' -f2- | cut -d, -f1

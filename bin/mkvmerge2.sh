name=$(basename $1 .m4)
mkvmerge -o ${name}.mkv ${name}.m4v ${name}.m4a

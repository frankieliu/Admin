# call:
# ydo <directory_title> <url>

ydo() {
	dirname=$1
	url=$2
	format=${3:=hd_mp4-720p}
	mkdir $dirname
	cd $dirname

	youtube-dl --write-sub --skip-download $url
	youtube-dl -f $format $url

	cd ..
}

ydof() {
	url=$1
	youtube-dl -F $url
}

# install

1. scope install y-dlp
1. install firefox

# use

1. Open video site
1. Right click on video and open frame in a new tab
1. copy the URL
1. yt-dlp <URL> --referer <Originating URL>

# example

1. Get avalailable formats
   yt-dlp <URL> --referer <PARENT_URL> -F

1. Download specific formatts
   yt-dlp <URL ...> -f name_of_video_format+name_of_audio_format

1. Download with audio at best but video at smaller
   yt-dlp <URL ...> -S "height:360"
   yt-dlp <URL ...> -f "bv[height<=360]+ba"




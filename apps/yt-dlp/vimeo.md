# install

1. scope install y-dlp
1. install firefox

On mac os

1. pip install "yt-dlp[default,curl-cffi]"
2. Need to install with curl-cffi to impersonate browser requests

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

1. 264 = 426x240 = 372MB
1. 321 = 640x360 = 453MB
1. 431 = 960x540 = 608MB
1. 510 = 1280x720 = 719MB
1. 729 = 1920x1080 = 1GB

Notes:

321 is too low resolution - can't read slides well

yt-dlp -f hls-fastly_skyfire-431 <frame> --referer <URL>
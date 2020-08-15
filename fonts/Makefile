rehash:
	fc-cache -vf

source-code-pro:
	if [ ! -f ./source-code-pro.zip ]; then \
		wget https://github.com/adobe-fonts/source-code-pro/archive/2.030R-ro/1.050R-it.zip -O scp.zip; \
	fi; \
	cd tmp; \
	if [ ! -d source-code-pro-2.030R-ro-1.050R-it ]; then \
		unzip source-code-pro.zip; \
	fi; \
	cd source-code-pro*; \
	mkdir -p ~/.fonts; \
	cp TTF/*.ttf ~/.fonts/;

ubuntu:
	mkdir tmp; \
	cd tmp; \
	unzip ../Ubuntu_Mono.zip; \
	cp *.ttf ~/.fonts

hack:
	mkdir tmp; \
	cd tmp; \
	unzip ../Hack-v3.003-ttf.zip; \
	cp ttf/*.ttf ~/.fonts

dejavu:
	mkdir tmp; \
	cd tmp; \
	unzip ../dejavu-fonts-ttf-2.37.zip; \
	cp dejavu-fonts-ttf-2.37/ttf/*.ttf ~/.fonts

fira:
	mkdir tmp; \
	cd tmp; \
	unzip ../Fira_Code.zip; \
	cp static/*.ttf *.ttf ~/.fonts

consolas:
	mkdir tmp; \
	cd tmp; \
	unzip ../Consolas.zip; \
	cp Consolas/*.ttf ~/.fonts

inconsolata-g:
	mkdir tmp; \
	cd tmp; \
	unzip ../Inconsolata-g.zip; \
	cp *.ttf ~/.fonts

terminess:
	mkdir tmp; \
	cd tmp; \
	unzip ../Terminess.zip; \
	cp Terminess/*.ttf ~/.fonts

# Fonts for coding
# https://www.slant.co/topics/7014/~fonts-to-use-in-a-terminal-emulator
#
# Fonts from google
# https://fonts.google.com/
# 
# Fonts in windows
# Win-E (explorer)
# shell:fonts or %WINDIR%/fonts
# copy consolas
# https://www.microsoft.com/en-us/download/confirmation.aspx?id=17879
#
# Installing fonts for VcXsrv
# https://www.reddit.com/r/WinSSHTerm/comments/cgrqbt/need_extra_fonts_for_vcxsrv/
# https://sourceforge.net/p/vcxsrv/discussion/986201/thread/b545aa2b/#acf8
# https://superuser.com/questions/1192339/how-to-add-fonts-to-vcxsrv-x-server
#

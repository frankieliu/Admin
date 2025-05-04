# installing node
```
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.3/install.sh | bash
export NVM_DIR="$HOME/.config/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
nvm install node
node -v
npm -v
```
# installing puppeteer
```
mkdir puppeteer-project
cd puppeteer-project/
npm init
npm install puppeteer
```
# setting up chrome
```
cd .cache/
cd puppeteer/chrome
cd linux-135.0.7049.114/chrome-linux64/
export CHROME_DEVEL_SANDBOX=$(pwd)/chrome_sandbox
sudo chown root chrome_sandbox 
sudo chgrp root chrome_sandbox 
sudo chmod 4755 chrome_sandbox 
```

[setting up sandbox](https://chromium.googlesource.com/chromium/src/+/main/docs/security/apparmor-userns-restrictions.md)
#!/usr/bin/python3

# https://askubuntu.com/questions/464640/is-there-a-program-that-can-put-some-kind-of-visual-notification-on-my-screen-fo
# watch -n10 command args
# https://github.com/trehn/termdown/blob/master/termdown.py

import subprocess
import time

# snooze time
snooze_time = 90

def get_screenname():
    screendata = subprocess.Popen(["xrandr"], stdout=subprocess.PIPE)
    return [line for line in
            screendata.communicate()[0].decode("utf-8").split("\n") if
            "connected" in line][0].split(" ")[0]


screen = get_screenname()
snoozeoption = 1

while snoozeoption == 1:
    subprocess.Popen(["xrandr", "--output", screen, "--gamma",
                      "1:1:0.3", "--brightness", "0.6"])

    snoozeoption = subprocess.call(
        ["zenity", "--question",
         "--text=What to do?", "--ok-label=Dismiss",
         "--cancel-label=Snooze", "--title=Take a Break"],
        stderr=subprocess.DEVNULL)

    if snoozeoption == 1:
        subprocess.call(
            ["xrandr", "--output", screen, "--gamma",
             "1:1:1", "--brightness", "1"])
        time.sleep(snooze_time)
    else:
        pass

subprocess.call(
    ["xrandr", "--output", screen, "--gamma", "1:1:1", "--brightness", "1"])

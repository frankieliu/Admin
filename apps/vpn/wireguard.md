[reddit](https://www.reddit.com/r/torrents/comments/gkjzgq/comment/fqrj6zc/)
---

You'll want to make sure you are fully connectable to maximize your speeds and ability to connect to other peers in torrent swarms. Go through the checklist & make sure you have all your settings correct.

First, prior to testing:

- Make sure you're testing with a known good torrent. e.g. a [Ubuntu Linux torrent](https://www.ubuntu.com/download/alternative-downloads).
    
- If possible try testing with a wired connection (disable or disconnect wireless during testing). This helps rule out any specific issues with wireless networking.


General stuff you can double-check when having issues with torrent speeds/connectivity:

Connectivity:

1. Are you connected to a network that allows torrents? e.g. many schools, offices, coffee shops, public wifi, etc. actively _block_ torrents. You would need a paid [torrent friendly VPN](https://www.reddit.com/r/VPNTorrents), or paid [Seedbox](https://www.reddit.com/r/Seedboxes), to get around that (see rule #4)
    
2. Are you using a VPN or proxy that is not torrent friendly? If that's the case then you should get rid of whatever you're using & get a paid [torrent friendly VPN](https://www.reddit.com/r/VPNTorrents) (see rule #4)
    
3. Are you connectable (port forwarded)? For your torrent client test the client's connection port with something like [www.canyouseeme.org](http://www.canyouseeme.org/) & see if the test passes. If it does not pass then you need to manually configure a port forward through your software firewall and/or network router.  
    Hint: You should not be testing or torrenting with port 80.  
    Also: If setting up a port forward in your network router do not use port triggering.
    
4. Have you tried disabling any anti-virus/malware programs? They can sometimes interfere with torrent clients. If you find this is an issue you could try whitelisting your torrent clients in your anti-virus/malware programs & see how that goes.
    

Speeds/Connectivity:

1. Did you enable any bandwidth limits in your torrent client? Setting your upload to something ridiculously low (e.g. 1 KB/s) will negatively affect your download speeds too.
    
2. Are you using any blocklists? If so, stop using them (see rule #7)
    
3. Try disabling uTP in your torrent client & see how that goes (with Deluge this can be a bit tricky see [https://www.reddit.com/r/torrents/comments/51d7zg/question\_about\_utp\_and\_deluge\_on\_the\_mac/](https://www.reddit.com/r/torrents/comments/51d7zg/question_about_utp_and_deluge_on_the_mac/), for other clients just look in the settings)
    
4. In your torrent client make sure to set your bittorrent protocol encryption to "Prefer Encryption" or "Enable Encryption" (not Disable Encryption or Require Encryption), this will allow you to connect to more peers in the torrent swarm.
    
5. Make sure to enable DHT & PEX in your torrent client, especially if you're using public torrents (this helps you locate more peers in the torrent swarm)
    
6. Double-check that your torrent client's connection port is a number above 10000 or so. (preferably [49152 or higher](https://en.wikipedia.org/wiki/Ephemeral_port), some ISPs rate limit lower port numbers)  
    Also: This port number should not be port 80 or 6881-6889
    
7. In your ISP router/modem, check if you have any sort of "flood protection", DDoS protection, etc. type of things enabled. If so disable them.
    
8. In your network router (or ISP router/modem) check if you have anything like traffic shaping/QOS enabled. If so try disabling them and/or changing the settings.)
You'll want to make sure you are fully connectable to maximize your speeds and ability to connect to other peers in torrent swarms. Go through the checklist & make sure you have all your settings correct.

---

First, prior to testing:

- Make sure you're testing with a known good torrent. e.g. a [Ubuntu Linux torrent](https://www.ubuntu.com/download/alternative-downloads).
    
- If possible try testing with a wired connection (disable or disconnect wireless during testing). This helps rule out any specific issues with wireless networking.
    

General stuff you can double-check when having issues with torrent speeds/connectivity:

Connectivity:

1. Are you connected to a network that allows torrents? e.g. many schools, offices, coffee shops, public wifi, etc. actively _block_ torrents. You would need a paid [torrent friendly VPN](https://www.reddit.com/r/VPNTorrents), or paid [Seedbox](https://www.reddit.com/r/Seedboxes), to get around that (see rule #4)
    
2. Are you using a VPN or proxy that is not torrent friendly? If that's the case then you should get rid of whatever you're using & get a paid [torrent friendly VPN](https://www.reddit.com/r/VPNTorrents) (see rule #4)
    
3. Are you connectable (port forwarded)? For your torrent client test the client's connection port with something like [www.canyouseeme.org](http://www.canyouseeme.org/) & see if the test passes. If it does not pass then you need to manually configure a port forward through your software firewall and/or network router.  
    Hint: You should not be testing or torrenting with port 80.  
    Also: If setting up a port forward in your network router do not use port triggering.
    
4. Have you tried disabling any anti-virus/malware programs? They can sometimes interfere with torrent clients. If you find this is an issue you could try whitelisting your torrent clients in your anti-virus/malware programs & see how that goes.
    

Speeds/Connectivity:

1. Did you enable any bandwidth limits in your torrent client? Setting your upload to something ridiculously low (e.g. 1 KB/s) will negatively affect your download speeds too.
    
2. Are you using any blocklists? If so, stop using them (see rule #7)
    
3. Try disabling uTP in your torrent client & see how that goes (with Deluge this can be a bit tricky see [https://www.reddit.com/r/torrents/comments/51d7zg/question\_about\_utp\_and\_deluge\_on\_the\_mac/](https://www.reddit.com/r/torrents/comments/51d7zg/question_about_utp_and_deluge_on_the_mac/), for other clients just look in the settings)
    
4. In your torrent client make sure to set your bittorrent protocol encryption to "Prefer Encryption" or "Enable Encryption" (not Disable Encryption or Require Encryption), this will allow you to connect to more peers in the torrent swarm.
    
5. Make sure to enable DHT & PEX in your torrent client, especially if you're using public torrents (this helps you locate more peers in the torrent swarm)
    
6. Double-check that your torrent client's connection port is a number above 10000 or so. (preferably [49152 or higher](https://en.wikipedia.org/wiki/Ephemeral_port), some ISPs rate limit lower port numbers)  
    Also: This port number should not be port 80 or 6881-6889
    
7. In your ISP router/modem, check if you have any sort of "flood protection", DDoS protection, etc. type of things enabled. If so disable them.
    
8. In your network router (or ISP router/modem) check if you have anything like traffic shaping/QOS enabled. If so try disabling them and/or changing the settings.
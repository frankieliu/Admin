Multiplayer on a firmware console (LAN Play)
You can find most of the answers to typical questions in the FAQ section.
If something goes wrong, don't panic! First, read the Problems and Solutions section.
If you are a MacOS user, use these tips to avoid memory card problems.
Make backups of your saves as often as possible!
If the console freezes or shows no signs of life, turn it off by holding the (POWER) button for 30 seconds, then turn it on and forward the payload!
It's no secret that online bans on a flashed console can happen at breakneck speed. This is because online play happens through Nintendo's servers, which are perfectly aware of whether your game has been purchased or not. As for the cartridge, each cartridge has a unique identifier embedded in it, which the server can also track. If a cartridge is dumped, everyone who logs online using that dump will have the same identifier, which will naturally also result in a ban for the cartridge and its users.

Currently, you can play official online games at your own risk, using, for example, a legal copy of the online game or free games. You won't even be banned for a while.

A solution was found in local network play. Some games support LAN play, which allows us to redirect the data sent from the console to the PC and forward it to other consoles through a dedicated server. All consoles connected to the same server will then see themselves as being directly connected. And yes, this method will allow even banned players to play.

The most significant drawback of this method is the need to agree in advance with all players. In the Russian-speaking segment, this is done in the Switch Open - Pirate Online Discord channel . You can chat with players from all over the world here . Agree with other players on what game you'll play and on which server.

What you will need
The latest version of kefir ▼
Latest version of ldn_mitm (ldn_mitm_vx.xxzip)
It is recommended to download from the hb appstore (tools section)
The latest version of Lan-Play-Server-Manager
MacOS and Linux users can use the switch-lan-play program
WinPCap Drivers
Presets
Part I - Setting Up the Client
These instructions are for the Lan-Play-Server-Manager application , which only works on Windows. MacOS and Linux users can use the lan-play-GUI program . You can watch the video on how to configure it at the link.

Download and install WinPCap drivers
Download the latest version of Lan-Play-Server-Manager and unzip it on your PC.
Unzip the archive  Lan-Play-Server-Manager.zip  to a convenient folder
Run  Lan-Play-Server-Manager.exe  as Administrator
In the Lan-Play Version field , enter “ 0.2.3 ”
In the MTU field , write “ 500 ”
Uncheck the “ Fake Internet ” box.
Select the desired server from those presented in the list and click “ Connect ”
Only green servers will work
Agree with other players on Discord which server you will play on
If the connection is established, the button will turn green and change its name.
Part II - Setting Up the Switch
Refresh kefir ▼ follow the instructions from the repository if you haven't done this before
Turn on the set-top box and go to “ System Settings ” -> “ Internet ” -> “ Internet Settings ”
Select your current connection, click on it (A) and select “ Change settings ”
Select “ IP address settings ” -> “ Manual entry ”
Enter a static IP address in the range from  10.13.0.1  to  10.13.255.254  (except  10.13.37.1  )
Set the value of the “ Subnet Mask ” field to  255.255.0.0 
Set the value of the “ Gateway ” field to  10.13.37.001 
Select “ DNS Settings ” -> “ Manual Entry ”
In the “ Primary DNS ” field, enter  8.8.8.8 
In the “ Secondary DNS ” field, enter  8.8.8.4  and click “ Save ”, then OK
Connecting to LAN-play
Not every game supports LAN play. A current list of games that support this mode can be found here . In some games, this feature is activated with a special key combination . You can find out more about this on Discord.

Also, remember that for a successful connection, all players must have the same version of the game, and the latest version isn't always the best. Check in the chat to find out which version to play on and where to get the update.

Let's set up the game using Mario Kart 8 as an example

Launch the game
Press L + Down Arrow + R3 at the same time (or L + R + Up Arrow if you are using 4IFIR)
You will see that the last item's name has changed to “ LAN Play ”
Go to “ LAN Play ” and select “ 1i ” if you are going to play on your own console and “ 2i ” if two players will be playing on the same console.
Create a room, or connect to an existing one
Play
Possible problems and their solutions
Error 2110-3127 when connecting to WiFi
Lan-play is running without administrator rights
The WinPcap driver crashed - reinstall it
The problem is with the router (occurs with cheaper models) - reboot the router
Your WiFi is configured incorrectly. Make sure you've followed all the steps exactly.
Error 2160-8007
Your WiFi is configured incorrectly. Make sure you've followed all the steps exactly.
Error 2155-8007 when connecting to Nintendo servers
You don't need to connect to them.
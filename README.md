LOLService
==========
Note*: LOLService recently updated to version 2.0, so a lot of the older code just doesn't work anymore.
The metaploit module is the only code I'm going to keep updating.

banners.txt - These are all of the banners I have seen for the service.

exploit.py - Proof of concept code. DEPRECATED (was written for version 1.0)

link_injection.rb - The metasploit module I wrote. Figured one off scripts aren't really that used.

=================
Things Left To Do
=================

The module is stable, but now I need to make the executable. Wasn't sure if I wanted
to host it inside the metasploit module or depend on a seperate server to host the 
file. Either way gets the job done, but if I don't put it into the metasploit code
that will be a lot less work for me, and I can just use a simple python HTTP server
whenever I actually want to sploit it.

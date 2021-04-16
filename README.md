# tarkov-map-overlay
C# map overlay for tarkov
Created with VS2019 and AutoIt3, the 'takov-map-alpha.exe' file is simply an on-top chromium browser. 
The autoit script allows you to toggle whether the map is visible or hidden.


----First Time Setup----

-You must install AutoIt3 , even if you are not building the source yourself. https://www.autoitscript.com/cgi-bin/getfile.pl?autoit3/autoit-v3-setup.exe
-Keep all default/recommended settings for autoit install.
-Extract 'tarkov-map' folder anywhere you want. The sources are included in 'tarkov-map-source' folder.
-Find the file 'tarkov-map.au3' in the 'tarkov-map' folder, right click and create a shortcut.
-Place the shortcut where ever you want. Use the shortcut for easiest way to start the map script.


----How to use----

Map key is default to "Shift+M".

Map will only toggle while Tarkov is in focus.

Resize the map and position it where ever you want.

Tarkov must be in Window Mode or Borderless Mode, for this to work properly. Tarkov must be open first before the map. 
If the game, or map, or script is closed, the map and script will also close after 10 seconds.


----Troubleshoot----
If your radar address is not 127.0.0.1:7890, you will need to compile the source yourself and change the address.

If you click the shortcut and it just opens the script editor, right click the shortcut and choose 'Run Script'.
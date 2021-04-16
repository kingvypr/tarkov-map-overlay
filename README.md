# tarkov-map-overlay
C# map overlay for tarkov


Currently only one map per build is supported, feel free to fork and make additions.

Change "http://127.0.0.1/" to any web-map url you want to use, I recommend map-genie.

Key is default to "Shift+M". 

Map will only toggle while Tarkov is in focus.

Tarkov must be in Window Mode or Borderless Mode, for this to work properly.
Tarkov must be open first before the map.
Map will close if tarkov is closed, the script is exited, or the map .exe is closed.

Create a shortcut of the autoit script, and place the shortcut where you want. Use the shortcut for easiest way to start the map.

Created with VS2019 and AutoIt3, the .exe file is simply an on-top chromium browser, the autoit script allows you to toggle whether the map is visible or hidden.

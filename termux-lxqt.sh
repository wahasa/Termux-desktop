#!/bin/bash

# preparation to installing

pkg update && pkg upgrade
pkg install root-repo x11-repo
pkg install neofetch

termux-setup-storage

# installing lxqt desktop

pkg install lxqt* tigervnc
echo "vncserver -geometry 1600x900 -xstartup ../usr/bin/startlxqt" > $PREFIX/bin/desktop-lxqt
echo "vncserver -kill :1" > $PREFIX/bin/desktop-stop

chmod +x $PREFIX/bin/desktop-lxqt
chmod +x $PREFIX/bin/desktop-stop

clear

echo " "
echo "Command to start 'desktop-lxqt' and stop 'desktop-stop'"
echo " "

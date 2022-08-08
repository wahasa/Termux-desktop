#!/bin/bash

# preparation to installing

pkg update && pkg upgrade
pkg install root-repo x11-repo
pkg install neofetch

termux-setup-storage

# installing xfce desktop

pkg install xfce4* tigervnc
echo "vncserver -geometry 1600x900 -xstartup ../usr/bin/startxfce4" > $PREFIX/bin/desktop-xfce
echo "vncserver -kill :1" > $PREFIX/bin/desktop-stop

chmod +x $PREFIX/bin/desktop-xfce
chmod +x $PREFIX/bin/desktop-stop

clear

echo " "
echo "Command to start 'desktop-xfce' and stop 'desktop-stop'"
echo " "

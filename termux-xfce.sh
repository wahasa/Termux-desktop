#!/bin/bash

# preparation to installing

termux-setup-storage

pkg install root-repo x11-repo
pkg install neofetch -y

# installing xfce desktop

pkg install xfce4* tigervnc -y
echo "vncserver -geometry 1600x900 -xstartup ../usr/bin/startxfce4" > $PREFIX/bin/desktop-xfce
echo "vncserver -kill :1" > $PREFIX/bin/desktop-stop
chmod +x $PREFIX/bin/desktop-xfce
chmod +x $PREFIX/bin/desktop-stop
clear

echo " "
echo "Command to start 'desktop-xfce' and stop 'desktop-stop'"
echo " "
bash desktop-xfce

rm -rf ~/.vnc/xstartup

echo "#!/bin/bash
xrdb $HOME/.Xresources
startxfce4" > ~/.vnc/xstartup
chmod +x ~/.vnc/xstartup

rm termux-xfce.sh

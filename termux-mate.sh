#!/bin/bash

# preparation to installing

termux-setup-storage

pkg install root-repo x11-repo
pkg install neofetch -y

# installing mate desktop

pkg install mate* tigervnc -y
echo "vncserver -geometry 1600x900 -xstartup ../usr/bin/mate-session" > $PREFIX/bin/desktop-lxqt
echo "vncserver -kill :1" > $PREFIX/bin/desktop-stop

chmod +x $PREFIX/bin/desktop-mate
chmod +x $PREFIX/bin/desktop-stop
clear

echo " "
echo "Command to start 'desktop-mate' and stop 'desktop-stop'"
echo " "
bash desktop-mate

rm -rf ~/.vnc/xstartup

echo "#!/bin/bash
xrdb $HOME/.Xresources
mate-session" > ~/.vnc/xstartup
chmod +x ~/.vnc/xstartup

rm termux-mate.sh

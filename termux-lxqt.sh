#!/bin/bash

# preparation to installing

termux-setup-storage

pkg install root-repo x11-repo
pkg install neofetch -y

# installing lxqt desktop

pkg install lxqt* tigervnc -y
echo "vncserver -geometry 1600x900 -xstartup ../usr/bin/startlxqt" > $PREFIX/bin/desktop-lxqt
echo "vncserver -kill :1" > $PREFIX/bin/desktop-stop
echo "#!/bin/bash
xrdb $HOME/.Xresources
startlxqt" > ~/.vnc/xstartup

chmod +x ~/.vnc/xstartup
chmod +x $PREFIX/bin/desktop-lxqt
chmod +x $PREFIX/bin/desktop-stop

clear

echo " "
echo "Command to start 'desktop-lxqt' and stop 'desktop-stop'"
echo " "
bash desktop-lxqt

rm termux-lxqt.sh

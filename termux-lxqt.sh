#!/bin/bash

#preparation to installing

termux-setup-storage

pkg install root-repo x11-repo
pkg install neofetch -y

#installing lxqt desktop

pkg install lxqt* tigervnc -y

echo "vncserver -geometry 1600x900 -name remote-desktop :1" > $PREFIX/bin/desktop-lxqt
echo "vncserver -kill :1" > $PREFIX/bin/desktop-stop

mkdir ~/.vnc
echo "#!/bin/bash
xrdb $HOME/.Xresources
startlxqt" > ~/.vnc/xstartup

chmod +x ~/.vnc/xstartup
chmod +x $PREFIX/bin/desktop-lxqt
chmod +x $PREFIX/bin/desktop-stop

clear
echo " "
echo "Vnc Server address will run at 127.0.0.1:5901"
echo " "
echo "Command to start 'desktop-lxqt' and stop 'desktop-stop'"
echo " "
rm termux-lxqt.sh
bash desktop-lxqt

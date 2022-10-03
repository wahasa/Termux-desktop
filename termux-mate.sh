#!/bin/bash

#preparation to installing

termux-setup-storage

pkg install root-repo x11-repo
pkg install neofetch -y

#installing mate desktop

pkg install mate* libmate* caja marco tigervnc -y

echo "vncserver -geometry 1600x900 -name remote-desktop :1" > $PREFIX/bin/desktop-mate
echo "vncserver -kill :1" > $PREFIX/bin/desktop-stop

mkdir ~/.vnc
echo "#!/bin/bash
xrdb $HOME/.Xresources
xsetroot -solid grey
x-window-manager &
export XKL_XMODMAP_DISABLE=1
mate-session" > ~/.vnc/xstartup

chmod +x ~/.vnc/xstartup
chmod +x $PREFIX/bin/desktop-mate
chmod +x $PREFIX/bin/desktop-stop

clear
echo " "
echo "Vnc Server address will run at 127.0.0.1:5901"
echo " "
echo "Command to start 'desktop-mate' and stop 'desktop-stop'"
echo " "
rm termux-mate.sh
bash desktop-mate

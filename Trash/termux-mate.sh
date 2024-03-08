#!/bin/bash
#preparation to installing
termux-setup-storage
pkg install root-repo x11-repo
pkg install neofetch -y

#installing mate desktop
pkg install mate* libmate* caja marco tigervnc -y

echo "vncserver -geometry 1600x900 -name remote-desktop :1" > $PREFIX/bin/vnc-start
echo "vncserver -kill :1" > $PREFIX/bin/vnc-stop

mkdir ~/.vnc
echo "#!/bin/bash
xrdb $HOME/.Xresources
mate-session" > ~/.vnc/xstartup

chmod +x ~/.vnc/xstartup
chmod +x $PREFIX/bin/vnc*
  clear
  echo " "
  echo "Vnc Server address will run at 127.0.0.1:5901"
  echo " "
  echo "Command to start 'vnc-start' and stop 'vnc-stop'"
  echo " "
rm termux-mate.sh

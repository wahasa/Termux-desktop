#!/bin/bash
#preparation to installing
termux-setup-storage
pkg install root-repo x11-repo
pkg install neofetch -y

#installing xfce desktop
pkg install xfce* libxfce* mousepad tigervnc -y

echo "vncserver -geometry 1600x900 -name remote-desktop :1" > $PREFIX/bin/vnc-start
echo "vncserver -kill :1" > $PREFIX/bin/vnc-stop

mkdir ~/.vnc
echo "#!/bin/bash
xrdb $HOME/.Xresources
startxfce4" > ~/.vnc/xstartup

chmod +x ~/.vnc/xstartup
chmod +x $PREFIX/bin/vnc*
  clear
  echo " "
  echo "Vnc Server address will run at 127.0.0.1:5901"
  echo " "
  echo "Command to start 'vnc-start' and stop 'vnc-stop'"
  echo " "
rm termux-xfce.sh


<p align="center">My Channel</br><b>
| <a href="https://discord.gg/GCehyym">Discord</a> | <a href="https://youtube.com/channel/UC3sLb7eZCu72iv3G1yUhUHQ">YouTube</a> |</b></p>

---
## Termux Desktop on Android

---------
• Install Apps on Android
- [x] [Termux](https://github.com/termux/termux-app/releases)
- [x] [Vnc Viewer](https://play.google.com/store/apps/details?id=com.realvnc.viewer.android)

## Installation

Copy and paste this command to Termux :

> pkg update

#### Install Desktop Termux

* Install Desktop-xfce
```
pkg install wget -y ; wget https://raw.githubusercontent.com/wahasa/Termux-desktop/main/termux-xfce.sh ; chmod +x termux-xfce.sh ; ./termux-xfce.sh
```

* Install Desktop-lxqt
```
pkg install wget -y ; wget https://raw.githubusercontent.com/wahasa/Termux-desktop/main/termux-lxqt.sh ; chmod +x termux-lxqt.sh ; ./termux-lxqt.sh
```

* Start Desktop
```
vnc-start
```

* Stop Desktop
```
vnc-stop
```

## VNC Viewer
* Start VNC Server

run this command on termux :
```
vnc-start
```

* Open Vnc Viewer

Add (+) VNC Client to connect, fill with :

Address
```
localhost:1
```

Name
```
Termux Desktop
```

To disconnect VNC Client, click (X) on the right.

* Stop VNC Server

run this command to termux
```
vnc-stop
```
</br>

---
<p align="center">Good Luck</p>

---

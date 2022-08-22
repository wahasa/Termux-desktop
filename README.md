## Termux Desktop on Android

---------
• Install Apps on Android
- [x] [Termux](https://github.com/termux/termux-app/releases)
- [x] [Vnc Viewer](https://play.google.com/store/apps/details?id=com.realvnc.viewer.android)

## Installation

Copy and paste this command to Termux :

```
pkg update && pkg upgrade
```

1. Install Desktop Termux
* Desktop-xfce
```
pkg install wget -y && wget https://raw.githubusercontent.com/wahasa/Termux-desktop/main/termux-xfce.sh && chmod +x termux-xfce.sh && ./termux-xfce.sh
```

* Desktop-lxqt
```
pkg install wget -y && wget https://raw.githubusercontent.com/wahasa/Termux-desktop/main/termux-lxqt.sh && chmod +x termux-lxqt.sh && ./termux-lxqt.sh
```

2. Start Desktop

* Desktop-xfce
```
desktop-xfce
```

* Desktop-lxqt
```
desktop-lxqt
```

3. Stop Desktop

```
desktop-stop
```

---------

## VNC Viewer

1. Start VNC Server

run this command on termux :
* Desktop-xfce
```
desktop-xfce
```

* Desktop-lxqt
```
desktop-lxqt
```
2. Open Vnc Viewer

Add (+) VNC Client to connect, fill with :

Address
> localhost:1

Name
> Termux Desktop

To disconnect VNC Client, click (X) on the right.

3. Stop VNC Server

run this command to termux :

```
desktop-stop
```

-------------

#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps

if [ -f $sysresources ]; then
    xrdb -merge $sysresources
fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then
    xrdb -merge "$userresources"
fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

[ -f ~/.Xdefaults ] && xrdb -merge ~/.Xdefaults

# start some nice programs
# which work quite poorly by the way

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

if [ "$(command -v xset)" >/dev/null 2>&1 ];
then
    #xset s off 	#Disable screen saver blanking
    #xset s 3600 3600 	#Change blank time to 1 hour
    #xset -dpms 	#Turn off DPMS
    #xset s off -dpms 	#Disable DPMS and prevent screen from blanking
    xset dpms force off 	#Turn off screen immediately
    #xset dpms force standby 	#Standby screen
    #xset dpms force suspend 	#Suspend screen 
fi


# Set keyboard layout to UK
setxkbmap gb

# Change brightness
xbacklight -set 70

# Start window manager
exec bspwm

# Start blue light filter
# redshift &

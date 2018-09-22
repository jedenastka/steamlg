#!/bin/bash

myname=`basename "$0"`

inthelp() {
	echo "Steam Launcher Generator v1.0 (C) Grzesiek11 2018"
	echo "This script is for generating Steam game desktop icons, beacause internal Steam function fails very often."
	echo "If icon image is broken, download one from internet and link it as icon.png."
	echo "Usage:"
	echo "./$myname [--help] gameName gameID [icon.png]"
	echo "gameID is SteamID of game. You can get it on https://steamdb.info/ (look for \"APPID\" column)."
	echo "icon.png is optional, if your game icon image is broken. You can enter path to alternative icon here. WARNING! If you move icon image, or enter non-absolute path and move icon file, the icon will break!"
	exit
}

if [ "$1" = "--help" ] || [ "$1" = "" ] || [ "$2" = "" ]
then
	inthelp
fi

name="$1"
fullname="$name.desktop"
id="$2"
icon="$3"

if [ "$icon" = "" ]
then
	icon="steam_icon_$id"
fi

echo "
[Desktop Entry]
Name=$name
Comment=Play this game on Steam
Exec=steam steam://rungameid/$id
Icon=$icon
Terminal=false
Type=Application
Categories=Game;
" > "$fullname"

chmod +x "$fullname"

echo "Icon $fullname created!"
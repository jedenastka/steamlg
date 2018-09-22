# steamlg
Steam Launcher Generator for Linux

I did this simple bash script to workaround Steam bug (https://github.com/ValveSoftware/steam-for-linux/issues/5012). Short bug description is "Steam won't create my game icons/launchers!". It has everything you need - making launchers and importing external icons (due to another, related bug: "Launcher icon is broken!").

There's internal help (```./steamlg.sh --help```) but for sure, there's second:

Usage - ```./steamlg.sh [--help] nameOfLauncher gameID [icon.png]```

Where gameID is SteamID of your game. You can find one here - https://steamdb.info/.

Optional - icon.png is path to icon. If your launcher icon is broken, download it from internet and provide path to it (non-relative is better) as this argument.

Example use:
```
grzesiek11@debianek:~/Dokumenty/bash$ ./steamlg.sh
Steam Launcher Generator v1.0 (C) Grzesiek11 2018
This script is for generating Steam game desktop icons, beacause internal Steam function fails very often.
If icon image is broken, download one from internet and link it as icon.png.
Usage:
./steamlg.sh [--help] gameName gameID [icon.png]
gameID is SteamID of game. You can get it on https://steamdb.info/ (look for "APPID" column).
icon.png is optional, if your game icon image is broken. You can enter path to alternative icon here. WARNING! If you move icon image, or enter non-absolute path and move icon file, the icon will break!
grzesiek11@debianek:~/Dokumenty/bash$ ./steamlg.sh Portal 400
Icon Portal.desktop created!
grzesiek11@debianek:~/Dokumenty/bash$ ./steamlg.sh "Portal 2" 620
Icon Portal 2.desktop created!
grzesiek11@debianek:~/Dokumenty/bash$ ./steamlg.sh Undertale 391540
Icon Undertale.desktop created!
grzesiek11@debianek:~/Dokumenty/bash$ ./steamlg.sh "Clicker Heroes" 363970 $HOME/Programy/Icons/clickerheroes.png 
Icon Clicker Heroes.desktop created!
grzesiek11@debianek:~/Dokumenty/bash$ mv *.desktop $HOME/Pulpit/
grzesiek11@debianek:~/Dokumenty/bash$ 
```
Here are icons!

![demonstration](https://github.com/jedenastka/steamlg/blob/master/demo.png?raw=true)

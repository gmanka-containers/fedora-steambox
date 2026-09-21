# desktops

this page explains how to add nested desktops as non-steam games to steambox
using steam-shortcut.py helper script,
this allows you to run nested desktops in gamescope session

### niri

```bash
env appname=niri executable=steambox-niri uv run misc/steam-shortcut.py
```

### gnome

```bash
cd nested-desktops
podman build -f silverblue.Containerfile -t localhost/silverblue
cd fedora-steambox
toolbox create silverblue --image=localhost/silverblue
env appname=gnome executable=steambox-gnome uv run misc/steam-shortcut.py
```

to exit gnome, press `Alt+F2` and enter `debugexit`

### plasma

```bash
cd nested-desktops
podman build -f kinoite.Containerfile -t localhost/kinoite
cd fedora-steambox
toolbox create kinoite --image=localhost/kinoite
env appname=plasma executable=steambox-plasma uv run misc/steam-shortcut.py
```

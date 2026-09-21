# flatpaks

this page explains how to add flatpaks as non-steam games to steambox
using steam-shortcut.py helper script,
this allows you to run flatpaks in gamescope session

### firefox wayland

```bash
flatpak install flathub org.mozilla.firefox
env appname=firefox-wayland executable=steambox-firefox-wayland uv run misc/steam-shortcut.py
```

### firefox x11

```bash
flatpak install flathub org.mozilla.firefox
env appname=firefox-x11 executable=steambox-firefox-x11 uv run misc/steam-shortcut.py
```

### ptyxis wayland

```bash
flatpak install --user flathub app.devsuite.Ptyxis
env appname=ptyxis-wayland executable=steambox-ptyxis-wayland uv run misc/steam-shortcut.py
```

### ptyxis x11

```bash
flatpak install flathub app.devsuite.Ptyxis
env appname=ptyxis-x11 executable=steambox-ptyxis-x11 uv run misc/steam-shortcut.py
```

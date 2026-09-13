### steam-shortcut.py

script adds apps and desktops to steam as non-steam games,
and allows you to run them in gamescope session

### add ptyxis

```bash
flatpak install app.devsuite.Ptyxis
env appname=ptyxis options='flatpak run app.devsuite.Ptyxis -s' uv run misc/steam-shortcut.py
```

### add firefox

```bash
flatpak install org.mozilla.firefox
env appname=firefox options='flatpak run --nosocket=wayland --nosocket=fallback-x11 --socket=x11 org.mozilla.firefox' uv run misc/steam-shortcut.py
```

### add niri

```bash
env appname=niri options=niri uv run misc/steam-shortcut.py
```

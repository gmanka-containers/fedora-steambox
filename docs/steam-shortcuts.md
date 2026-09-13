### steam-shortcut.py

script adds apps and desktops to steam as non-steam games,
and allows you to run them in gamescope session

### add ptyxis

```bash
flatpak install app.devsuite.Ptyxis
env appname=ptyxis executable=steambox-host-exec options='flatpak run app.devsuite.Ptyxis -s' uv run misc/steam-shortcut.py
```

### add firefox

```bash
flatpak install org.mozilla.firefox
env appname=firefox executable=steambox-host-exec options='flatpak run --nosocket=wayland --nosocket=fallback-x11 --socket=x11 org.mozilla.firefox' uv run misc/steam-shortcut.py
```

### add niri

```bash
env appname=niri executable=steambox-host-exec options=niri uv run misc/steam-shortcut.py
```

### add gnome

```bash
toolbox create silverblue --image=quay.io/fedora/fedora-silverblue:latest
toolbox run --container=silverblue sudo dnf install mutter-devkit dbus-daemon
env appname=gnome executable=steambox-toolbox-exec options='silverblue dbus-run-session gnome-shell --wayland --devkit' uv run misc/steam-shortcut.py
```

to exit gnome, press `Alt+F2` and enter `debugexit`, steam's stop button is broken for gnome

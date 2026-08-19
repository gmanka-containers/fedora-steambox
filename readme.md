# fedora based steambox

### how to use

create toolbox

```bash
toolbox create fedora-steambox --image=quay.io/gmanka/fedora-steambox
```

run steam with gamescope and big picture mode

```bash
toolbox run --container=fedora-steambox steam-wrapper
```

run steam without gamescope and without big picture mode

```bash
toolbox run --container=fedora-steambox steam
```

install .desktop entry

```bash
curl https://raw.githubusercontent.com/gmanka-containers/fedora-steambox/refs/heads/main/fedora-steambox.desktop --location --output=$HOME/.local/share/applications/fedora-steambox.desktop
```

### features

- based on fedora
- proton ge preisntalled and listed in steam compatibility tools list
- toolbox supports proprietary nvidia drivers integration out of the box
- gamescope and mangohud preinstalled, unlike on ublue's steambox
- steam overlay is working, thanks to gamescope

### steam wapper script

- fixes launching gamescope in toolbox by mounting tmpfs to /tmp/.X11-unix
- forces steam to reuse flatpak data path in .var, so you don't relogin and don't re-download games

### mangoapp wrapper script

- fixes gamescope bug [#2334](https://github.com/ValveSoftware/gamescope/issues/2334)

### how to stop using flatpak data path

if you don't want store steam data in .var,
then open steam-wrapper in text editor:

```bash
toolbox run --container=fedora-steambox sudoedit /usr/local/bin/steam-wrapper
```

and remove `export XDG_DATA_HOME=` line

### enable colemak layout in gamescope

```bash
toolbox run -c=fedora-steambox env XKB_DEFAULT_LAYOUT=us XKB_DEFAULT_VARIANT=colemak steam-wrapper
```

### installed packages list

- `steam` - no explanation required i guess
- `gamescope` - compositor
- `mangohud` - performance overlay
- `pactl`, `lspci`, `lsb_release` - steam dependencies which was skipped by packagers
- `xrandr` - allows to parse screen resolution

### credits

for arch based steambox see https://github.com/ublue-os/toolboxes

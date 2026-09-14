### how to stop using flatpak data path

if you don't want to store steam data in .var,
then open the launcher scripts in a text editor:

```bash
toolbox run --container=fedora-steambox sudoedit /usr/local/bin/gamescope-nested /usr/local/bin/gamescope-session
```

and remove the `export XDG_DATA_HOME=` line from both scripts

### enable colemak layout in gamescope

```bash
podman stop fedora-steambox
podman update --env=XKB_DEFAULT_LAYOUT=us --env=XKB_DEFAULT_VARIANT=colemak fedora-steambox
```

### steam overlay broken on steam without gamescope

this is a compatibility bug of steam and your desktop environment,
for fix use gamescope, nested or standalone

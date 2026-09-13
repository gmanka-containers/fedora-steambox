### how to use

create toolbox

```bash
toolbox create fedora-steambox --image=quay.io/gmanka/fedora-steambox
```

run steam in nested gamescope session

```bash
toolbox run --container=fedora-steambox gamescope-nested
```

run steam without gamescope and without big picture mode

```bash
toolbox run --container=fedora-steambox steam
```

### install desktop entries

```bash
uvx --from ansible-core ansible-playbook --inventory=localhost, --connection=local ansible/playbooks/desktop-entries.yml --ask-become-pass
```

this installs two desktop entries

first one to the `~/.local/share/applications/`, this allows to run steam in nested gamescope window as a regular app

second one to `/usr/local/share/wayland-sessions/`, this allows to choose gamescope session in your login manager

### credits

arch based steambox - <https://github.com/ublue-os/toolboxes>

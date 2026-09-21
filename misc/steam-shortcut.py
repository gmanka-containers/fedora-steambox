#!/usr/bin/env -S uv run
# /// script
# requires-python = ">=3.14"
# dependencies = [
#     "vdf @ git+https://github.com/solsticegamestudios/vdf@f47c683c1330f0fcddec034fd49c26e41acd63f2",
# ]
# tool.ty.environment.python = ".venv"
# ///

import os
import pathlib
import random

import vdf

entry = {
    'appid': random.randrange(-2**31, 0),
    'Exe': os.environ['executable'],
    'AppName': os.environ['appname'],
    'LaunchOptions': os.environ.get('options', ''),
}
userdata = pathlib.Path.home() / '.var/app/com.valvesoftware.Steam/.local/share/Steam/userdata'
for account in userdata.iterdir():
    path = account / 'config/shortcuts.vdf'
    raw: bytes = path.read_bytes() if path.exists() else b''
    data: dict = vdf.binary_loads(raw) if raw else {'shortcuts': {}}
    entries: dict = data['shortcuts']
    entry_id = str(max(map(int, entries), default=-1) + 1)
    entries[entry_id] = entry
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_bytes(vdf.binary_dumps(data))

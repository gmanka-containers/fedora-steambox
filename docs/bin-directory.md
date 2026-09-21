# bash scripts in bin directory

### gamescope-session

- fixes launching gamescope in toolbox by mounting tmpfs to /tmp/.X11-unix
- forces steam to reuse flatpak data path in .var, so you don't relogin and don't re-download games
- allows run gaming mode gamescope session from login manager

### gamescope-nested

- same /tmp/.X11-unix fix as above
- same .var override as above
- parses screen resolution and passes it to gamescope
- allows run steam in nested gamescope window as a regular app

### mangoapp

wrapper that fixes gamescope bug [#2334](https://github.com/ValveSoftware/gamescope/issues/2334)

### steamos-session-select

shuts down steam and throws you to your login manager,
triggered when you press `switch to desktop` in gamescope session

### steambox-host-exec

allows spawn host apps in gamescope

### steambox-toolbox-exec

allows spawning toolbox apps in gamescope, takes the container name followed by the command

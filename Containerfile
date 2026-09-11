FROM docker.io/maniator/gh:latest as downloader
RUN mkdir /proton-ge
RUN gh release download --repo=GloriousEggroll/proton-ge-custom --pattern='GE-Proton*-x86_64.tar.gz' --output - | tar -xz --directory=/proton-ge --strip-components=1

FROM quay.io/fedora/fedora-toolbox:44
RUN --mount=type=cache,target=/var/cache \
    dnf config-manager setopt fedora-cisco-openh264.enabled=1 && \
    dnf -y install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm -y && \
    dnf -y install steam gamescope mangohud pactl lspci lsb_release xrandr host-spawn
COPY --from=downloader /proton-ge /opt/steam/compatibilitytools.d/proton-ge
ENV STEAM_EXTRA_COMPAT_TOOLS_PATHS=/opt/steam/compatibilitytools.d
COPY steam-wrapper /usr/local/bin/steam-wrapper
COPY steamos-session-select /usr/local/bin/steamos-session-select
COPY mangoapp /usr/local/libexec/gamescope/mangoapp

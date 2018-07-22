FROM codehz/mcpe-sdk as SDK
FROM base/archlinux
RUN pacman -Sy --noconfirm make strip --needed
COPY --from=SDK /data /data/sdk
WORKDIR /data/projects

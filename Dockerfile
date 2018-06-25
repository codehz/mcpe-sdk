FROM base/archlinux as builder
RUN pacman -Syu --needed --noconfirm unzip wget python
RUN mkdir /opt/ndk-tmp
RUN cd /opt/ndk-tmp && wget -q https://dl.google.com/android/repository/android-ndk-r17-linux-x86_64.zip
RUN cd /opt/ndk-tmp && unzip android-ndk-r17-linux-x86_64.zip
RUN mkdir /data
RUN /opt/ndk-tmp/android-ndk-r17/build/tools/make-standalone-toolchain.sh --arch=x86 --install-dir=/data --verbose --force
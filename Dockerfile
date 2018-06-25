FROM base/archlinux as builder
RUN pacman -Syu --needed --noconfirm unzip
RUN mkdir /opt/ndk-tmp
RUN cd /opt/ndk-tmp && wget -q https://dl.google.com/android/repository/android-ndk-r17-linux-x86_64.zip
RUN cd /opt/ndk-tmp && unzip android-ndk-r17-linux-x86_64.zip
RUN cd /opt && tree > ft.txt
RUN mkdir /data
RUN /opt/ndk-tmp/build/tools/make-standalone-toolchain.sh --arch=x86 --install-dir=/data --verbose --force